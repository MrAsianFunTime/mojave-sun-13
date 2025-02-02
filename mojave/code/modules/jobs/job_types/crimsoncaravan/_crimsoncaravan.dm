/datum/job/ms13/crimsoncaravan
	selection_color = "#fd4444ff"
	departments_list = list(
		/datum/job_department/crimsoncaravan,
	)
	exp_granted_type = EXP_TYPE_CRIMSONCARAVAN
	exp_required_type = EXP_TYPE_CRIMSONCARAVAN
	forbid = "Getting involved in war's or political matters."
	enforce = "The Crimson Caravan expects you to commit to commerce and trade with those around. Sending out caravans to do business."

/datum/outfit/job/ms13/crimsoncaravan
	name = "CrimsonCaravanDatums"
	jobtype = /datum/job/ms13/crimsoncaravan

/datum/outfit/job/ms13/crimsoncaravan/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/crimsoncaravan/config_check()
	if(type == /datum/job/ms13/crimsoncaravan)
		return FALSE
	return ..()

/datum/job/ms13/crimsoncaravan/map_check()
	if(type == /datum/job/ms13/crimsoncaravan)
		return FALSE
	return ..()
