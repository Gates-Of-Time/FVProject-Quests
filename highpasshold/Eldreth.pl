sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Go away! I'm busy! I don't have time for scoundrels like you! Leave me alone or I shall, um..turn you into, er, a fish or something! That is what us powerful wizards do to those who annoy us! Yes, that is it. A fish! Did that sound scary enough?.");
	}
	elsif($text=~/that was scary/i) {
		quest::say("Ha! I knew it. I could see you trembling! Everyone fears an angry wizard and nobody wants to be a fish. I know I detest fish, it is always fish fish fish around here. Fish cakes, fish stew, fish wine, I am sick of fish. But alas, while I am a powerful wizard, I am also a poor one. Oh well, good things come to those who wait. So, why are you here, $race.");
	}
	elsif($text=~/stanos sent me/i) {
		quest::say("Stanos? Stanos Herkanor? I thought he was long dead. He nearly got me killed, in any case. What does the old fool want of me now?");
	}
	elsif($text=~/translate/i) {
		quest::say("Ah, codes are my specialty! It's what I did for the Circle before Hanns took over. But the Fox is wrong. I owe him nothing! As a fact, he owes me! He wants this translated - he will have to pay!");
	}
	elsif($text=~/i will pay you/i) {
		quest::say("Aye, pay, and pay you must. I need 100 platinum pieces to begin my work. This tower is old and drafty and it will take that much to make it bearable. And while you're at it, I need something else. I am very busy here and have no time to shop, so bring me back a couple bottles of milk along with your very large bag of platinum, and I will translate anything you wish at that time.");
	}
}
sub EVENT_ITEM {
	#:: Match a 13087 - Bottle of Milk and a 28012 - Combined Parchment
	if(plugin::takeItemsCoin(100, 0, 0, 0, 13087 => 1, 13087 => 1, 28012 => 1)) {
		quest::say("Hmm, interesting. This document is not only encoded, but written in a very obscure language. From what I can gather, it's a variant of elder Teir'Dal, but not one I've encountered. I can not fully translate this, but I know one who can. Find Yendar and give him this.");
		#:: Give item 28053 - Scribbled Parchment
		quest::summonitem(28053);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(240,20); 	#:: + Order of Three
		quest::faction(21,-10); 	#:: - Bloood Sabers
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(235,10); 	#:: + Opal Dark Briar
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	else {
		quest::emote("will not accept this item.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
