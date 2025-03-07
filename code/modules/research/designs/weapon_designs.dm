///////////////////////////////
///////Weapons & Ammo//////////
///////////////////////////////

//////////////
//Ammo Boxes//
//////////////

/*
/datum/design/c38/sec
	id = "sec_38"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/c38/sec/lethal
	name = "Speed Loader (.38)"
	id = "sec_38lethal"
	build_path = /obj/item/ammo_box/c38/lethal

/datum/design/c38_trac
	name = "Speed Loader (.38 TRAC)"
	desc = "Designed to quickly reload revolvers. TRAC bullets embed a tracking implant within the target's body."
	id = "c38_trac"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 20000, /datum/material/silver = 5000, /datum/material/gold = 1000)
	build_path = /obj/item/ammo_box/c38/trac
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/c38_hotshot
	name = "Speed Loader (.38 Hot Shot)"
	desc = "Designed to quickly reload revolvers. Hot Shot bullets contain an incendiary payload."
	id = "c38_hotshot"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 20000, /datum/material/plasma = 5000)
	build_path = /obj/item/ammo_box/c38/hotshot
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/c38_iceblox
	name = "Speed Loader (.38 Iceblox)"
	desc = "Designed to quickly reload revolvers. Iceblox bullets contain a cryogenic payload."
	id = "c38_iceblox"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 20000, /datum/material/plasma = 5000)
	build_path = /obj/item/ammo_box/c38/iceblox
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/

//////////////////
//Mag-Rifle Mags//
//////////////////

/*
/datum/design/mag_magrifle
	name = "Magrifle Magazine (Lethal)"
	desc = "A 24-round magazine for the Magrifle."
	id = "mag_magrifle"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 8000, /datum/material/silver = 1000)
	build_path = /obj/item/ammo_box/magazine/mmag/lethal
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mag_magrifle/nl
	name = "Magrifle Magazine (Non-Lethal)"
	desc = "A 24- round non-lethal magazine for the Magrifle."
	id = "mag_magrifle_nl"
	materials = list(/datum/material/iron = 6000, /datum/material/silver = 500, /datum/material/titanium = 500)
	build_path = /obj/item/ammo_box/magazine/mmag

/datum/design/mag_magpistol
	name = "Magpistol Magazine"
	desc = "A 14 round magazine for the Magpistol."
	id = "mag_magpistol"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 4000, /datum/material/silver = 500)
	build_path = /obj/item/ammo_box/magazine/mmag/small/lethal
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mag_magpistol/nl
	name = "Magpistol Magazine (Non-Lethal)"
	desc = "A 14 round non-lethal magazine for the Magpistol."
	id = "mag_magpistol_nl"
	materials = list(/datum/material/iron = 3000, /datum/material/silver = 250, /datum/material/titanium = 250)
	build_path = /obj/item/ammo_box/magazine/mmag/small

//////////////
//WT550 Mags//
//////////////

/datum/design/mag_oldsmg
	name = "WT-550 Semi-Auto SMG Magazine (4.6x30mm)"
	desc = "A 32 round magazine for the out of date security WT-550 Semi-Auto SMG."
	id = "mag_oldsmg"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 4000)
	build_path = /obj/item/ammo_box/magazine/wt550m9
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mag_oldsmg/ap_mag
	name = "WT-550 Semi-Auto SMG Armour Piercing Magazine (4.6x30mm AP)"
	desc = "A 32 round armour piercing magazine for the out of date security WT-550 Semi-Auto SMG."
	id = "mag_oldsmg_ap"
	materials = list(/datum/material/iron = 6000, /datum/material/silver = 600)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtap
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mag_oldsmg/ic_mag
	name = "WT-550 Semi-Auto SMG Incendiary Magazine (4.6x30mm IC)"
	desc = "A 32 round armour piercing magazine for the out of date security WT-550 Semi-Auto SMG."
	id = "mag_oldsmg_ic"
	materials = list(/datum/material/iron = 6000, /datum/material/silver = 600, /datum/material/glass = 1000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtic
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mag_oldsmg/tx_mag
	name = "WT-550 Semi-Auto SMG Uranium Magazine (4.6x30mm TX)"
	desc = "A 32 round uranium tipped magazine for the out of date security WT-550 Semi-Auto SMG."
	id = "mag_oldsmg_tx"
	materials = list(/datum/material/iron = 6000, /datum/material/silver = 600, /datum/material/uranium = 2000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wttx
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mag_oldsmg/rubber_mag
	name = "WT-550 Semi-Auto SMG rubberbullets Magazine (4.6x30mm rubber)"
	desc = "A 32 round rubber shots magazine for the out of date security WT-550 Semi-Auto SMG"
	id = "mag_oldsmg_rubber"
	materials = list(/datum/material/iron = 6000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtrubber
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/

//////////////
//Ammo Shells/
//////////////

/datum/design/shell_clip
	name = "stripper clip (shotgun shells)"
	id = "sec_shellclip"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000)
	build_path = /obj/item/ammo_box/shotgun
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/*
/datum/design/beanbag_slug/sec
	id = "sec_beanbag"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/rubbershot/sec
	id = "sec_rshot"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/shotgun_slug/sec
	id = "sec_slug"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/buckshot_shell/sec
	id = "sec_bshot"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/shotgun_dart/sec
	id = "sec_dart"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/incendiary_slug/sec
	id = "sec_islug"
	build_type = PROTOLATHE
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/

/datum/design/stunshell
	name = "Stun Shell"
	desc = "A stunning shell for a shotgun."
	id = "stunshell"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 200)
	build_path = /obj/item/ammo_casing/shotgun/stunslug
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/techshell
	name = "Unloaded Technological Shotshell"
	desc = "A high-tech shotgun shell which can be loaded with materials to produce unique effects."
	id = "techshotshell"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 1000, /datum/material/glass = 200)
	build_path = /obj/item/ammo_casing/shotgun/techshell
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/cryostatis_shotgun_dart
	name = "Cryostasis Shotgun Dart"
	desc = "A shotgun dart designed with similar internals to that of a cryostatis beaker, allowing reagents to not react when inside."
	id = "shotgundartcryostatis"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 3500)
	build_path = /obj/item/ammo_casing/shotgun/dart/noreact
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

//////////////
//Firing Pins/
//////////////

/datum/design/pin_testing
	name = "Test-Range Firing Pin"
	desc = "This safety firing pin allows firearms to be operated within proximity to a firing range."
	id = "pin_testing"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 300)
	build_path = /obj/item/firing_pin/test_range
	category = list("Firing Pins")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/pin_mindshield
	name = "Mindshield Firing Pin"
	desc = "This is a security firing pin which only authorizes users who are mindshield-implanted."
	id = "pin_loyalty"
	build_type = PROTOLATHE
	materials = list(/datum/material/silver = 600, /datum/material/diamond = 600, /datum/material/uranium = 200)
	build_path = /obj/item/firing_pin/implant/mindshield
	category = list("Firing Pins")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/pin_explorer
	name = "Outback Firing Pin"
	desc = "This firing pin only shoots while ya ain't on station, fair dinkum!"
	id = "pin_explorer"
	build_type = PROTOLATHE
	materials = list(/datum/material/silver = 1000, /datum/material/gold = 1000, /datum/material/iron = 500)
	build_path = /obj/item/firing_pin/explorer
	category = list("Firing Pins")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

//////////////
//Guns////////
//////////////

/*
/datum/design/lasercarbine
	name = "Laser Carbine"
	desc = "Beefed up version of a standard laser gun."
	id = "lasercarbine"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 10000, /datum/material/gold = 2500, /datum/material/silver = 2500)
	build_path = /obj/item/gun/energy/laser/carbine/nopin
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/stunrevolver
	name = "Tesla Revolver"
	desc = "A high-tech revolver that fires internal, reusable shock cartridges in a revolving cylinder. The cartridges can be recharged using conventional rechargers."
	id = "stunrevolver"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 10000, /datum/material/silver = 10000)
	build_path = /obj/item/gun/energy/tesla_revolver
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/nuclear_gun
	name = "Advanced Energy Gun"
	desc = "An energy gun with an experimental miniaturized reactor."
	id = "nuclear_gun"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 2000, /datum/material/uranium = 3000, /datum/material/titanium = 1000)
	build_path = /obj/item/gun/energy/e_gun/nuclear
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/beamrifle
	name = "Beam Marksman Rifle"
	desc = "A powerful long ranged anti-material rifle that fires charged particle beams to obliterate targets."
	id = "beamrifle"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 5000, /datum/material/diamond = 5000, /datum/material/uranium = 8000, /datum/material/silver = 4500, /datum/material/gold = 5000)
	build_path = /obj/item/gun/energy/beam_rifle
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/


/datum/design/thatgun
	name = ".308 Pistol"
	desc = "A .308 pistol design."
	id = "308pistol"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 17000)
	build_path = /obj/item/gun/ballistic/revolver/thatgun
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/n99
	name = "10mm Pistol"
	desc = "A 10mm pistol design."
	id = "10mmpistol"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 25000)
	build_path = /obj/item/gun/ballistic/automatic/pistol/n99
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/smg
	name = "10mm SMG"
	desc = "A 10mm SMG design."
	id = "10mmsmg"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 25000, /datum/material/titanium = 2000)
	build_path = /obj/item/gun/ballistic/automatic/smg/smg10mm
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/dgal
	name = "Desert Eagle"
	desc = "A .44 design."
	id = "degal"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 20000, /datum/material/titanium = 5000)
	build_path = /obj/item/gun/ballistic/automatic/pistol/deagle
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
	
/datum/design/combatc
	name = "Combat Carbine"
	desc = "A .45 carbine."
	id = "combatc"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 27000, /datum/material/titanium = 6000)
	build_path = /obj/item/gun/ballistic/automatic/combat
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/r84
	name = "R84 Light machine gun"
	desc = "A light machine gun."
	id = "r84"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 30000, /datum/material/titanium = 8000, /datum/material/glass = 2000)
	build_path = /obj/item/gun/ballistic/automatic/r84
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/lsw
	name = "lsw light machine gun"
	desc = "A light machine gun."
	id = "lsw"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 30000, /datum/material/titanium = 8000, /datum/material/glass = 2000)
	build_path = /obj/item/gun/ballistic/automatic/lsw
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/antimaterial
	name = "anti-material rifle"
	desc = "A large sniper rifle that can pierce PA."
	id = "antimatrif"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 25000, /datum/material/titanium = 15000, /datum/material/glass = 3000)
	build_path = /obj/item/gun/ballistic/rifle/mag/antimateriel
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/energyp
	name = "AEP 7"
	desc = "An energy pistol."
	id = "aep7"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 10000, /datum/material/lead = 10000, /datum/material/silver = 10000)
	build_path = /obj/item/gun/energy/laser/pistol
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/plasmap
	name = "Plasma pistol"
	desc = "An plasma pistol."
	id = "plasmapistol"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 10000, /datum/material/lead = 10000, /datum/material/plasma = 10000)
	build_path = /obj/item/gun/energy/laser/pistol
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/lplasmap
	name = "Light plasma pistol"
	desc = "An plasma pistol."
	id = "lplasmapistol"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 8000, /datum/material/lead = 8000, /datum/material/plasma = 8000)
	build_path = /obj/item/gun/energy/laser/pistol
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/stunrevolver
	name = "Tesla Revolver"
	desc = "A high-tech revolver that fires internal, reusable shock cartridges in a revolving cylinder. The cartridges can be recharged using conventional rechargers."
	id = "stunrevolver"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 10000, /datum/material/lead = 10000, /datum/material/plasma = 10000)
	build_path = /obj/item/gun/energy/tesla_revolver
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/stuntribeam
	name = "Stun Tri-beam"
	desc = "A stub tri-beam."
	id = "stuntribeam"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 20000, /datum/material/lead = 13000, /datum/material/gold = 3000, /datum/material/silver = 3000)
	build_path = /obj/item/gun/energy/laser/scatter/nonlethal
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/tribeam
	name = "Tri-beam"
	desc = "A laser gun that fires three lasers at once."
	id = "tribeam"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 22000, /datum/material/lead = 13000, /datum/material/gold = 3000, /datum/material/silver = 3000)
	build_path = /obj/item/gun/energy/laser/scatter
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/plasmarifle
	name = "Plasma rifle"
	desc = "A gun that fires a super heated bolt of plasma as a projectile"
	id = "plasmarifle"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 22000, /datum/material/lead = 13000, /datum/material/gold = 3000, /datum/material/silver = 3000, /datum/material/plasma = 3000)
	build_path = /obj/item/gun/energy/laser/plasma
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/aer9
	name = "AER 9 Rifle"
	desc = "A laser rifle, very powerful."
	id = "ae9rifle"
	build_type = PROTOLATHE
	materials = list(/datum/material/titanium = 22000, /datum/material/lead = 13000, /datum/material/gold = 3000, /datum/material/silver = 3000, /datum/material/plasma = 3000)
	build_path = /obj/item/gun/energy/laser/aer9
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/m72guass
	name = "M72 Guass Rifle"
	desc = "A PA busting rifle, can ruin your whole day."
	id = "m72guass"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 24000, /datum/material/lead = 2000, /datum/material/titanium = 12000, /datum/material/plasma = 3000)
	build_path = /obj/item/gun/ballistic/automatic/m72
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/decloner
	name = "Decloner"
	desc = "Your opponent will bubble into a messy pile of goop."
	id = "decloner"
	build_type = PROTOLATHE
	materials = list(/datum/material/gold = 5000,/datum/material/uranium = 10000)
	reagents_list = list(/datum/reagent/toxin/mutagen = 40)
	build_path = /obj/item/gun/energy/decloner
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/* Commented out for balance reasons, its kinda OP
/datum/design/rapidsyringe
	name = "Rapid Syringe Gun"
	desc = "A gun that fires many syringes."
	id = "rapidsyringe"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 1000)
	build_path = /obj/item/gun/syringe/rapidsyringe
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL
*/

/datum/design/temp_gun
	name = "Temperature Gun"
	desc = "A gun that shoots temperature beam like projectiles to change temperature."
	id = "temp_gun"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 500, /datum/material/silver = 3000)
	build_path = /obj/item/gun/energy/temperature
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/*
/datum/design/xray
	name = "X-ray Laser Gun"
	desc = "Not quite as menacing as it sounds"
	id = "xray_laser"
	build_type = PROTOLATHE
	materials = list(/datum/material/gold = 5000, /datum/material/uranium = 4000, /datum/material/iron = 5000, /datum/material/titanium = 2000, /datum/material/bluespace = 2000)
	build_path = /obj/item/gun/energy/xray
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/

/datum/design/ioncarbine
	name = "Ion Carbine"
	desc = "How to dismantle a cyborg : The gun."
	id = "ioncarbine"
	build_type = PROTOLATHE
	materials = list(/datum/material/silver = 6000, /datum/material/iron = 8000, /datum/material/uranium = 2000)
	build_path = /obj/item/gun/energy/ionrifle/carbine
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/wormhole_projector
	name = "Bluespace Wormhole Projector"
	desc = "A projector that emits high density quantum-coupled bluespace beams."
	id = "wormholeprojector"
	build_type = PROTOLATHE
	materials = list(/datum/material/silver = 2000, /datum/material/iron = 5000, /datum/material/diamond = 2000, /datum/material/bluespace = 3000)
	build_path = /obj/item/gun/energy/wormhole_projector
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SCIENCE

/datum/design/gravitygun
	name = "One-point Bluespace-gravitational Manipulator"
	desc = "A multi-mode device that blasts one-point bluespace-gravitational bolts that locally distort gravity."
	id = "gravitygun"
	build_type = PROTOLATHE
	materials = list(/datum/material/silver = 8000, /datum/material/uranium = 8000, /datum/material/glass = 12000, /datum/material/iron = 12000, /datum/material/diamond = 3000, /datum/material/bluespace = 3000)
	build_path = /obj/item/gun/energy/gravity_gun
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SCIENCE

/*
/datum/design/largecrossbow
	name = "Energy Crossbow"
	desc = "A reverse-engineered energy crossbow favored by syndicate infiltration teams and carp hunters."
	id = "largecrossbow"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 1500, /datum/material/uranium = 1500, /datum/material/silver = 1500)
	build_path = /obj/item/gun/energy/kinetic_accelerator/crossbow/large
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/magpistol
	name = "Magpistol"
	desc = "A weapon which fires ferromagnetic slugs."
	id = "magpistol"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 7500, /datum/material/glass = 1000, /datum/material/uranium = 1000, /datum/material/titanium = 5000, /datum/material/silver = 2000)
	build_path = /obj/item/gun/ballistic/automatic/magrifle/pistol/nopin
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/magrifle
	name = "Magrifle"
	desc = "An upscaled Magpistol in rifle form."
	id = "magrifle"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 2000, /datum/material/uranium = 2000, /datum/material/titanium = 10000, /datum/material/silver = 4000, /datum/material/gold = 2000)
	build_path = /obj/item/gun/ballistic/automatic/magrifle/nopin
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/

///////////
//Grenades/
///////////

/datum/design/large_grenade
	name = "Large Grenade"
	desc = "A grenade that affects a larger area and use larger containers."
	id = "large_Grenade"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 3000)
	build_path = /obj/item/grenade/chem_grenade/large
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/pyro_grenade
	name = "Pyro Grenade"
	desc = "An advanced grenade that is able to self ignite its mixture."
	id = "pyro_Grenade"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 2000, /datum/material/plasma = 500)
	build_path = /obj/item/grenade/chem_grenade/pyro
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/cryo_grenade
	name = "Cryo Grenade"
	desc = "An advanced grenade that rapidly cools its contents upon detonation."
	id = "cryo_Grenade"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 2000, /datum/material/silver = 500)
	build_path = /obj/item/grenade/chem_grenade/cryo
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/adv_grenade
	name = "Advanced Release Grenade"
	desc = "An advanced grenade that can be detonated several times, best used with a repeating igniter."
	id = "adv_Grenade"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 3000, /datum/material/glass = 500)
	build_path = /obj/item/grenade/chem_grenade/adv_release
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

///////////
//Shields//
///////////

//Removed
/datum/design/tele_shield
	name = "Telescopic Riot Shield"
	desc = "An advanced riot shield made of lightweight materials that collapses for easy storage."
	id = "tele_shield"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 4000, /datum/material/glass = 4000, /datum/material/silver = 300, /datum/material/titanium = 200)
	build_path = /obj/item/shield/riot
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

//Removed
/datum/design/laser_shield
	name = "Laser Resistant Riot Shield"
	desc = "An advanced riot shield made of darker glasses to prevent laser fire from passing through."
	id = "laser_shield"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 4000, /datum/material/glass = 1000, /datum/material/plastic = 4000, /datum/material/silver = 800, /datum/material/titanium = 600, /datum/material/plasma = 5000)
	build_path = /obj/item/shield/riot
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/bullet_shield
	name = "Bullet Resistant Riot Shield"
	desc = "An advanced riot shield made bullet resistant plastics and heavy metals to protect against projectile harm."
	id = "bullet_shield"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 4000, /datum/material/glass = 1000, /datum/material/silver = 2000, /datum/material/titanium = 1200, /datum/material/plastic = 2500)
	build_path = /obj/item/shield/riot/bullet_proof
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

//////////
//MISC////
//////////

/datum/design/suppressor
	name = "Suppressor"
	desc = "A reverse-engineered suppressor that fits on most small arms with threaded barrels."
	id = "suppressor"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 2000, /datum/material/silver = 500)
	build_path = /obj/item/gun_upgrade/muzzle/silencer
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/cleric_mace
	name = "Cleric Mace"
	desc = "A mace fit for a cleric. Useful for bypassing plate armor, but too bulky for much else."
	id = "cleric_mace"
	build_type = AUTOLATHE
	materials = list(MAT_CATEGORY_RIGID = 12000)
	build_path = /obj/item/melee/cleric_mace
	category = list("Imported")

/*
/datum/design/stun_boomerang
	name = "OZtek Boomerang"
	desc = "Uses reverse flow gravitodynamics to flip its personal gravity back to the thrower mid-flight. Also functions similar to a stun baton."
	id = "stun_boomerang"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 4000, /datum/material/silver = 10000, /datum/material/gold = 2000)
	build_path = /obj/item/melee/baton/boomerang
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY
*/

/datum/design/mindshield
	name = "Mindshield Implant"
	desc = "A mindshield implant."
	id = "implant_loyal"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 500)
	build_path = /obj/item/implantcase/mindshield
	category = list("Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/mfc
	name = "Microfusion Cell"
	id = "mfc"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 2000)
	build_path =/obj/item/stock_parts/cell/ammo/mfc
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/ec
	name = "Energy Cell"
	id = "ec"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 1000)
	build_path =/obj/item/stock_parts/cell/ammo/ec
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

/datum/design/ecp
	name = "Electron Charge Pack"
	id = "ecp"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 2000, /datum/material/diamond = 2000)
	build_path = /obj/item/stock_parts/cell/ammo/ecp
	category = list("Ammo")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY

//weapon parts
/*
/datum/design/fluxcap
	name = "Flux capacitator"
	desc = "An advanced weapons part."
	id = "fluxcap"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 20000, /datum/material/plastic = 5000)
	build_path = /obj/item/advanced_crafting_components/flux
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/lenses
	name = "Focused crystal lenses"
	desc = "An advanced weapons part."
	id = "focusedlenses"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 50000, /datum/material/plastic = 3000)
	build_path = /obj/item/advanced_crafting_components/lenses
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/conductor
	name = "Superconductor coil"
	desc = "An advanced weapons part."
	id = "superconductor"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 15000)
	build_path = /obj/item/advanced_crafting_components/conductors
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/receiver
	name = "Advanced modular receiver"
	desc = "An advanced weapons part."
	id = "advreceiver"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 15000, /datum/material/titanium = 15000)
	build_path = /obj/item/advanced_crafting_components/receiver
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/assembly
	name = "Pre-war weapon assembly"
	desc = "An advanced weapons part."
	id = "preassembly"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 15000, /datum/material/titanium = 15000, /datum/material/plastic = 5000)
	build_path = /obj/item/advanced_crafting_components/assembly
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/alloys
	name = "Superlight alloys"
	desc = "An advanced weapons part."
	id = "superalloys"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 15000, /datum/material/titanium = 15000, /datum/material/plastic = 3000)
	build_path = /obj/item/advanced_crafting_components/alloys
	category = list("Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE
*/
