sub EVENT_SAY {
  if ($faction <= 2) {
    if ($text =~ /hail/i) {
      quest::say("Welcome to Skyshrine. I have noticed a great deal more of your people joining the ranks of the shrine, hoping to assist in pushing back the giants for good. I am here as the commander of the militia set forth by Lord Yelinak himself. With that in mind, it is my duty to assign certain tasks to those who are willing to show their support to the kin, and to the shrine.");
    }
    elsif ($text =~ /what.*task/i) {
      quest::say("Well, for instance, we have recently acquired information from one of our scouts in the wastelands to the west that there have been storm giants wandering the coastal area nearby. We have not heard from this scout in some time however, and we are beginning to worry about their status. Your task, should you choose to accept it, is to deliver some tools to the scout so that they can communicate back to us with their status, and the status of those giants.");
    }
    elsif ($text =~ /accept.*task/i) {
      quest::say("Good. Please take these tools with haste to the western wastelands and find the scout. Strength be with you, and with the kin.");
      #:: Give a 29683 - Scout Tools
      quest::summonitem(29683);
    }
  }
}

sub EVENT_ITEM {
  #:: Match a 29688 - Scout Report
  if (plugin::takeItems(29688 => 1)) {
    quest::say("Well this artifact will definitely need study. Thank you for this report. Perhaps after we have researched this object more we will have more for you to search for.");
    #:: Set factions
    quest::faction(430, 10);  #:: + Claws of Veeshan
    quest::faction(436, 10);  #:: + Yelinak
    quest::faction(448, -20); #:: - Kromzek
    #:: Grant a moderate amount of experience
    quest::exp(10000);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}