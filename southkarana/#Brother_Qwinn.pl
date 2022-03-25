sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("In the name of the [Brotherhood of the Lost Circle], I greet you.");
	}
	elsif ($text=~/brotherhood of the lost circle/i) {
		quest::say("The [monks of the Whistling Fist] are called the Lost Circle by others. We are an ancient league of monks, long forgotten and nearly extinct. Within this realm, there are only two. [Brother Zephyl] and myself. We seek the items stolen from us. I seek the [Code of Zan Fi].");
	}
	elsif ($text=~/monks of the whistling fist/i) {
		quest::say("The monks of the Whistling fist were forged from the vision of the great master, Zan Fi. When the Combine Empire reigned supreme, a single bard grew to learn the ways of the monk. This bard was Zan Fi. The brotherhood was all but destroyed in the times that followed. Now only a few remain to carry on Zan Fi's legacy.");
	}
	elsif ($text=~/code of zan fi/i) {
		quest::say("The tome called the Code of the Whistling Fist has been stolen from me. It contains many secrets pertaining to our brotherhood. Thankfully, it is magically locked and only a Zan Fi master could unlock it. I require a monk to retrieve it. Would you be an [interested monk]?");
	}
	elsif ($text=~/interested monk/i) {
		quest::say("Then venture into the depths beyond the great Solusek Mining Company. There, living among the kobolds, will be Targin the Rock. Get the book from him, then return here and wait for my reappearance. When we meet again, you shall hand me the book and a purple headband earned from the Silent Fist clan. Do so and you shall be closer to joining the brotherhood.");
	}
	elsif ($text=~/brother zephyl/i) {
		quest::say("Brother Zephyl is searching for one who can return the [idol of Zan Fi]. I believe he is somewhere in the vicinity of the Rathe Mountains.");
	}
	elsif ($text=~/idol of zan fi/i) {
		quest::say("The idol of Zan Fi is a totem that is sacred to our brotherhood. I cannot share its secrets, but I can tell you that [Brother Zephyl] will offer to you a reward for its return..");
	}
	elsif ($text=~/return the headband/i) {
		quest::say("Then you will return that which was earned or the robe.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12316 - Code of Zan Fi, 10114 - Purple Headband
	if (plugin::takeItems(12316 => 1, 10114 => 1)) {
		quest::say("We thank you for the return of the Code of the Whistling Fist. Take this sewing needle. You shall find it useful should you aid [Brother Zephyl] in his quest. His item, the needle, a swatch of shadow silk and a scroll containing Jonathan's Whistling Warsong. Into a sewing kit they will be going. And into the brotherhood will you. I hope you do not wish me to [return the headband]..");
		#:: Give a 12314 - Needle of the Void
		quest::summonitem(12314);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(2000);
	}
	#:: Match a 12314 - Needle of the Void
	elsif (plugin::takeItems(12314 => 1)) {
		#:: Give a 10114 - Purple Headband
		quest::summonitem(10114);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 12256 - Robe of the Lost Circle
	elsif (plugin::takeItems(12256 => 1)) {
		#:: Give a 10114 - Purple Headband
		quest::summonitem(10114);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 12316 - Code of Zan Fi
	elsif (plugin::takeItems(12316 => 1)) {
		quest::say("We had an agreement. The proof of a skilled monk, the purple headband, and the Code of the Whistling Fist.");
		#:: Give a 12316 - Code of Zan Fi
		quest::summonitem(12316);
	}
	#:: Match a 10114 - Purple Headband
	elsif (plugin::takeItems(10114 => 1)) {
		quest::say("We had an agreement. The proof of a skilled monk, the purple headband, and the Code of the Whistling Fist.");
		#:: Give a 10114 - Purple Headband
		quest::summonitem(10114);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
