sub EVENT_SAY {
     if ($text=~/hail/i) {
        quest::emote("You look like you could use a copy of the Tinker's News and World report $name. Find out everything that is happening both below ground and above. Buy a copy now. It's cheap.");
     }
}
sub EVENT_ITEM {
    
    plugin::return_items(%itemcount); # return unused items
}
