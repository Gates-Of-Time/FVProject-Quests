sub EVENT_SAY {
     if ($text=~/hail/i) {
        quest::emote("The guide turns his head towards you, a small shower of sparks dance accross the ground and you detect the faint smell of something burning. 'Greetings, lost soul. I am a guide, automaton series G. I can assist you by leading you to all the important destinations in Ak'Anon. All you need to do is ask 'where' and state a valid destination. ..Bzzz.. Click.. Grind.. Grind..  This Unit is Out of Order! Click.. Grind..'");
     }
}
sub EVENT_ITEM {
    
    plugin::return_items(%itemcount); # return unused items
}
#converted to Perl by SS
