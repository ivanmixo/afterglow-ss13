/obj/structure/reagent_dispensers
	name = "Dispenser"
	desc = "..."
	icon = 'icons/obj/objects.dmi'
	icon_state = "water"
	density = TRUE
	anchored = FALSE
	pressure_resistance = 2*ONE_ATMOSPHERE
	max_integrity = 300
	var/tank_volume = 1000 //In units, how much the dispenser can hold
	var/reagent_id = /datum/reagent/water //The ID of the reagent that the dispenser uses

/obj/structure/reagent_dispensers/take_damage(damage_amount, damage_type = BRUTE, damage_flag = 0, sound_effect = 1, attack_dir, atom/attacked_by)
	. = ..()
	if(. && obj_integrity > 0)
		if(tank_volume && (damage_flag == "bullet" || damage_flag == "laser"))
			boom()

/obj/structure/reagent_dispensers/attackby(obj/item/W, mob/user, params)
	if(W.is_refillable())
		return 0 //so we can refill them via their afterattack.
	else
		return ..()

/obj/structure/reagent_dispensers/Initialize()
	create_reagents(tank_volume, DRAINABLE | AMOUNT_VISIBLE)
	if(reagent_id)
		reagents.add_reagent(reagent_id, tank_volume)
	. = ..()

/obj/structure/reagent_dispensers/proc/boom()
	visible_message(span_danger("\The [src] ruptures!"))
	chem_splash(loc, 5, list(reagents))
	qdel(src)

/obj/structure/reagent_dispensers/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(!disassembled)
			boom()
	else
		qdel(src)

///////////////
//Water Tanks//
///////////////

/obj/structure/reagent_dispensers/watertank
	name = "water tank"
	desc = "A water tank."
	icon_state = "water"

/obj/structure/reagent_dispensers/watertank/high
	name = "high-capacity water tank"
	desc = "A highly pressurized water tank made to hold gargantuan amounts of water."
	icon_state = "water_high" //I was gonna clean my room...
	tank_volume = 100000

/obj/structure/reagent_dispensers/foamtank
	name = "firefighting foam tank"
	desc = "A tank full of firefighting foam."
	icon_state = "foam"
	reagent_id = /datum/reagent/firefighting_foam
	tank_volume = 500

/obj/structure/reagent_dispensers/water_cooler
	name = "liquid cooler"
	desc = "A machine that dispenses liquid to drink."
	icon = 'icons/obj/vending.dmi'
	icon_state = "water_cooler"
	anchored = TRUE
	tank_volume = 500
	var/paper_cups = 25 //Paper cups left from the cooler

/obj/structure/reagent_dispensers/water_cooler/examine(mob/user)
	. = ..()
	if (paper_cups > 1)
		. += "There are [paper_cups] paper cups left."
	else if (paper_cups == 1)
		. += "There is one paper cup left."
	else
		. += "There are no paper cups left."

/obj/structure/reagent_dispensers/water_cooler/on_attack_hand(mob/living/user, act_intent = user.a_intent, unarmed_attack_flags)
	. = ..()
	if(.)
		return
	if(!paper_cups)
		to_chat(user, span_warning("There aren't any cups left!"))
		return
	user.visible_message(span_notice("[user] takes a cup from [src]."), span_notice("You take a paper cup from [src]."))
	var/obj/item/reagent_containers/food/drinks/sillycup/S = new(get_turf(src))
	user.put_in_hands(S)
	paper_cups--

/obj/structure/reagent_dispensers/plumbed
	name = "stationairy water tank"
	anchored = TRUE
	icon_state = "water_stationairy"
	desc = "A stationairy, plumbed, water tank."

/obj/structure/reagent_dispensers/plumbed/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I)
	return TRUE

/obj/structure/reagent_dispensers/plumbed/default_unfasten_wrench(mob/user, obj/item/I, time = 20)
	. = ..()
	if(. == SUCCESSFUL_UNFASTEN)
		user.visible_message(span_notice("[user.name] [anchored ? "fasten" : "unfasten"] [src]"), \
		span_notice("You [anchored ? "fasten" : "unfasten"] [src]"))
		var/datum/component/plumbing/CP = GetComponent(/datum/component/plumbing)
		if(anchored)
			CP.enable()
		else
			CP.disable()

/obj/structure/reagent_dispensers/plumbed/ComponentInitialize()
	AddComponent(/datum/component/plumbing/simple_supply)

/obj/structure/reagent_dispensers/plumbed/storage
	name = "stationairy storage tank"
	icon_state = "tank_stationairy"
	reagent_id = null //start empty

/obj/structure/reagent_dispensers/plumbed/storage/ComponentInitialize()
	AddComponent(/datum/component/plumbing/tank)

//////////////
//Fuel Tanks//
//////////////

/obj/structure/reagent_dispensers/fueltank
	name = "fuel tank"
	desc = "A tank full of industrial welding fuel. Do not consume."
	icon_state = "fuel"
	reagent_id = /datum/reagent/fuel

/obj/structure/reagent_dispensers/fueltank/high //Unused - Good for ghost roles
	name = "high-capacity fuel tank"
	desc = "A now illegal tank, full of highly pressurized industrial welding fuel. Do not consume or have a open flame close to this tank."
	icon_state = "fuel_high"
	tank_volume = 3000

/obj/structure/reagent_dispensers/fueltank/boom()
	explosion(get_turf(src), 0, 1, 5, flame_range = 5)
	qdel(src)

/obj/structure/reagent_dispensers/fueltank/blob_act(obj/structure/blob/B)
	boom()

/obj/structure/reagent_dispensers/fueltank/ex_act()
	boom()

/obj/structure/reagent_dispensers/fueltank/fire_act(exposed_temperature, exposed_volume)
	boom()

/obj/structure/reagent_dispensers/fueltank/zap_act(power, zap_flags, shocked_objects)
	..() //extend the zap
	if(ZAP_OBJ_DAMAGE & zap_flags)
		boom()

/obj/structure/reagent_dispensers/fueltank/bullet_act(obj/item/projectile/P)
	. = ..()
	if(!QDELETED(src)) //wasn't deleted by the projectile's effects.
		if(!P.nodamage && ((P.damage_type == BURN) || (P.damage_type == BRUTE)))
			var/boom_message = "[ADMIN_LOOKUPFLW(P.firer)] triggered a fueltank explosion via projectile."
			GLOB.bombers += boom_message
			message_admins(boom_message)
			P.firer.log_message("triggered a fueltank explosion via projectile.", LOG_ATTACK)
			boom()

/obj/structure/reagent_dispensers/fueltank/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/weldingtool))
		var/obj/item/weldingtool/weldie = W
		if(weldie.isOn())
			var/turf/T = get_turf(src)
			user.visible_message(span_warning("[user] pours fuel into [user.p_their()] running [name], and everything goes up in flames!"), span_userdanger("Your open flame ignites the barrel of fuel. Oops!"))

			var/message_admins = "[ADMIN_LOOKUPFLW(user)] triggered a fueltank explosion via welding tool at [ADMIN_VERBOSEJMP(T)]."
			GLOB.bombers += message_admins
			message_admins(message_admins)

			user.log_message("triggered a fueltank explosion via welding tool.", LOG_ATTACK)
			boom()
		return
	. = ..()


///////////////////
//Misc Dispenders//
///////////////////

/obj/structure/reagent_dispensers/peppertank
	name = "pepper spray refiller"
	desc = "Contains condensed capsaicin for use in law \"enforcement.\""
	icon_state = "pepper"
	plane = ABOVE_WALL_PLANE
	anchored = TRUE
	density = FALSE
	reagent_id = /datum/reagent/consumable/condensedcapsaicin

/obj/structure/reagent_dispensers/peppertank/Initialize()
	. = ..()
	if(prob(1))
		desc = "IT'S PEPPER TIME, BITCH!"

/obj/structure/reagent_dispensers/virusfood
	name = "virus food dispenser"
	desc = "A dispenser of low-potency virus mutagenic."
	icon_state = "virus_food"
	plane = ABOVE_WALL_PLANE
	anchored = TRUE
	density = FALSE
	reagent_id = /datum/reagent/consumable/virus_food

/obj/structure/reagent_dispensers/cooking_oil
	name = "vat of cooking oil"
	desc = "A huge metal vat with a tap on the front. Filled with cooking oil for use in frying food."
	icon_state = "vat"
	anchored = TRUE
	reagent_id = /datum/reagent/consumable/cooking_oil

////////
//Kegs//
////////

/obj/structure/reagent_dispensers/beerkeg
	name = "beer keg"
	desc = "Beer is liquid bread, it's good for you..."
	icon_state = "beer"
	reagent_id = /datum/reagent/consumable/ethanol/beer

/obj/structure/reagent_dispensers/beerkeg/blob_act(obj/structure/blob/B)
	explosion(src.loc,0,3,5,7,10)
	if(!QDELETED(src))
		qdel(src)

/obj/structure/reagent_dispensers/keg
	name = "keg"
	desc = "A keg."
	icon_state = "keg"

/obj/structure/reagent_dispensers/keg/mead
	name = "keg of mead"
	desc = "A keg of mead."
	icon_state = "orangekeg"
	reagent_id = /datum/reagent/consumable/ethanol/mead

/obj/structure/reagent_dispensers/keg/milk
	name = "keg of milk"
	desc = "A keg of pasteurised, homogenised, filtered and semi-skimmed space milk."
	icon_state = "whitekeg"
	reagent_id = /datum/reagent/consumable/milk

/obj/structure/reagent_dispensers/keg/gargle
	name = "keg of pan galactic gargleblaster"
	desc = "A keg of... wow that's a long name."
	icon_state = "bluekeg"
	reagent_id = /datum/reagent/consumable/ethanol/gargle_blaster
	tank_volume = 100

//kegs given by the travelling trader's bartender subtype

/obj/structure/reagent_dispensers/keg/quintuple_sec
	name = "keg of quintuple sec"
	desc = "A keg of pure justice."
	icon_state = "redkeg"
	reagent_id = /datum/reagent/consumable/ethanol/quintuple_sec
	tank_volume = 250

/obj/structure/reagent_dispensers/keg/narsour
	name = "keg of narsour"
	desc = "A keg of eldritch terrors."
	icon_state = "redkeg"
	reagent_id = /datum/reagent/consumable/ethanol/narsour
	tank_volume = 250

/*
/obj/structure/reagent_dispensers/keg/red_queen
	name = "keg of red queen"
	desc = "A strange keg, filled with a kind of tea."
	icon_state = "redkeg"
	reagent_id = /datum/reagent/consumable/red_queen
	tank_volume = 250
*/

/obj/structure/reagent_dispensers/keg/hearty_punch
	name = "keg of hearty punch"
	desc = "A keg that will get you right back on your feet."
	icon_state = "redkeg"
	reagent_id = /datum/reagent/consumable/ethanol/hearty_punch
	tank_volume = 100 //this usually has a 15:1 ratio when being made, so we provide less of it

/obj/structure/reagent_dispensers/keg/neurotoxin
	name = "keg of neurotoxin"
	desc = "A keg of the sickly substance known as 'neurotoxin'."
	icon_state = "bluekeg"
	reagent_id = /datum/reagent/consumable/ethanol/neurotoxin
	tank_volume = 100 //2.5x less than the other kegs because it's harder to get
