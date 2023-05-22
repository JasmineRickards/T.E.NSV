//General weapons stuff
/datum/design/board/munitions_computer_circuit
	name = "Computer Design (Munitions Computer)"
	desc = "Allows for the construction of a munitions control console."
	id = "munitions_computer_circuit"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 1000)
	build_path = /obj/item/circuitboard/computer/ship/munitions_computer
	category = list("Computer Boards")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/ship_firing_electronics
	name = "Firing Electronics"
	desc = "Controls the firing mechanism for ship-sized weaponry."
	id = "ship_firing_electronics"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 1000, /datum/material/diamond = 100, /datum/material/titanium = 300, /datum/material/copper = 100)
	construction_time=100
	build_path = /obj/item/ship_weapon/parts/firing_electronics
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

//50 Cal flavored PDC turrets
/datum/design/board/anti_air
	name = "Machine Design (AA turret)"
	desc = "Allows for the construction of a crew served anti-air turret."
	id = "antiair"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 2000, /datum/material/gold = 5000)
	build_path = /obj/item/circuitboard/machine/anti_air
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/anti_air/heavy
	name = "Machine Design (HAA turret)"
	desc = "Allows for the construction of a crew served, HAA turret."
	id = "antiair_heavy"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 2000, /datum/material/gold = 5000)
	build_path = /obj/item/circuitboard/machine/anti_air/heavy
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/antiaircomp
	name = "Computer Design (Anti-air turret control console)"
	desc = "Allows for the construction of a control console for anti-air guns."
	id = "antiaircomp"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 2000, /datum/material/gold = 5000)
	build_path = /obj/item/circuitboard/computer/anti_air
	category = list("Computer Boards")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS


/datum/design/board/naval_artillery
	name = "Machine Design (Deck Gun Frame)"
	desc = "Allows for the construction of a naval artillery gun frame."
	id = "deck_gun"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/titanium = 12000,/datum/material/iron = 15000, /datum/material/glass = 5000, /datum/material/copper = 5000)
	build_path = /obj/structure/ship_weapon/artillery_frame
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/naval_artillery_triple
	name = "Machine Design (Triple Deck Gun Frame)"
	desc = "Allows for the construction of a triple barreled naval cannon frame."
	id = "deck_gun_dual"
	materials = list(/datum/material/titanium = 30000,/datum/material/iron = 25000, /datum/material/diamond = 15000, /datum/material/copper = 35000)
	build_path = /obj/item/circuitboard/multibarrel_upgrade/_3
	category = list("Advanced Munitions")
	build_type = PROTOLATHE | AUTOLATHE
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/naval_artillery_bsa
	name = "Machine Design (BSA Cannon)"
	desc = "Allows for the construction of a triple barreled naval cannon frame."
	id = "deck_gun_bsa"
	materials = list(/datum/material/titanium = 45000,/datum/material/iron = 25000, /datum/material/diamond = 15000, /datum/material/copper = 35000)
	build_path = /obj/item/circuitboard/ship_weapon/energy/beam/bsa
	category = list("Advanced Munitions")
	build_type = PROTOLATHE | AUTOLATHE
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/naval_artillery_comp
	name = "Machine Design (Deck Gun Computer)"
	desc = "Allows for the construction of a naval artillery control console."
	id = "naval_artillery_comp"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500, /datum/material/diamond=5000)
	build_path = /obj/item/circuitboard/computer/deckgun
	category = list("Computer Boards")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/artillery_loader
	name = "Machine Design (Deck Gun Core)"
	desc = "Allows for the construction of a naval artillery core."
	id = "artillery_loader"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500, /datum/material/diamond=5000)
	build_path = /obj/item/circuitboard/machine/deck_gun
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/powder_loader
	name = "Machine Design (Deck Gun Powder Gate)"
	desc = "Allows for the construction of a naval artillery powder gate."
	id = "powder_loader"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500)
	build_path = /obj/item/circuitboard/machine/deck_gun/powder
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/payload_gate
	name = "Machine Design (Deck Gun Payload Gate)"
	desc = "Allows for the construction of a naval artillery payload gate."
	id = "payload_gate"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500)
	build_path = /obj/item/circuitboard/machine/deck_gun/payload
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/deck_gun_autorepair
	name = "Machine Design (Deck Gun Autorepair upgrade)"
	desc = "A machine which can upgrade the deck gun to let it self-repair."
	id = "deck_gun_autorepair"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500)
	build_path = /obj/item/circuitboard/machine/deck_gun/autorepair
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/deck_gun_autoelevator
	name = "Machine Design (Deck Gun Auto-elevator)"
	desc = "A machine which can upgrade the deck gun to drastically reduce load times."
	id = "deck_gun_autoelevator"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 5000, /datum/material/titanium = 15000, /datum/material/diamond = 5000)
	build_path = /obj/item/circuitboard/machine/deck_gun/autoelevator
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

//Missile system (factory parts in munitions_designs.dm)
/datum/design/board/vls_tube
	name = "Machine Design (VLS Tube)"
	desc = "Allows for the construction of a VLS launch tube (control computer not included)."
	id = "vls_tube"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500)
	build_path = /obj/item/circuitboard/machine/vls
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/ams_console
	name = "Machine Design (AMS Control Console)"
	desc = "Allows for the construction of an AMS control console."
	id = "ams_console"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500)
	build_path = /obj/item/circuitboard/computer/ams
	category = list("Computer Boards")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

//Misc
/datum/design/railgun_rail
	name = "Railgun Rail"
	desc = "A reinforced electromagnetic rail for a railgun."
	id = "railgun_rail"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = 2000, /datum/material/silver = 1000, /datum/material/plasma = 1000) //Duranium ingredients
	construction_time=100
	build_path = /obj/item/ship_weapon/parts/railgun_rail
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/board/gauss_dispenser_circuit
	name = "Machine Design (Gauss Dispenser)"
	desc = "Allows you to construct a machine that lets you access the ship's internal ammo stores to retrieve gauss gun ammunition."
	id = "gauss_dispenser_circuit"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 500)
	build_path = /obj/item/circuitboard/machine/gauss_dispenser
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

//Hybrid Railgun
/datum/design/slug_cold_iron
	name = "M4 NTRS 400mm teflon coated tungsten round"
	desc = "A standard railgun slug."
	id = "slug_cold_iron"
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(/datum/material/iron = 2000, /datum/material/plasma = 750)
	construction_time=10
	build_path = /obj/item/ship_weapon/ammunition/railgun_ammo
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS

/datum/design/slug_uranium
	name = "U4 NTRK 400mm teflon coated uranium round"
	desc = "A heavy railgun slug."
	id = "slug_uranium"
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(/datum/material/iron = 1500, /datum/material/plasma = 750, /datum/material/uranium = 500)
	construction_time=10
	build_path = /obj/item/ship_weapon/ammunition/railgun_ammo/uranium
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS


/datum/design/board/laserams
	name = "Laser AMS defence"
	desc = "Laser weapon for missile defence."
	id = "lasams"
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/plasma = 7500, /datum/material/uranium = 5000)
	construction_time=10
	build_path = /obj/item/circuitboard/ship_weapon/energy/ams
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS|DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/board/munitions_computer_circuit
	name = "Computer Design (Laser PD computer)"
	desc = "Allows for the construction of a munitions control console."
	id = "munitions_computer_circuit"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 2000, /datum/material/copper = 200, /datum/material/gold = 1000)
	build_path = /obj/item/circuitboard/computer/laser_pd
	category = list("Computer Boards")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS|DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/board/laserpd
	name = "Laser Point defence"
	desc = "Laser weapon for defence."
	id = "lasams"
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/plasma = 7500, /datum/material/uranium = 5000)
	construction_time=10
	build_path = /obj/item/circuitboard/ship_weapon/energy/laser_pd
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS|DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/board/laserburst
	name = "Laser Coaxial burst weapon"
	desc = "Laser weapon for offence."
	id = "lasams"
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/plasma = 7500, /datum/material/uranium = 5000)
	construction_time=10
	build_path = /obj/item/circuitboard/ship_weapon/energy
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS|DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/board/laserbeamer
	name = "Laser Beam weapon"
	desc = "Laser weapon for offence."
	id = "lasbeam"
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/plasma = 7500, /datum/material/uranium = 5000, /datum/material/diamond = 2500)
	construction_time=10
	build_path = /obj/item/circuitboard/ship_weapon/energy/beam
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS|DEPARTMENTAL_FLAG_ENGINEERING


/datum/design/board/railgunturret
	name = "Machine Design (Railgun)"
	desc = "Allows you to construct a machine that lets you fire rail sabots."
	id = "raillies"
	build_type = PROTOLATHE|IMPRINTER
	materials = list(/datum/material/glass = 20000, /datum/material/copper = 20000, /datum/material/gold = 5000)
	build_path = /obj/item/circuitboard/ship_weapon/hybrid_rail
	category = list("Advanced Munitions")
	departmental_flags = DEPARTMENTAL_FLAG_MUNITIONS|DEPARTMENTAL_FLAG_ENGINEERING