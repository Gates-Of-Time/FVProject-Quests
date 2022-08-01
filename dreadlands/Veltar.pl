
sub EVENT_SAY {
 if($text=~/hail/i){
  quest::emote("'s body has scars all about it, looking as though beaten with whips. One wrist bares a unique looking bracer, the other is bare. 'Leave me be! I did not come up here because I wanted company.'");
 }
 elsif($text=~/tynnonium shackle/i){
  quest::say("So it is the one that has freed me before! You seek the ways of Tynn I see. You must be on the true path of the monk to accomplish what is needed. The path will test the [three virtues] most important to becoming a true vessel for Cazic Thule's power.");
 }
 elsif($text=~/three virtues/i){
  quest::say("The three virtues are [patience], [agility], and [peace of mind]. Patience is important in knowing in when to strike your opponent, too soon and you may crushed, too late and your opportunity may pass. Agility is very important in showing your ability to avoid blows sent your way, and then returning what was sent to you. Without striking quickly you are no monk at all. Peace of mind will allow you to concentrate on the situation you are in. With it you can control your actions and make decisive strikes at critical times. Without peace of mind you may attack out of rage and will surely fall for your mind is clouded. You must complete these three trials to earn the shackle of the Grandmaster.");
 }
 elsif($text=~/patience/i){
  quest::say("Patience shall be tested by the one whom has the greatest patience. Seek Master Rinmark, and ask him of this trial.");
 }
 elsif($text=~/agility/i){
  quest::say("To show agility you must be tested by the most swift of us. Grandmaster Glox will provide your test for this. Ask him of the trial of agility.");
 }
 elsif($text=~/peace of mind/i){
  quest::say("To show peace of mind you must decipher a tome found in the library of Kaesora. An undead tome keeper will wait for you to come, ask him of the trial of peace of mind. The tome will tell you what you shall seek. Do with the tome the same as you would with the item you seek. Show you have clarity of mind in solving this.");
 }
}

sub EVENT_ITEM {
	#:: Match a 7879 - Mark of Agility, a 7880 - Mark of Patience and a 7881 - Mark of Clarity
	if (plugin::takeItems(7879 => 1, 7880 => 1, 7881 => 1)) {
		quest::say("So you are finally ready for the final rung. Here it is, you shall receive mine for I quest for the fists of Cazic Thule no longer.");
 		#:: Give a 4199 - Shackle of Tynnonium
		quest::summonitem(4199);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(444, 100); 	#:: + Swift Tails
		quest::faction(441, 25); 		#:: + Legion of Cabilis
		#:: Grant a large amount of experience
		quest::exp(60000);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
