sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Hail, $name! Have ye come to train? I train all warriors. All Wolves o' the North must be strong warriors and swift as well. Are ye a young wolf, then? If so, maybe ye can [" . quest::saylink("assist Renth") . "] with his wee problem, eh?");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the gnoll bounty.");
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
	elsif ($text=~/assist Renth/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I was ordered by Kylan O'Danos to personally escort a young warrior sent to fetch the remains of his cousin, Ivan McMannus. I forgot and spent me greater time testing out the fine spirits. Now I must find the courier and the remains. Will ye [" . quest::saylink("search for the courier") . "]?");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the gnoll bounty.");
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
	elsif ($text=~/search for the courier/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Thank ye, $name! Go to Everfrost Peaks and seek out Arnis McLish. Ask him where Megan, the courier, is. Once ye find Megan, would you ask her where Ivan's remains are? Please go, at once!");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the gnoll bounty.");
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
	elsif ($text=~/dangerous matter/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("A murder was done in Halas recently.  A couple were killed by a pair o' rogues fer a mere pouch o' copper.  The shaman gave chase and the main rogue, Paglan, fell beneath an ice floe.  One got away.  We must [" . quest::saylink("hunt the murderer") . "].  Will ye help?");
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
	elsif ($text=~/hunt the murderer/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Twas good old Dok whose brother and wife were slain.  Speak with him at his shop.  Ask him if he has any information about the crime.  Return the head of the murderer and I'll give ye a [" . quest::saylink("Langseax") . "].");
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
	elsif ($text=~/Langseax/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("The Langseax was crafted to be wielded by a warrior only.  Tis a one-handed slashing weapon with great balance to assist the warrior who masters it.");
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13246 - Box of Remains
	if (plugin::takeItems(13246 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::Say("Good work!! Kylan will never know o' me negligence. I owe ye one, young warrior. Let's call it even with this. Twas found by one of our foraging parties. It is still useful. And... I believe ye can assist with a more [" . quest::saylink("dangerous matter") . "] as well");
			#:: Give a random reward: 17001 - Wrist Pouch, 17002 - Belt Pouch, 17003 - Small Bag, 17009 - Purse
			quest::summonitem::ChooseRandom(17001, 17002, 17003, 17004, 17009);
			#:: Ding!
			quest::ding();
			#:: Grant a moderate amount of experience
			quest::exp(2000);
			#:: Create a hash for storing cash - 500 to 900 cp
			my %cash = plugin::RandomCash(500,900);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Set Factions
			quest::faction(361, 1);		#:: + Wolves of the North 
			quest::faction(213, -1);	#:: - Merchants of Halas 
			quest::faction(294, 10);	#:: + Shamen of Justice
			quest::faction(311, -1);	#:: - Steel Warriors
		}
		else {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
			#:: Return a 13246 - Box of Remains
			quest::summonitem(13246);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

#:: Converted to Perl by SS
