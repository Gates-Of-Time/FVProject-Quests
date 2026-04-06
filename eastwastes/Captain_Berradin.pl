sub EVENT_ITEM {
    #:: Match a 1459 - Tainted Avalanche Ale.
    if (plugin::takeItems(1459 => 1)) {
        quest::say("You gotta be kiddin me, Avalanche Ale? Haven't had a bottle a this stuff in ages. Brell bless you, $name!");
        quest::say("Glug, glug, glug...");
        #:: Create a timer '1' that triggers every 5 seconds (5 sec).
        quest::settimer(1, 5);
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}

sub EVENT_TIMER {
    if ($timer == 1) {
        #:: Stop the timer '1'
        quest::stoptimer(1);
        #:: Play animation 58 - /dance.
        quest::doanim(58);
        #:: Create a timer '2' that triggers every 5 seconds (5 sec).
        quest::settimer(2, 5);
    }
    elsif ($timer == 2) {
        #:: Stop the timer '2'
        quest::stoptimer(2);
        #:: Play animation 58 - /dance.
        quest::doanim(58);
        #:: Create a timer '3' that triggers every 5 seconds (5 sec).
        quest::settimer(3, 5);
    }
    elsif ($timer == 3) {
        #:: Stop the timer '3'
        quest::stoptimer(3);
        #:: Play animation 21 - Free Falling.
        quest::doanim(21);
        #:: Create a timer '4' that triggers every 5 seconds (5 sec).
        quest::settimer(4, 5);
    }
    elsif ($timer == 4) {
        my $x = $npc->GetX();
        my $y = $npc->GetY();
        my $z = $npc->GetZ();
        my $h = $npc->GetHeading();
        #:: Spawn a Eastern Wastes >> #Captain_Berradin (116573), without grid or guild war, at the current location.
        quest::spawn2(116573, 0, 0, $x, $y, $z, $h);
        #:: Depop with spawn timer active
        quest::depop_withtimer();
    }
}