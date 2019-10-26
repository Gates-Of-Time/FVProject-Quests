sub EVENT_SPAWN {
	#:: Set the timer "goog" to trigger every 150 seconds
	quest::settimer("goog", 150);
}

sub EVENT_TIMER {
	#:: Catch the "goog" timer
	if ($timer eq "goog") {
	quest::say(quest::ChooseRandom("unngh!!.. Biggle and boo.. Goggle froo..","ahhhh!!.. Tiggle bumble coo.. Bog n' Goo.."));
	#:: Stop the timer "goog"
	quest::stoptimer("goog");
	#:: Set the timer "goog" to trigger every 150 seconds
	quest::settimer("goog", 150);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Aaaarghhh!!.. Buggl n gump.. Figgle and fump..");
	}
	elsif($text=~/ariska zimel/i) {
		quest::emote("stares deeply into your eyes.. Very eerie!!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 12196 Bunker Cell #1, 16581 Bog Juice, 13498 Edible goo
	if (plugin::takeItems(12196 => 1, 16581 => 1, 13498 => 1)) {
		quest::say("Bog n Goo.. Blanket too!!");
		quest::say("Bog n Goo.. Blanket too!!");
		quest::say("Hide, hide, safe, cee.. lerk has the clue.. Must travel.. Travel.. Travel.. Tunaria's corridor.");
		#:: Ding!
		quest::ding();
		#:: Give item 12143 - H.K. 102
		quest::summonitem(12143);
		}
	#:: Return unused items
	plugin::returnUnusedItems();
}
