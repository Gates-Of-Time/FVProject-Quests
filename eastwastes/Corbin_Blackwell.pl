sub EVENT_SPAWN {
    if (defined($ring_seven_start) && $ring_seven_start == 1) {
        #:: Create a timer '1' that triggers every 1 seconds (1 sec).
        quest::settimer(1, 1);
    }
    if (defined($final_path) && $final_path == 1) {
        #:: Create a timer '1' that triggers every 1 seconds (1 sec).
        quest::settimer(1, 1);
    }
    if (defined($turnin) && $turnin == 1) {
        #:: Create a timer '3' that triggers every 600 seconds (10 min 0 sec).
        quest::settimer(3, 600);
    }
}

sub EVENT_SAY {
    if ($text=~/hail/i && !defined($event_spawn) && !defined($ring_seven_start)) {
        quest::say("Hurry! There's not much time. Give me the key and show me proof that you are a friend sent to rescue me...");
    }
}

sub EVENT_TIMER {
    if ($timer == 1 && $x == -2012 && $y == 197 && !defined($event_spawn) && !defined($final_path)) {
        #:: Stop the timer '1'.
        quest::stoptimer(1);
        $event_spawn = 1;
        $ring_seven_start = undef;
        quest::say("Uh oh, looks like they were tipped off somehow... I hope you can handle them.");
        #:: Spawn a Eastern Wastes >> Corbin_Blackwell (116119), without grid or guild war, at the current location.
        quest::spawn2(116119, 0, 0, $x, $y, $z, $h);
        #:: Spawn a Eastern Wastes >> Corbin_Blackwell (116569), without grid or guild war, at the given location.
        quest::spawn2(116569, 0, 0, -2139, 168, 150, 57);
        #:: Depop with spawn timer active.
        quest::depop_withtimer();
    }
    elsif ($timer == 1 && $x == -3183 && $y == -586 && defined($final_path) && $final_path == 1) {
        #:: Stop the timer '1'.
        quest::stoptimer(1);
        $event_spawn = undef;
        $ring_seven_start = undef;
        $final_path = undef;
        $turnin = 1;
        #:: Spawn a Eastern Wastes >> Corbin_Blackwell (116119), without grid or guild war, at the current location.
        quest::spawn2(116119, 0, 0, $x, $y, $z, 9);
        quest::say("I have escaped! With the help of our friends here I was saved from certain death. We are in their debt.");
        #:: Send a signal "1" to Eastern Wastes >> Dobbin_Crossaxe (116118) with a 1000 second delay.
        quest::signalwith(116118, 1, 1000);
        #:: Depop with spawn timer active.
        quest::depop_withtimer();
    }
    elsif ($timer == 2) {
        $event_spawn = undef;
        #:: Stop the timer '2'.
        quest::stoptimer(2);
        $ring_seven_start = undef;
        #:: Depop with spawn timer active.
        quest::depop_withtimer();
    }
    elsif ($timer == 3) {
        $event_spawn = undef;
        $ring_seven_start = undef;
        $final_path = undef;
        $turnin = undef;
        #:: Stop the timer '3'.
        quest::stoptimer(3);
        #:: Send a signal "2" to Eastern Wastes >> Dobbin_Crossaxe (116118) with no delay.
        quest::signalwith(116118, 2, 0);
        #:: Depop with spawn timer active.
        quest::depop_withtimer();
    }
}

sub EVENT_ITEM {
    #:: Match a 1046 - Shackle key and a 30162 - Mithril Coldain Insignia Ring.
    if (!defined($ring_seven_start) && !defined($final_path) && plugin::takeItems(1046 => 1, 30162 => 1)) {
        quest::say("I thought I was a dwarfskin rug there for a minute! Thank Brell for your help stranger! Now cover me while I make good my escape. I am weakened and cannot endure much more.");
        #:: Give a 30162 - Mithril Coldain Insignia Ring.
        quest::summonitem(30162);
        $ring_seven_start = 1;
        $event_spawn = undef;
        #:: Spawn a Eastern Wastes >> Corbin_Blackwell (116119), without grid or guild war, at the current location.
        quest::spawn2(116119, 234, 0, $x, $y, $z, $h);
        #:: Depop with spawn timer active.
        quest::depop_withtimer();
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
    $event_spawn = undef;
    $final_path = 1;
    #:: Spawn a Eastern Wastes >> Corbin_Blackwell (116119), without grid or guild war, at the current location.
    quest::spawn2(116119, 235, 0, $x, $y, $z, $h);
    #:: Depop with spawn timer active.
    quest::depop_withtimer();
}

sub EVENT_DEATH {
    $event_spawn = undef;
    $ring_seven_start = undef;
    $final_path = undef;
    $turnin = undef;
}