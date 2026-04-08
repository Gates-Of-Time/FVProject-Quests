my $count = 0;

sub EVENT_SPAWN {
	#:: Create a timer 'day' that triggers every 1 seconds (1 sec)
	quest::settimer("day",1);
	#:: Send a signal "2" to Icewell Keep >> #Dain_Frostreaver_IV (129003) with no delay
	quest::signalwith(129003,2,0);
	#:: Send a signal "2" to Icewell Keep >> Seneschal_Aldikar (129000) with no delay
	quest::signalwith(129000,2,0);
	#:: Send a signal "2" to Icewell Keep >> Chamberlain_Krystorf (129028) with no delay
	quest::signalwith(129028,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Amberfeld (129035) with no delay
	quest::signalwith(129035,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Amberfeld (129073) with no delay
	quest::signalwith(129073,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Coldember (129037) with no delay
	quest::signalwith(129037,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Coldember (129075) with no delay
	quest::signalwith(129075,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Darakor (129043) with no delay
	quest::signalwith(129043,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Darkfrost (129041) with no delay
	quest::signalwith(129041,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Darkfrost (129078) with no delay
	quest::signalwith(129078,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Deynekn (129036) with no delay
	quest::signalwith(129036,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Deynekn (129074) with no delay
	quest::signalwith(129074,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Dirkins (129040) with no delay
	quest::signalwith(129040,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Dirkins (129077) with no delay
	quest::signalwith(129077,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Glacierbane (129039) with no delay
	quest::signalwith(129039,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Glacierbane (129076) with no delay
	quest::signalwith(129076,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Icelok (129038) with no delay
	quest::signalwith(129038,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Icepike (129034) with no delay
	quest::signalwith(129034,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Icepike (129072) with no delay
	quest::signalwith(129072,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Juliah_Lockheart (129045) with no delay
	quest::signalwith(129045,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Thubins (129044) with no delay
	quest::signalwith(129044,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Thubins (129080) with no delay
	quest::signalwith(129080,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Wintershade (129042) with no delay
	quest::signalwith(129042,2,0);
	#:: Send a signal "2" to Icewell Keep >> Councilor_Wintershade (129079) with no delay
	quest::signalwith(129079,2,0);
}

sub EVENT_TIMER {
	if ($timer eq "day") {
		$count++;

		if (($count == 1) && ($zonetime < 800 || $zonetime > 1699)) {
			#:: Spawn a Icewell Keep >> #nighttrigger (129097), without grid or guild war, at the current location
			quest::spawn2(129097,0,0,$x,$y,$z,0);
			#:: Depop without spawn timer
			quest::depop();
		}
		elsif ($count == 2) {
			$count = 0;
			#:: Create a timer 'day' that triggers every 2 seconds (2 sec)
			quest::settimer("day",2);
		}
	}
}

