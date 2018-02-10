sub EVENT_SAY {
     if ($text=~/king akanon/i) {
        quest::emote("Brell strike you down for not knowing!!  Who could not have heard of the name of his royal highness King Horatio Ak'Anon. This great city is named after him. He rules from his throne room in Ak'Anon Palace which he constructed upon the underground lake.");
     }
}
sub EVENT_ITEM {
    
    plugin::return_items(%itemcount); # return unused items
}
