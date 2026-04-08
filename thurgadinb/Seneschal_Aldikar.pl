our $dainring;

sub EVENT_SIGNAL {
  #:: Match if signal from thurgadinb/129097.pl is "1"
  if ($signal == 1) {
    quest::moveto(5,780,38,130,1);
  }

  #:: Match if signal from thurgadinb/129098.pl is "2"
  elsif ($signal == 2) {
    quest::moveto(-3,693,69,126,1);
  }
}

sub EVENT_SPAWN {
  #:: Create a timer 'thurgdaynight' that triggers every 5 seconds (5 sec)
  quest::settimer("thurgdaynight",5);
  $dainring = undef;
}

sub EVENT_SAY {
  if ($text =~ /I will accept this task/i) {
    quest::say("In this box, place the accursed dirk of the fallen Rodrick. With it combine the heads of every traitor you dispose of. When this is done give the box and the velium insignia ring to the Dain directly. On behalf of the crown and all good Coldain, I thank you ... May Brell be with you.");
    #:: Give a 17055 - Traitor's Bane Box
    quest::summonitem(17055);
    $dainring = undef;
    #:: Create a timer 'thurgdaynight' that triggers every 5 seconds (5 sec)
    quest::settimer("thurgdaynight",5);
  }
}

sub EVENT_ITEM {
  #:: Match a 30164 - Velium Coldain Insignia Ring
  if (plugin::takeItems(30164 => 1) && $x == -3 && $y == 693 && $z == 68.5) {
    quest::say("Well done %t, I have heard of your victory over the Ry'Gorr. If you are willing to assist the crown further please follow me.");
    #:: Give a 30164 - Velium Coldain Insignia Ring
    quest::summonitem(30164);
    #:: Stop the timer 'thurgdaynight'
    quest::stoptimer("thurgdaynight");
    #:: Create a timer '10' that triggers every 1 seconds (1 sec)
    quest::settimer(10,1);
  }

  #:: Match a 30164 - Velium Coldain Insignia Ring
  elsif (plugin::takeItems(30164 => 1) && $x == 3.25 && $y == 773.25 && $z == 35) {
    quest::say("I must speak to the Dain before I instruct you further. Please speak to me while the royal court is in session.");
    #:: Give a 30164 - Velium Coldain Insignia Ring
    quest::summonitem(30164);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

sub EVENT_TIMER {
  if ($timer eq "thurgdaynight") {
    return;
  }

  elsif ($timer == 10 && $x == 3.25 && $y == 773.25 && $z == 35) {
    #:: Stop the timer '10'
    quest::stoptimer(10);
    #:: Pause for 100 ms (0.1 sec)
    quest::pause(100);
    quest::say("Please, shut the door behind you. What I am about to share with you must not be overheard.");
    #:: Create a timer '11' that triggers every 10 seconds (10 sec)
    quest::settimer(11,10);
  }

  elsif ($timer == 11) {
    #:: Stop the timer '11'
    quest::stoptimer(11);
    quest::say("My army stands prepared to launch an assault on Kael itself, but one task must be completed before this can happen.");
    #:: Create a timer '12' that triggers every 10 seconds (10 sec)
    quest::settimer(12,10);
  }

  elsif ($timer == 12) {
    #:: Stop the timer '12'
    quest::stoptimer(12);
    quest::say("It seems Rodrick was not alone in his treachery. There is a faction of Coldain who believe that a treaty should be signed with the Kromrif, ending our hostilities with them. This, of course, is impossible. If there is one thing our history here has taught us it is that the Kromrif simply cannot be trusted.");
    #:: Create a timer '13' that triggers every 10 seconds (10 sec)
    quest::settimer(13,10);
  }

  elsif ($timer == 13) {
    #:: Stop the timer '13'
    quest::stoptimer(13);
    quest::say("These traitors are poisoning the minds of our citizens, promising great rewards to those who will betry the Dain. It will take the unbiased eye of an outlander to flush out the masterminds behind this plan. Once again we turn to you.");
    #:: Create a timer '14' that triggers every 10 seconds (10 sec)
    quest::settimer(14,10);
  }

  elsif ($timer == 14) {
    #:: Stop the timer '14'
    quest::stoptimer(14);
    quest::say("Will you accept this task outlander?");
    $dainring = 1;
  }
}