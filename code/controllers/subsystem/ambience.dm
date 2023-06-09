#define AMBIENT_EFFECT_COOLDOWN 2 MINUTES	// Nsv13 - This was really just pissing me off - The minimum amount to wait between playing ambient effects. In what does it bloody look like, MINUTES.
#define MUSIC_THROTTLE_DELAY 7 MINUTES //Nsv13- Look, beestation, I really like robocop.ogg, but I don't want to hear it EVERY BLOODY MINUTE

/// The subsystem used to play ambience to users every now and then, makes them real excited.
SUBSYSTEM_DEF(ambience)
	name = "Ambience"
	flags = SS_BACKGROUND|SS_NO_INIT
	priority = FIRE_PRIORITY_AMBIENCE
	runlevels = RUNLEVEL_GAME | RUNLEVEL_POSTGAME
	wait = 2
	///Assoc list of listening client - next ambience time
	var/list/ambience_listening_clients = list()

/datum/controller/subsystem/ambience/fire(resumed)
	for(var/client/client_iterator as anything in ambience_listening_clients)

		if(isnull(client_iterator))
			ambience_listening_clients -= client_iterator
			continue

		if(isnewplayer(client_iterator.mob))
			continue

		var/area/current_area = get_area(client_iterator.mob)

		play_buzz(client_iterator.mob, current_area)

		if(ambience_listening_clients[client_iterator] > world.time)
			continue //Not ready for the next sound

		//NSV13 - handle areas with empty lists
		if(length(current_area.ambientmusic))
			var/ambi_music = pick(current_area.ambientmusic)
			play_ambience_music(client_iterator.mob, ambi_music, current_area)
		if(length(current_area.ambientsounds))
			var/ambi_fx = pick(current_area.ambientsounds)
			play_ambience_effects(client_iterator.mob, ambi_fx, current_area)

		ambience_listening_clients[client_iterator] = world.time + rand(current_area.min_ambience_cooldown, current_area.max_ambience_cooldown)

/datum/controller/subsystem/ambience/proc/play_buzz(mob/M, area/A)
	if (A.ambient_buzz && (M.client.prefs.toggles & PREFTOGGLE_SOUND_SHIP_AMBIENCE) && M.can_hear_ambience())
		if (!M.client.buzz_playing || (A.ambient_buzz != M.client.buzz_playing))
			SEND_SOUND(M, sound(A.ambient_buzz, repeat = 1, wait = 0, volume = 40, channel = CHANNEL_BUZZ))
			M.client.buzz_playing = A.ambient_buzz // It's done this way so I can tell when the user switches to an area that has a different buzz effect, so we can seamlessly swap over to that one

	else if (M.client.buzz_playing) // If it's playing, and it shouldn't be, stop it
		M.stop_sound_channel(CHANNEL_BUZZ)
		M.client.buzz_playing = null

/datum/controller/subsystem/ambience/proc/play_ambience_music(mob/M, _ambi_music, area/A) // Background music, the more OOC ambience, like eerie space music
	if(A.ambientmusic && !M.client?.channel_in_use(CHANNEL_AMBIENT_MUSIC) && (world.time >= (M.client?.music_last_played + MUSIC_THROTTLE_DELAY))) //NSV13 - added music cooldown
		SEND_SOUND(M, sound(_ambi_music, repeat = 0, wait = 0, volume = 75, channel = CHANNEL_AMBIENT_MUSIC))

/datum/controller/subsystem/ambience/proc/play_ambience_effects(mob/M, _ambi_fx, area/A) // Effect, random sounds that will play at random times, IC (requires the user to be able to hear)
	if (length(A.ambientsounds) && M.can_hear_ambience() && !M.client?.channel_in_use(CHANNEL_AMBIENT_EFFECTS) && ((world.time - M.client?.ambient_effect_last_played) > AMBIENT_EFFECT_COOLDOWN)) //NSV13 added cooldown timer
		SEND_SOUND(M, sound(_ambi_fx, repeat = 0, wait = 0, volume = 45, channel = CHANNEL_AMBIENT_EFFECTS))
