sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  #:: Check for 18772 - Recruitment Summons
  if (plugin::check_hasitem($client, 18772)) { 
        $client->Message(15,"An older, male gnome stands before you. 'Welcome young apprentice to the Library Mechanimagica. I am Wuggan Azusphere. Read the note in your inventory and then hand it to me so that we can begin your training.'");
  }
}
sub EVENT_SAY {
     if ($text=~/trades/i) {
        quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [" . quest::saylink("second book") . "], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		quest::summonitem(51121); # Tradeskill Basics : Volume I
     }
	 if($text=~/second book/i){ 
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		quest::summonitem(51122); # Tradeskill Basics : Volume II
	}
}
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 18772 => 1)) { #Recruitment Summons
        quest::Say("Welcome to Library Mechanimagica. I am Master Magician Wuggan Azusphere. and I will help to teach you the ways of summoning. Here is our guild tunic, make us proud. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [" . quest::saylink("trades") . "] you will have available to you.");
		quest::summonitem(13521); #Dusty Gold Robe*
		quest::faction(91,100); # eldritch collective
		quest::faction(71,-15); # Dark reflection
		quest::faction(322,-5); # the dead
		quest::faction(115,15); # gem choppers
		quest::faction(176,15); # king ak'anon
		quest::ding();
		quest::exp(100);
    }
    plugin::return_items(\%itemcount); # return unused items
}
#converted to Perl by SS
