sub EVENT_SAY {
	if (quest::is_omens_of_war_enabled()) {
		if ($text =~ /hail/i) {
			quest::me("As you approach Wygrish you can see him meditating with a small ripped book in his grasp. As you pass him by he raises his eyes and stares at you before going back into meditation.");
			quest::say("I see you wear the Celestial Mark! I know why you are here and you cant have it back! I will fight you with all that I am to prevent losing the diary!");
		}
    }
}