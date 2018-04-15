sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Hail! You appear to be a [" . quest::saylink("new priest") . "]. Ah, I so enjoy the presence of youth within Deepwater Temple. I am sure Prexus is smiling upon us as we speak.");
	}
	if ($text=~/new priest/i) {
		quest::emote("As I suspected. I shall assist you with your training and you shall assist the temple with your service. A young priest can help out by asking to [" . quest::saylink("convert fishermen in Qeynos") . "] or maybe even something truly great such as requesting to [" . quest::saylink("protect the depths") . "][protect the depths].");
	}
	if ($text=~/protect the depths/i) {
		quest::emote("We have heard of zombies inhabiting the depths of Erud's Crossing. Go and seek them out. Destroy them. This evil should not exist within the realm of the Ocean Lord. Take this bag. Fill it with their rotting flesh. combine it and return it to me. May Prexus guide you.");
	}
	if ($text=~/convert fishermen in Qeynos/i) {
		quest::emote("So you wish to journey to Qeynos? So be it. Go to Qeynos and find me a willing convert. Ask them if they wish the blessing of Prexus. If so, they should snap their pole in two and you will return it to me. Do this and be rewarded.");
	}
}
sub EVENT_ITEM {
	#:: Turn in for 13922 Snapped Pole
	if (plugin::check_handin(\%itemcount, 13922 => 1)) {
		quest::say("Good work, young priest. Soon you shall carry the word of the Ocean Lord to distant lands. For now, continue your training. As for your reward, I have this which has been sitting in our vault. I hope it can be of use to a young priest such as yourself.");
		#:: Randomly choose some rawhide armor (raw-hide sleeves, raw-hide gloves, raw-hide leggings) or a backpack
		quest::summonitem(quest::ChooseRandom(2144, 2146, 2147, 17005));
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(79,10); 		#:: + Deepwater Knights
		quest::faction(145,10); 	#:: + High Council of Erudin
		quest::faction(143,-15); 	#:: - Heretics
		quest::givecash(0,5,14,0);	#:: Give a small amount of cash copper - plat
	}
	#:: Turn in for 13880 Bag of Zombie Flesh
	if (plugin::check_handin(\%itemcount, 13880 => 1)) {
		quest::say("Peeuww!! That most certainly is zombie flesh!! Here is your reward. You have done a fine service in the name of Prexus. Soon you shall advance and we may tell you of greater dangers lurking in the depths.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(79,10); 		#:: + Deepwater Knights
		quest::faction(145,10); 	#:: + High Council of Erudin
		quest::faction(143,-15); 	#:: - Heretics
		quest::givecash(0,4,12,0);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
