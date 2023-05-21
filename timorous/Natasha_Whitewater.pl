# NPC:96080 Natasha Whitewater, Cleric Epic 1.0 Quest NPC
sub EVENT_SPAWN {
	quest::settimer("natasha_depop", 300); # Start timer to despawn after 5 minutes
}

sub EVENT_SAY {
  if ($text=~/hail/i) {
#    quest::say();
  }
}

sub EVENT_TIMER {
	if ($timer eq "natasha_depop") {
		# Player did not hand item in within 5 minutes, leave.
		quest::depop();
	}
}

sub EVENT_ITEM
{
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		# 28018 : Lord Gimblox's Signet Ring
		if (plugin::takeItems(28018 => 1)) {
			quest::say("Thank you for your services thus far. The Triumvirate missionaries are, so far, impressed. However, there is yet another threat rising from the Plasmatic Priesthood that may have dire effects on all of Norrath if it is not stopped. An Iksar member of the Triumvirte missionaries has discovered that the Plasmatic Priesthood has somehow convinced the sarnak summoners of Chardok to assist them in summoning Ixiblat Fer to Norrath. Take this shell to Naxton Deepwater in the Burning Woods so that she knows I have sent you. We ask that you return with the Sceptre of Ixiblat Fer as well as evidence to show that the Plasmatic Priesthood is dealing with sarnaks. High Priest Omat will await your return. I must depart now. I pray for your success.");
			# 28056  Ornate Sea Shell (Item Lore: Ornate Sea Shell II)
			quest::summonitem(28056);
			quest::depop();
		} 
		if (plugin::takeItems(28052 => 1)) {
			# 28052 Message to Natasha
			quest::emote("lowers her head in mourning and whispers a prayer."); # In classic era, this may have been part of the say dialogue
			quest::say("'It is a shame that fate has decided one so young and from such a background should perish, but we must not attempt to change what was destined to be.  Priestess Naxot sacrificed herself selflessly so that others may be spared the horrors Ixiblat would have brought to Norrath. May the waters of Norrath forever remember her reflection. I thank you for delivering Naxot's message to me and give you this pearl imbued with the power of the Triumvirate. Should you find Zordak Ragefire, speak with him before all else and hand him this pearl. No mortal enemy of the Triumvirate can resist its enchantments.'");
			# 28054 Shimmering Pearl
			quest::summonitem(28054);
			# quest::depop(); # Sources say that Natasha does not depop from this turn-in

		}
	}

   #:: Return unused items
  plugin::returnUnusedItems();
}

#END of FILE Zone: timorous ID:96080 -- Natasha_Whitewater
