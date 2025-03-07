/mob/living/proc/handle_recoil(var/obj/item/gun/G, var/recoil_buildup)
	add_recoil(recoil_buildup)

/mob/living/proc/external_recoil(var/recoil_buildup) // Used in human_attackhand.dm
	add_recoil(recoil_buildup)

/mob/proc/handle_movement_recoil() // Used in movement/mob.dm
	return // Ghosts and roaches have no movement recoil

/mob/living/proc/add_recoil(var/recoil_buildup)
	if(recoil_buildup)
		if (!highest_gun_or_energy_cache)
			highest_gun_or_energy_cache = highest_skill_value(SKILL_GUNS, SKILL_ENERGY)
		if(HAS_TRAIT(src, SPREAD_CONTROL))
			recoil_buildup *= 0.8
		recoil += (recoil_buildup * min((50/highest_gun_or_energy_cache), 1))
		update_recoil()

/mob/living/proc/calc_recoil()
	if (recoil)
		if (!highest_gun_or_energy_cache)
			highest_gun_or_energy_cache = highest_skill_value(SKILL_GUNS, SKILL_ENERGY)
		var/base = 3 * (highest_gun_or_energy_cache/40)
		var/scale = 0.8 * (40/highest_gun_or_energy_cache)

		if(HAS_TRAIT(src, SPREAD_CONTROL))
			scale = 0.6 * (40/highest_gun_or_energy_cache)

		if(recoil <= base)
			recoil = 0
		else
			recoil -= base
			recoil *= scale
		update_recoil()

/mob/living/proc/calculate_offset(var/offset = 0, skill_used = SKILL_GUNS)
	var/the_skill_val = skill_value(skill_used)
	if (skill_used == SKILL_GUNS)
		offset += max((80 - the_skill_val)/12, 0)
	if(recoil)
		offset += (recoil*(70/the_skill_val))
	if(ishuman(src))
		var/mob/living/carbon/human/H = src
		if(H.head)
			offset += H.head.obscuration

	offset = round(RECOIL_SPREAD_CALC(offset))
	offset = CLAMP(offset, 0, MAX_ACCURACY_OFFSET)
	return offset

//Called after setting recoil
/mob/living/proc/update_recoil()
	var/obj/item/gun/G = get_active_held_item()
	if(istype(G) && G)
		G.check_safety_cursor(src)

/mob/living/proc/update_cursor(var/obj/item/gun/G)
	if(!(istype(get_active_held_item(), /obj/item/gun) || recoil > 0))
		remove_cursor()
		return
	if(client)
		if(!CHECK_BITFIELD(client.prefs.cb_toggles, AIM_CURSOR_ON))
			remove_cursor()
			return
		client.mouse_pointer_icon = initial(client.mouse_pointer_icon)
		var/offset = round(calculate_offset(G.added_spread) * 0.8)
		var/icon/base = find_cursor_icon('modular_coyote/eris/icons/standard.dmi', offset)
		ASSERT(isicon(base))
		client.mouse_pointer_icon = base

/mob/living/proc/remove_cursor()
	if(client)
		client.mouse_pointer_icon = initial(client.mouse_pointer_icon)

/proc/find_cursor_icon(var/icon_file, var/offset)
	var/list/L = GLOB.cursor_icons[icon_file]
	if(L)
		return L["[offset]"]

/proc/add_cursor_icon(var/icon/icon, var/icon_file, var/offset)
	var/list/L = GLOB.cursor_icons[icon_file]
	if(!L)
		GLOB.cursor_icons[icon_file] = list()
		L = GLOB.cursor_icons[icon_file]
	L["[offset]"] = icon

/proc/make_cursor_icon(var/icon_file, var/offset)
	var/icon/base = icon('modular_coyote/eris/icons/96x96.dmi')
	var/icon/scaled = icon('modular_coyote/eris/icons/standard.dmi') //Default cursor, cut into pieces according to their direction
	base.Blend(scaled, ICON_OVERLAY, x = 32, y = 32)

	for(var/dir in list(NORTHEAST,NORTHWEST,SOUTHEAST,SOUTHWEST))
		var/icon/overlay = icon('modular_coyote/eris/icons/standard.dmi', "[dir]")
		var/pixel_y
		var/pixel_x
		if(dir & NORTH)
			pixel_y = CLAMP(offset, -MAX_ACCURACY_OFFSET, MAX_ACCURACY_OFFSET)
		if(dir & SOUTH)
			pixel_y = CLAMP(-offset, -MAX_ACCURACY_OFFSET, MAX_ACCURACY_OFFSET)
		if(dir & EAST)
			pixel_x = CLAMP(offset, -MAX_ACCURACY_OFFSET, MAX_ACCURACY_OFFSET)
		if(dir & WEST)
			pixel_x = CLAMP(-offset, -MAX_ACCURACY_OFFSET, MAX_ACCURACY_OFFSET)
		base.Blend(overlay, ICON_OVERLAY, x=32+pixel_x, y=32+pixel_y)
	add_cursor_icon(base, 'modular_coyote/eris/icons/standard.dmi', offset)
	return base

/proc/send_all_cursor_icons(var/client/C)
	var/list/cursor_icons = GLOB.cursor_icons
	for(var/icon_file in cursor_icons)
		var/list/icons = cursor_icons[icon_file]
		for(var/offset in icons)
			var/icon/I = icons[offset]
			C << I
