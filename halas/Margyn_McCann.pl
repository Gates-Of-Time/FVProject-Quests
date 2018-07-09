sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}
sub EVENT_ENTER {
  #:: Check for 18761- A tattered note (Guild Summons)
  if (plugin::check_hasitem($client, 18761)) { 
        $client->Message(15,"Margyn McCann greets you. 'Welcome to the Church of the Tribunal. Read the note in your inventory and when you are ready to begin your training, hand it to me.'");
  }
}
sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, young adventurer! I'm the chief overseer o' the Shamans o' Justice. We serve the will o' the Tribunal. Justice is our way. Within Halas, there are none who are above the scales o' justice. There are still some who have defied our laws. We wish to [" . quest::saylink("apprehend the fugitives") . "].");
		}
	if ($text=~/apprehend the fugitives/i) {
		quest::say("Maybe so, however, there are some who may be too much fer ye to handle. I'll need to know if ye're a [" . quest::saylink("young shaman") . "] or a standin' member of the court?");
		}
	if ($text=~/young shaman/i) {		
		quest::say("We seek a former member who dared to curse the righteousness of the Tribunal. We'll have his head for that remark. His name is Granin O'Gill and he has run to the wastelands of Everfrost seeking safe haven. Find him. Return his head to me. Do so, and earn the ninth circle spell, Spirit o' the Bear. Go at once!");
		}
}
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13729 => 1)) { # Barbarian Head(*Garnin's Head) quest: Head of Granin O'Gill
		quest::Say("We can now rest assured that justice has been served. Ye'll be a valuable asset to our court. Take and remember this spell, Spirit o' the Bear. I hope ye've attained the necessary skills to scribe it. If not, I'm sure ye soon will. Go now, and serve justice.");
		$HGOreward = quest::ChooseRandom(15270, 15275, 15075, 15271, 15279, 15212, 15079); #Shattered Caster Beads Random Loot - Drowsy : Frost Rift : Sicken : Fleting Fury : Spirit of Bear : Cure Blindness : Spirit Sight
		#:: Set Factions
		quest::faction(213,3); 		# Merchants of Halas
		quest::faction(33,-3);	# Circle of Unseen Hands
		quest::faction(294,20);		# Shamen of Justice
		quest::faction(48,-3);		# Coalition of Tradefolk Underground
		quest::faction(137,-4);		# Hall of the Ebon Mask
		quest::Ding();
		quest::givecash(0,0,6,0);
		quest::exp(1600);
		quest::summonitem($HGOreward);
		}
	if (plugin::check_handin(\%itemcount, 18761 => 1)) { # Check for 18761- A tattered note (Guild Summons)
		quest::Say("Welcome t' the Church o' the Tribunal. Here, we practice the will o' the Six Hammers. This is our guild tunic - wear it with pride and represent us well.");
		quest::summonitem(13512); # Faded Blue Tunic
		#:: Set Factions
		quest::faction(213,15); 	# Merchants of Halas
		quest::faction(33,-15);		# Circle of Unseen Hands
		quest::faction(294,100);	# Shamen of Justice
		quest::faction(48,-15);		# Coalition of Tradefolk Underground
		quest::faction(137,-20);	# Hall of the Ebon Mask
		quest::Ding();
		quest::exp(100);
		quest::givecash(0,0,0,0);
		}
				#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 
