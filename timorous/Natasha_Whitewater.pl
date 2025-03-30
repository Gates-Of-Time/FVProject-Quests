sub EVENT_SPAWN {
  	quest::settimer("depop",300);
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28018 - Lord Gimblox's Signet Ring
		if(plugin::takeItems(28018 => 1)) {
			quest::say("Thank you, $name, for your services thus far. The Triumvirate missionaries are, so far, impressed. However, there is yet another threat rising from the Plasmatic Priesthood that may have dire effects on all of Norrath if it is not stopped. An Iksar member of the Triumvirate missionaries has discovered that the Plasmatic Priesthood has somehow convinced the sarnak summoners of Chardok to assist them in summoning Ixilblat Fer to Norrath. Take this shell to Naxot Deepwater in the Burning Woods so that she knows I have sent you. We ask that you return with the Sceptre of Ixiblat Fer as well as evidence to show that the Plasmatic Priesthood is dealing with sarnaks. High Priest Omat will await your return. I Must depart now. I pray for your success."); 
			#:: Give a 28056 - Ornate Sea Shell (II)
			quest::summonitem(28056);
			#:: Ding!
			quest::ding();
			#:: Step the timer 'depop'
			quest::stoptimer("depop");
			#:: Depop without spawn timer
			quest::depop();
		} 
		#:: Match a 28052 - Message to Natasha
		elsif (plugin::takeItems(28052 => 1)) {
			quest::emote("lowers her head in mourning and whispers a prayer. 'It is a shame that fate has decided one so young and from such a background should perish, but we must not attempt to change what was destined to be. Priestess Naxot sacrificed herself selflessly so that others may be spared the horrors Ixiblat would have brought to Norrath. May the waters of Norrath forever remember her reflection. I thank you for delivering Naxot's message to me and give you this pearl imbued with the power of the Triumvirate. Should you find Zordak Ragefire, speak with him before all else and hand him this pearl. No mortal enemy of the Triumvirate can resist its enchantments.'");
			#:: Give a 28054 - Shimmering Pearl
			quest::summonitem(28054);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::say("I have no need of this, $name.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	if ($timer eq "depop") {
		#:: Step the timer 'depop'
		quest::stoptimer("depop");
			#:: Depop without spawn timer
			quest::depop();
	}
}