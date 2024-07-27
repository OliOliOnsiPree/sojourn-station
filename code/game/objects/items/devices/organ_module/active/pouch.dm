/obj/item/organ_module/active/simple/opifex_pouch
	name = "embedded smuggling pouch"
	desc = "An opifex designed smuggling pouch, perfect for sneaking items around or simply carrying extra supplies."
	verb_name = "Deploy smuggling pouch"
	icon_state = "medium_opifex"
	matter = list(MATERIAL_BIO = 8, MATERIAL_STEEL = 4)
	allowed_organs = list(BP_R_ARM, BP_L_ARM)
	holding_type = /obj/item/storage/pouch/medium_generic/opifex
	completely_hide_from_scanners = TRUE

/obj/item/organ_module/active/simple/small_pouch
	name = "embedded tiny pouch"
	desc = "A tiny pouch that can be put inside a person at the cost of some of the users muscles."
	verb_name = "Deploy small pouch"
	icon_state = "small_implanted"
	//Exspensive
	matter = list(MATERIAL_SILK = 8, MATERIAL_STEEL = 12, MATERIAL_GOLD = 3, MATERIAL_SILVER = 3, MATERIAL_PLATINUM = 6)
	allowed_organs = list(BP_R_ARM, BP_L_ARM)
	holding_type = /obj/item/storage/pouch/small_generic/implanted //:( no
	completely_hide_from_scanners = TRUE

/obj/item/organ_module/active/simple/small_pouch/onInstall(obj/item/organ/external/E)
	if(ishuman(E.owner))
		var/mob/living/carbon/human/H = E.owner
		H.stats.changeStat(STAT_TGH, -15)
		H.stats.add_Stat_cap(STAT_TGH, - 15)

/obj/item/organ_module/active/simple/small_pouch/onRemove(obj/item/organ/external/E)
	if(ishuman(E.owner))
		var/mob/living/carbon/human/H = E.owner
		H.stats.changeStat(STAT_TGH, 15)
		H.stats.add_Stat_cap(STAT_TGH, 15)
