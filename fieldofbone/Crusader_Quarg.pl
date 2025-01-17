sub EVENT_SAY
{
	
	if ($text =~ /hail/i) {
		quest::emote("stands at attention and salutes you.  It would seem that he takes his job quite seriously.  'Do not fear, feeble soul.  The Crusaders of Greenmist are on duty.");
	}
	#:: Match if faction is Indifferent or better
	elsif($text=~/collect the Crusaders of Rok Nilok?/i)
	{
		#:: Match if faction is amiable or better
		if($faction <= 4) {
			quest::say("Seek out Mystic Dovan in the swamp garrison, he will have information of the Crusaders.");
			#:: Give a 17035 - Skull Chest
			quest::summonitem(17035);
		}
		#:: Match if faction is Indifferent or better
		elsif($faction <= 5) {
			quest::say("Show greater devotion to the Crusaders of Greenmist and you will obtain that which you seek.");
		}
		else {
			quest::emote("eye's glare red and gnashes his teeth.  'You had best avoid all members of the Temple of Terror.");
		}
	}
}

sub EVENT_ITEM
{
	#:: Match if faction is Indifferent or better
	if($faction <= 5) {
		#:: Match a 18054 - The Bone Garrison
		if(plugin::takeItems(18054 => 1) && $faction <= 5)
		{
			quest::say("Ah, i see you have proven yourself to Zand and he wishes to see more of your prowess.  go to the Tower of Kurn and bring him the Skulls of the Caste of Bone Brethren, a caste of powerful shamans who perished fighting undead in the Field of Bone several decades ago.");
			#:: Give a 17034 - Skull Chest
			quest::summonitem(17034);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(282, 10);		#:: + Scaled Mystics
			quest::faction(193, 10);		#:: + Legion of Cabilis
			#:: Grant a large amount of experience
			quest::exp(10000);
			quest::setglobal("shmskullquest", 5, 5, "F"); #set a global flag so that user can do shm skull quest part 3.3
		}
		#:: Match a 12735 - Full C.O.B.B. Chest and a 5142 - Iron Cudgel of the Seer
		elsif(plugin::takeItems(12735 => 1, 5142 => 1) && $faction <= 5)
		{
			quest::say("The temple shall be pleased. As instructed by the Hierophants, here is your Iron Cudgel of the Mystic. You have done well that I must ask you to [collect the Crusaders of Rok Nilok]. Take this chest. Inside you shall combine the skull of their leader and at least five of the caste members. You then will go to the Swamp Garrison and deliver the full chest and your Iron Cudgel of the Mystic to Mystic Dovan. Go to him now and inquire of the Crusaders of Rok Nolok.");
			#:: Give a 5143 - Iron Cudgel of the Mystic
			quest::summonitem(5143);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(282, 10);		#:: + Scaled Mystics
			quest::faction(193, 10);		#:: + Legion of Cabilis
			#:: Grant a huge amount of experience
			quest::exp(100000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}