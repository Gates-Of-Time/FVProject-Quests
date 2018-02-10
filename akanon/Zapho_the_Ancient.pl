sub EVENT_SAY {
     if ($text=~/hail/i) {
        quest::emote("Oh! Please excuse me. I was busy creating some new illusions for my collection. Hello there, $name! I am Zapho the Ancient. My return from the halls of the Realm of Heroes is the will of Bertoxxulous. I must watch over those who catch the eyes of the gods and recognize their heroic deeds.");
     }
}
sub EVENT_ITEM {
    
    plugin::return_items(%itemcount); # return unused items
}
#converted to Perl by SS
