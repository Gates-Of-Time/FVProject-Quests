sub EVENT_AGGRO {
    if (!defined $aggro) {
        my $x = $npc->GetX();
        my $y = $npc->GetY();
        my $z = $npc->GetZ();
        my $h = $npc->GetHeading();

        #:: Spawn a Eastern Wastes >> Kromrif_Guard (116552), without grid or guild war, at the current location.
        quest::spawn2(116552, 0, 0, ($x + 15), ($y + 5), $z, $h);
        quest::spawn2(116552, 0, 0, ($x - 15), ($y + 5), $z, $h);
        quest::spawn2(116552, 0, 0, $x, ($y - 15), $z, $h);
        $aggro = 1;
        #:: Create a timer '1' that triggers every 7200 seconds (2 hr 0 min 0 sec).
        quest::settimer(1, 7200);
    }

}

sub EVENT_TIMER {
    if ($timer == 1) {
        $aggro = undef;
        #:: Stop the timer '1'.
        quest::stoptimer(1);
    }
}

sub EVENT_DEATH {
    #:: Stop the timer '1'.
    quest::stoptimer(1);
}