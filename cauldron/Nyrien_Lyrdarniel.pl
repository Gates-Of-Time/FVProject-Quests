sub EVENT_SAY {
	# If faction is indifferent or better
	if ($faction > 4) {
     		if ($text=~/hail/i) {
			quest::say("Greetings, my friend! You may rest here if you like. There are many dangers in this land. May Tunare watch over you when you depart our camp.");
			quest::signal(70005,5); # signal Elmion Hendrys
		}
		if ($text=~/Healed/i) {
			quest::say("I see. Then sit and rest a while. I must conserve my strength for our own interests. When you are ready to leave, go and ask Sigan to [escort you to the pass]. There, you can leave this dangerous land.");		
		}
		if ($text=~/faldor hendrys/i) {
			quest::say("Ha!! You seek my foul brother, Faldor Hendrys?!! He is my half brother and has left to live with the vile half of his ancestry in Qeynos. No doubt he has decided to lend his talents to the local thieves' guild. Good luck finding him.");
		}
	} else {
		quest::say("You have some nerve to approach a loyal member of the Paladins of Tunare! Run, while you can!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS
