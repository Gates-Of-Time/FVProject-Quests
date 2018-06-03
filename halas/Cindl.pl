sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to my humble shop. I offer fine items fashioned from the skins of the beasts of Everfrost. Leather is my specialty and I can always use [" . quest::saylink("extra hides") . "].");
		}
	if ($text=~/extra hides/i) {
		quest::say("I will offer any hunter some used Tattered Armor for every Polar Bear Skin. I am sure that even you can wrestle the skins from the back of a polar bear cub.");
		}
	if ($text=~/second job/i) {
		quest::say("I have seen the warriors bringing in items called Wrath Orc Wristbands. Apparently they find them upon the lifeless bodies of the snow orc troopers. They are made from a skin I have yet to find. I will gladly reward you with either a Rawhide Tunic or Leggings or even perhaps Leather Gloves. All I ask for are Two Wrath Orc Wristbands..");
		}
	if ($text=~/mammoth hide parchment/i) {
		quest::say("Oh, for Jinkus? Ok, here you go."); # Text made up
		quest::SummonItem(12621); # Mammoth Hide Parchment
		}
	}
	
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13761 => 1)) { # Polar Bear Skin
		quest::Say("This is much appreciated.  Please accept this used armor in return and also a gold piece for yer troubles.  You have done well! I may have a [" . quest::saylink("second job") . "] fer ye, if ye like?");
		$PBSkin = quest::ChooseRandom(2130, 2131, 2132, 2134, 2135, 2136, 2127, 2126, 2128, 2129, 2125, 2133); #Polar Bear Skin Random Loot, Large tattered and patchwork armor
        quest::summonitem($PBSkin);
		#:: Set Factions
		quest::faction(213,5); 		# Merchants of Halas
		quest::faction(361,3);		# Wolves of the North
		quest::faction(294,3);		# Shamen of Justice
		quest::faction(275,-5);		# Rogues of the White Rose
		quest::Ding();
		quest::exp(100);
		quest::givecash(0,0,1,0);
		}
		 if (plugin::check_handin(\%itemcount, 12223 => 2)) { # Wrath Orc Wristbands
		quest::Say("Fine work hunter!  As your reward please accept this item which I have fashioned for you.");
		$WOWristbands = quest::ChooseRandom(2034, 2171, 2164); #Wrath Orc Wristbands Random Loot, Large rawhide tunic, leggings or gloves
        quest::summonitem($WOWristbands);
		#:: Set Factions
		quest::faction(213,10); 	# Merchants of Halas
		quest::faction(361,7);		# Wolves of the North
		quest::faction(294,7);		# Shamen of Justice
		quest::faction(275,-5);		# Rogues of the White Rose
		quest::Ding();
		quest::exp(100);
		quest::givecash(0,0,1,0);
		}
				#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS
