sub EVENT_SAY {
     if ($text=~/hail/i) {
		if ($faction >= 6) {
        quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
     }
		if ($faction == 5) {
        quest::say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the [" . quest::saylink("gnoll bounty") . "].");
     }
	 	if ($faction <= 4) {
        quest::say("Renth McLanis says 'Hail, $name! Have ye come to train? I train all warriors. All Wolves o' the North must be strong warriors and swift as well. Are ye a young wolf, then? If so, maybe ye can [" . quest::saylink("assist Renth") . "] with his wee problem, eh?");
     }
	  if ($text=~/assist Renth/i) {
	    quest::say("I was ordered by Kylan O'Danos to personally escort a young warrior sent to fetch the remains of his cousin, Ivan McMannus. I forgot and spent me greater time testing out the fine spirits. Now I must find the courier and the remains. Will ye [" . quest::saylink("search for the courier") . "]?");
     }
	 if ($text=~/search for the courier/i) {
	    quest::say("Thank ye, $name! Go to Everfrost Peaks and seek out Arnis McLish. Ask him where Megan, the courier, is. Once ye find Megan, would you ask her where Ivan's remains are? Please go, at once!");
     }
	 if ($text=~/dangerous matter/i) {
	    quest::say("A murder was done in Halas recently.  A couple were killed by a pair o' rogues fer a mere pouch o' copper.  The shaman gave chase and the main rogue, Paglan, fell beneath an ice floe.  One got away.  We must [" . quest::saylink("hunt the murderer") . "].  Will ye help?");
     }
	 if ($text=~/hunt the murderer/i) {
	    quest::say("Twas good old Dok whose brother and wife were slain.  Speak with him at his shop.  Ask him if he has [any information about the crime].  Return the head of the murderer and I'll give ye a [" . quest::saylink("Langseax") . "].");
     }
	 	 if ($text=~/Langseax/i) {
	    quest::say("The Langseax was crafted to be wielded by a warrior only.  Tis a one-handed slashing weapon with great balance to assist the warrior who masters it.");
     }
	}
	
	sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13246 => 1) && $faction <= 5) { # Box of Remains (*Box of Ivans Remains) - id : 13246
		quest::Say("Good work!! Kylan will never know o' me negligence. I owe ye one, young warrior. Let's call it even with this. Twas found by one of our foraging parties. It is still useful. And... I believe ye can assist with a more [" . quest::saylink("dangerous matter") . "] as well");
		quest::SummonItem::ChooseRandom(17001, 17002, 17003, 17004, 17009); # Wrist Pouch, Belt Pouch, Small Bag, Large Bag, Purse, 
		#:: Set Factions
		quest::faction(361,1); 		# Wolves of the North 
		quest::faction(213,-1);		# Merchants of Halas 
		quest::faction(294,10);		# Shamen of Justice
		quest::faction(311,-1);		# Steel Warriors
		quest::Ding();
		quest::exp(2000);
        #:: Create a hash for storing cash - 500 to 900 cp
        my %cash = plugin::RandomCash(500,900);
        #:: Grant a random cash reward
        quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
	}	
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 
