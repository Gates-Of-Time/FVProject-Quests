sub EVENT_SPAWN {
	#:: Get current location
	$x = $npc->GetX();
	$y = $npc->GetY();
	$z = $npc->GetZ();
	#:: Create a proximity, 100 units across, 100 units tall, and do not enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Check for 18713 - Tattered Note (Qeynos Druid Guild Summons)
	if (plugin::check_hasitem($client, 18713)) { 
		$client->Message(15,"As you orient yourself amongst the peacefulness of the Surefall Glade, a melodic, peaceful voice seems to float on the wind. 'I am Te'Anara, Master of the Woods. Read the note in your inventory and when you wish to begin your training, hand it to me. We must preserve the heart of the Jaggedpine lest all of Norrath will perish!'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome, friend! I hope your stay in Surefall Glade will ease your mind and soothe your soul. While you are here, we ask you to abide by the [" . quest::saylink("laws of the Jaggedpine") . "].");
	}
	elsif ($text=~/laws of the jaggedpine/i) {
		quest::say("We ask that you do not start campfires on our land. Do not litter our land with any items. Do not chop down our pines or tread upon any foliage. Please do not take more than a bellyful of fish. Do not harm any other wildlife and stay clear of [" . quest::saylink("the great bear") . "]!");
	}
	elsif ($text=~/the great bear/i) {
		quest::say("The great bear I speak of is Mammoth. He has lived among us for over a century. Tunare has truly blessed us with his presence. As long as Mammoth lives, so too does Surefall Glade. We are currently worried. Corun has reported that there is something [" . quest::saylink("wrong with Mammoth") . "].");
	}
	elsif ($text=~/wrong with mammoth/i) {
		quest::say("Mammoth is not eating. We believe something is lodged in his throat. We require a young druid to [" . quest::saylink("fetch a special potion") . "]");
	}
	elsif ($text=~/fetch a special potion/i) {
		quest::say("Go to the gnome city of Ak'Anon on the continent of Faydwer. With their great zoo, you will find a gnome named Kimble Nogflop. Give him this flask of nitrates and he shall hand you a special potion which will force Mammoth to cough up whatever may be stuck inside his throat. Be sure to show me what you find inside his throat upon your return.");
		#:: Give item 13945 - Flask of Nitrates
		quest::summonitem(13945);
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18713 -   Tattered Note (Qeynos Druid Guild Summons)
	if (plugin::takeItems(18713 => 1)) {
		quest::say("Well met, friend of the forest. You will find power and enlightenment amidst these woods. Here, wear this tunic and represent the Jaggedpine with pride. Gerael Woodone will help train you and teach you the duties of Jaggedpine Treefolk. The forests, being the soul and heart of Norrath, depend on you and your actions from this day forth.");
		#:: Give item 13510 - Dried Grass Tunic*
		quest::summonitem(13510);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(159, 100); 	#:: + Jaggedpine Treefolk
		quest::faction(265, 25); 	#:: + Protectors of Pine
		quest::faction(267, 15); 	#:: + QRG Protected Animals
		quest::faction(347, -25); 	#:: - Unkempt Druids
		quest::faction(135, 15); 	#:: + Guards of Qeynos
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Turn in for 18809 - Bayle List II
	elsif (plugin::takeItems(18809 => 1)) {
		quest::say("Oh my, this must belong to Antonius Bayle! I shall see that he receives it. You have done a great service to Qeynos and Surefall Glade. I reward you with this. May it be of good use in your future deeds.");
		#:: Give item 15222 - Spell: Invigor
		quest::summonitem(15222);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(159, 10); 	#:: + Jaggedpine Treefolk
		quest::faction(265, 10); 	#:: + Protectors of Pine
		quest::faction(267, 10); 	#:: + QRG Protected Animals
		quest::faction(347, -15); 	#:: - Unkempt Druids
		quest::faction(135, 10); 	#:: + Guards of Qeynos
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Turn in for 18807 - Sealed Letter (Note to Jaggedpine)
	elsif (plugin::takeItems(18807 => 1)) {
		quest::say("Aye! This is good news. We shall try to supply Qeynos with a limited number of acres to begin their lumberyard. Here, my good messenger. A token to share in the good news.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(159, 10); 	#:: + Jaggedpine Treefolk
		quest::faction(265, 10); 	#:: + Protectors of Pine
		quest::faction(267, 10); 	#:: + QRG Protected Animals
		quest::faction(347, -15); 	#:: - Unkempt Druids
		quest::faction(135, 10); 	#:: + Guards of Qeynos
		#:: Give a small amount of cash copper - plat
		quest::givecash(0,2,8,0);
		#:: Grant a moderate amount of experience
		quest::exp(1600);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
