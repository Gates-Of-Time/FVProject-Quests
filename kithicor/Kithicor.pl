sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Hello Traveler, I do not see many this deep into the woods.");
  } 
}

sub EVENT_ITEM {

#::Call of Flames Quest Albino Rattlesnake Eggs - 20877
  if (plugin::check_handin(\%itemcount, 20877 => 1)) {
    quest::say("Wow, this is certainly something I have not seen in a long time. It was said that this species of snake had been wiped out due to the poachers and griffins. It was very noble of you to help in saving this species. I will see that these are raised properly. Please wear this icon with pride so other rangers will know of the good deed you have done.");
    quest::faction( 269, 50); #:: + Kithicor Residents
    quest::faction( 302, 50); #:: + Protectors of Pine
    quest::faction( 272, 50); #:: + Jaggedpine Treefolk
    quest::faction( 324, -50); #:: - Unkempt Druids
    #::Symbol of Achieverment - 20878
    quest::summonitem(20878);
  }
#:: Return unused items
plugin::returnUnusedItems();
}
