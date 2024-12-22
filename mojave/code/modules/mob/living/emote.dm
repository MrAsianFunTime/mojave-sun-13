/////////////////////MOJAVE SUN EMOTE STORAGE///////////////////////

// Wipe emote - wipes your eyes or gas mask from blur - Rain, pepperspray, you name it.
/datum/emote/living/wipe
	key = "wipe"
	key_third_person = "wipes"
	message = "wipes their eyes."
	emote_type = EMOTE_VISIBLE
	cooldown = 3.5 SECONDS

/datum/emote/living/wipe/run_emote(mob/user, params, type_override, intentional)
	if(!istype(user, /mob/living)) return //Vrell - storm logic doesn't work right on non-carbon mobs anyway
	var/mob/living/alived = user

	// If they're wearing a gas mask, it's implied they're wiping the mask. Easier to wipe a mask clean rather than your eyes!
	if(HAS_TRAIT(user, TRAIT_WEARING_GAS_MASK))
		message = "wipes their mask."
		playsound(alived.loc, 'mojave/sound/ms13effects/gasmask_wipe.ogg', 1, TRUE)
		alived.adjust_blurriness(-alived.weather_blindness_amount)
		alived.weather_blindness_amount = 0
		return ..()

	var/amount_to_wipe = STORM_MAXIMUM_BLINDNESS / 2 < alived.weather_blindness_amount ? STORM_MAXIMUM_BLINDNESS / 2 : alived.weather_blindness_amount
	alived.weather_blindness_amount -= amount_to_wipe
	alived.adjust_blurriness(-amount_to_wipe)
	message = "wipes their eyes."
	return ..()

// AGONY emote - Express that delicious pain!
/datum/emote/living/agony
	key = "agony"
	key_third_person = "screams"
	message = "screams in utter agony!"
	emote_type = EMOTE_AUDIBLE
