/obj/item/weapon/gun/projectile/rpg
	name = "RPG-7"
	desc = "A modified ancient rocket-propelled grenade launcher, this design is centuries old, but well preserved. \
			Modification altered gun mechanism to take much more compact, but sligtly less devastating in close quaters rockets and remove backfire. \
			Their priming and proplusion was altered too for more robust speed, so it has strong recoil."
	icon = 'icons/obj/guns/projectile/rocket.dmi'
	icon_state = "launcher" //placeholder, needs new sprites
	item_state = "launcher" //placeholder, needs new sprites
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_ROCKET
	fire_sound = 'sound/effects/bang.ogg' //placeholder, needs new sound
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	matter = list(MATERIAL_PLASTEEL = 30, MATERIAL_PLASTIC = 5, MATERIAL_SILVER = 5)
	price_tag = 8000
	ammo_type = /obj/item/ammo_casing/rocket
	load_method = SINGLE_CASING
	handle_casings = EJECT_CASINGS
	max_shells = 1
	one_hand_penalty = 1
	recoil_buildup = 0.2 //with new system it gives slight chance to miss but not really
	fire_sound = 'sound/effects/bang.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/batrifle_magin.ogg' //placeholder, needs new sound
	twohanded = TRUE

/obj/item/weapon/gun/projectile/rpg/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (loaded.len)
		iconstring += "-he"
		//itemstring += "-he"         disabled until mag fix
	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/weapon/gun/projectile/rpg/Initialize()
	. = ..()
	update_icon()
