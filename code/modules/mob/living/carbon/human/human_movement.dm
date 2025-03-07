/mob/living/carbon/human/get_movespeed_modifiers()
	var/list/considering = ..()
	if(HAS_TRAIT(src, TRAIT_IGNORESLOWDOWN))
		. = list()
		for(var/id in considering)
			var/datum/movespeed_modifier/M = considering[id]
			if(M.flags & IGNORE_NOSLOW || M.multiplicative_slowdown < 0)
				.[id] = M
		return
	return considering

/mob/living/carbon/human/movement_delay()
	. = ..()
	if(CHECK_MOBILITY(src, MOBILITY_STAND) && m_intent == MOVE_INTENT_RUN && (combat_flags & COMBAT_FLAG_SPRINT_ACTIVE))
		var/static/datum/config_entry/number/movedelay/sprint_speed_increase/SSI
		if(!SSI)
			SSI = CONFIG_GET_ENTRY(number/movedelay/sprint_speed_increase)
		. -= SSI.config_entry_value
	if(m_intent == MOVE_INTENT_WALK && HAS_TRAIT(src, TRAIT_SPEEDY_STEP))
		. -= 1.25

/mob/living/carbon/human/slip(knockdown_amount, obj/O, lube)
	if(HAS_TRAIT(src, TRAIT_NOSLIPALL))
		return 0
	if (!(lube & GALOSHES_DONT_HELP))
		if(HAS_TRAIT(src, TRAIT_NOSLIPWATER))
			return 0
		if(shoes && istype(shoes, /obj/item/clothing))
			var/obj/item/clothing/CS = shoes
			if (CS.clothing_flags & NOSLIP)
				return 0
	if (lube & SLIDE_ICE)
		if(shoes && istype(shoes, /obj/item/clothing))
			var/obj/item/clothing/CS = shoes
			if (CS.clothing_flags & NOSLIP_ICE)
				return FALSE
	return ..()

/mob/living/carbon/human/experience_pressure_difference(pressure_difference, direction, pressure_resistance_prob_delta = 0, throw_target)
	if(prob(pressure_difference * 2.5))
		playsound(src, 'sound/effects/space_wind.ogg', 50, 1)
	if(shoes && istype(shoes, /obj/item/clothing))
		var/obj/item/clothing/S = shoes
		if (S.clothing_flags & NOSLIP)
			return 0
	return ..()

/mob/living/carbon/human/mob_has_gravity()
	. = ..()
	if(!.)
		if(mob_negates_gravity())
			. = 1

/mob/living/carbon/human/mob_negates_gravity()
	return ((shoes && shoes.negates_gravity()) || (dna.species.negates_gravity(src)))

/mob/living/carbon/human/Move(NewLoc, direct)
	var/oldpseudoheight = pseudo_z_axis
	. = ..()
	for(var/datum/mutation/human/HM in dna.mutations)
		HM.on_move(NewLoc)
	if(. && (combat_flags & COMBAT_FLAG_SPRINT_ACTIVE) && !(movement_type & FLYING) && CHECK_ALL_MOBILITY(src, MOBILITY_MOVE|MOBILITY_STAND) && m_intent == MOVE_INTENT_RUN && has_gravity(loc) && (!pulledby || (pulledby.pulledby == src)))
		if(!HAS_TRAIT(src, TRAIT_FREESPRINT))
			doSprintLossTiles(1)
		if((oldpseudoheight - pseudo_z_axis) >= 8)
			to_chat(src, span_warning("You trip off of the elevated surface!"))
			for(var/obj/item/I in held_items)
				accident(I)
			DefaultCombatKnockdown(80)
	if(shoes)
		if(!lying && !buckled)
			if(loc == NewLoc)
				if(!has_gravity(loc))
					return
				var/obj/item/clothing/shoes/S = shoes

				//Bloody footprints
				var/turf/T = get_turf(src)
				if(S.bloody_shoes && S.bloody_shoes[S.blood_state])
					var/obj/effect/decal/cleanable/blood/footprints/oldFP = locate(/obj/effect/decal/cleanable/blood/footprints) in T
					if(oldFP && (oldFP.blood_state == S.blood_state && oldFP.color == S.last_blood_color))
						return
					S.bloody_shoes[S.blood_state] = max(0, S.bloody_shoes[S.blood_state] - BLOOD_LOSS_PER_STEP)
					var/obj/effect/decal/cleanable/blood/footprints/FP = new /obj/effect/decal/cleanable/blood/footprints(T)
					FP.blood_state = S.blood_state
					FP.entered_dirs |= dir
					FP.bloodiness = S.bloody_shoes[S.blood_state]
					if(S.last_bloodtype && S.last_blood_color)
						FP.blood_DNA[S.last_blood_DNA] = S.last_bloodtype
						if(!FP.blood_DNA["color"])
							FP.blood_DNA["color"] = S.last_blood_color
						else
							FP.blood_DNA["color"] = BlendRGB(FP.blood_DNA["color"], S.last_blood_color)
					FP.update_icon()
					update_inv_shoes()
				//End bloody footprints

				S.step_action()
	if(m_intent == MOVE_INTENT_RUN)
		src.handle_movement_recoil()

/mob/living/carbon/human/Process_Spacemove(movement_dir = 0, continuous_move) //Temporary laziness thing. Will change to handles by species reee.
	if(dna.species.space_move(src))
		return TRUE
	return ..()

/mob/living/carbon/human/handle_movement_recoil()
	if (!highest_gun_or_energy_cache)
		highest_gun_or_energy_cache = highest_skill_value(SKILL_GUNS, SKILL_ENERGY)
	var/base_recoil = max(0.4, (100 - highest_gun_or_energy_cache)/50)

	var/mob/living/carbon/human/H = src
	var/suit_stiffness = 0
	var/uniform_stiffness = 0
	if(H.wear_suit)
		suit_stiffness = H.wear_suit.stiffness
	if(H.w_uniform)
		uniform_stiffness = H.w_uniform.stiffness

	base_recoil += suit_stiffness + suit_stiffness * uniform_stiffness // Wearing it under actual armor, or anything too thick is extremely uncomfortable.

	add_recoil(base_recoil)
