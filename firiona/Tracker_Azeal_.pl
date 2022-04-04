sub EVENT_SPAWN {
 quest::say("I'm going to start my patrol. I'll report back by morning.");
 quest::settimer("Patrol",10);
}

sub EVENT_ITEM {
	#:: Match four 12691 - Coin
	if (plugin::takeItems(12691 => 1)) {
    quest::emote("begins to pull his face off.. it is a disguise!!");
    quest::say("Aha!! You have made it!! I cannot see well in this disguise, but I thought I smelled you. I have [news of the Charasis tome].");
		#:: Ding!
		quest::ding();
    #:: Handle spawn triggers
    my $x = $npc->GetX();
    my $y = $npc->GetY();
    my $z = $npc->GetZ();
    my $h = $npc->GetHeading();
    quest::spawn2(84319,0,0,$x,$y,$z,$h);
    quest::spawn2(84311,0,0,-1822,617,142.5,206);
    quest::depop();
  }
  
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
  if ($timer eq "Patrol") {
    quest::start(11);
    quest::stoptimer("Patrol");
    quest::settimer("ZoneTime",60);
  }
  if (($timer eq "ZoneTime") && ($zonehour == 6)) {
    quest::spawn2(84277,0,0,2268,-2828,-74.8,475);
    quest::stoptimer("ZoneTime");
    quest::depop();
  }
}
