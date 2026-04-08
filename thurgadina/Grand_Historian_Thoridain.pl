my $counter;
my $count = 0;

sub EVENT_SPAWN {
  $counter = 0;
  #:: Create a timer 'lecture' that triggers every 110 seconds (1 min 50 sec)
  quest::settimer("lecture",110);
}

sub EVENT_SAY {
  if ($text =~ /hail/i) {
    #:: Send a signal "99" to Thurgadin >> Loremaster_Dorinan (115015) with no delay
    quest::signalwith(115015,99,0);
  }
  elsif ($text =~ /Oh Brell, Thank you for protecting me and seeing me through my trials. Forgive me for the things I think and say and do that displease you. Please reveal to me your will and bless me with the patience and obedience to do that which you desire. Amen./i) {
    $counter += 1;
    if ($counter == 1) {
      #:: Send a signal "33" to Thurgadin >> You (115230) with no delay
      quest::signalwith(115230,33,0);
    }
    elsif ($counter == 2) {
      #:: Send a signal "66" to Thurgadin >> You (115230) with no delay
      quest::signalwith(115230,66,0);
    }
    elsif ($counter == 3) {
      #:: Send a signal "99" to Thurgadin >> You (115230) with no delay
      quest::signalwith(115230,99,0);
      #:: Give a 1855 - Etched Rune pattern.
      quest::summonitem(1855);
      $counter = 0;
    }
  }
}

sub EVENT_TIMER {
  if ($timer eq "lecture") {
    $count++;
    if ($count == 1) {
      quest::say("We are taught from day one that the truth lies underfoot. It is simple common sense then, that the taller a being is, the farther his mind and heart are from the truth. Always be wary of those larger in stature than us.");
      #:: Send a signal to Thurgadin >> Bintain (115028) with a 8000ms delay (8 sec)
      quest::signal(115028,8000);
      #:: Send a signal to Thurgadin >> Bintain (115197) with a 8000ms delay (8 sec)
      quest::signal(115197,8000);
      #:: Send a signal to Thurgadin >> Arikain (115025) with a 16000ms delay (16 sec)
      quest::signal(115025,16000);
      #:: Send a signal to Thurgadin >> Arikain (115194) with a 16000ms delay (16 sec)
      quest::signal(115194,16000);
    }
    elsif ($count == 2) {
      quest::say("If we Coldain just work together, obeying Brell's teachings, nothing can stop us from overcoming our enemies. Even the Kromrif will fall before us if we are undivided. It is only when we stray from our fundamental knowledge that we are vulnerable.");
    }
    elsif ($count == 3) {
      quest::say("Allow me to share a short story from my youth. It begins when I was just tail high to a snow bunny. Instead of tending to my studies, I snuck out and participated in what was then our 300th annual snowball fighting tournament. . .");
      #:: Create a timer 'lecture' that triggers every 70 seconds (1 min 10 sec)
      quest::settimer("lecture",70);
    }
    elsif ($count == 4) {
      #:: Create a timer 'lecture' that triggers every 25 seconds (25 sec)
      quest::settimer("lecture",25);
      #:: Send a signal "1" to Thurgadin >> Doriggan (115022) with no delay
      quest::signalwith(115022,1);
      #:: Send a signal "1" to Thurgadin >> Doriggan (115191) with no delay
      quest::signalwith(115191,1);
      quest::signal(115021,8000);
      #:: Send a signal "2" to Thurgadin >> Doriggan (115022) with a 8100 second delay
      quest::signalwith(115022,2,8100);
      #:: Send a signal "2" to Thurgadin >> Doriggan (115191) with a 8100 second delay
      quest::signalwith(115191,2,8100);
    }
    elsif ($count == 5) {
      quest::say("Young Doriggan, perhaps you will find it easier to focus on my words from a standing position. That corner will do fine.");
      #:: Send a signal "3" to Thurgadin >> Doriggan (115022) with no delay
      quest::signalwith(115022,3);
      #:: Send a signal "3" to Thurgadin >> Doriggan (115191) with no delay
      quest::signalwith(115191,3);
      #:: Create a timer 'lecture' that triggers every 110 seconds (1 min 50 sec)
      quest::settimer("lecture",110);
    }
    elsif ($count == 6) {
      quest::say("I have an important announcement to make today. The Dain has heard rumor of a faction of our brethren who openly oppose the crown. If you come forth with any information leading to the discovery of any such traitorous vermin you will be richly rewarded. Their fate most certainly lies at the bottom of the well.");
      $count = 0;
    }
  }
}
		
sub EVENT_ITEM {
  #:: Match a 1418 - Thoridain's Napkin and a 1428 - Snow Griffin Souffle.
  if (plugin::takeItems(1418 => 1, 1428 => 1)) {
    quest::say("My compliments, $name, what a wonderful dish! Please accept my personal Seal as a token of my appreciation. May it give you power over your adversaries.");
    #:: Give a 1422 - Seal of Thoridain.
    quest::summonitem(1422);
    #:: Grant a large amount of experience.
    quest::exp(200000);
    #:: Set factions
    quest::faction(406,10);  #:: + Coldain
    quest::faction(405,10);  #:: + Dain Frostreaver IV
    quest::faction(419,-30); #:: - Kromrif
    quest::faction(448,-30); #:: - Kromzek
  }
  #:: Match a 1428 - Snow Griffin Souffle.
  elsif (plugin::takeItems(1428 => 1)) {
    quest::say("My compliments, $name, what a wonderful dish!");
    #:: Grant a small amount of experience.
    quest::exp(5000);
    #:: Set factions
    quest::faction(406,10);  #:: + Coldain
    quest::faction(405,10);  #:: + Dain Frostreaver IV
    quest::faction(419,-30); #:: - Kromrif
    quest::faction(448,-30); #:: - Kromzek
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}