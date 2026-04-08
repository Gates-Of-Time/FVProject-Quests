my $count = 0;

sub EVENT_SPAWN {
	#:: Create a timer 'night' that triggers every 1 seconds (1 sec)
	quest::settimer("night",1);

	if ($zonetime < 800 || $zonetime > 1699) {
		#:: Send a signal "1" to Icewell Keep >> #Dain_Frostreaver_IV (129003) with no delay
		quest::signalwith(129003,1,0);
		#:: Send a signal "1" to Icewell Keep >> Seneschal_Aldikar (129000) with no delay
		quest::signalwith(129000,1,0);
		#:: Send a signal "1" to Icewell Keep >> Chamberlain_Krystorf (129028) with no delay
		quest::signalwith(129028,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Amberfeld (129035) with no delay
		quest::signalwith(129035,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Amberfeld (129073) with no delay
		quest::signalwith(129073,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Coldember (129037) with no delay
		quest::signalwith(129037,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Coldember (129075) with no delay
		quest::signalwith(129075,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Darakor (129043) with no delay
		quest::signalwith(129043,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Darkfrost (129041) with no delay
		quest::signalwith(129041,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Darkfrost (129078) with no delay
		quest::signalwith(129078,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Deynekn (129036) with no delay
		quest::signalwith(129036,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Deynekn (129074) with no delay
		quest::signalwith(129074,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Dirkins (129040) with no delay
		quest::signalwith(129040,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Dirkins (129077) with no delay
		quest::signalwith(129077,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Glacierbane (129039) with no delay
		quest::signalwith(129039,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Glacierbane (129076) with no delay
		quest::signalwith(129076,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Icelok (129038) with no delay
		quest::signalwith(129038,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Icepike (129034) with no delay
		quest::signalwith(129034,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Icepike (129072) with no delay
		quest::signalwith(129072,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Juliah_Lockheart (129045) with no delay
		quest::signalwith(129045,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Thubins (129044) with no delay
		quest::signalwith(129044,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Thubins (129080) with no delay
		quest::signalwith(129080,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Wintershade (129042) with no delay
		quest::signalwith(129042,1,0);
		#:: Send a signal "1" to Icewell Keep >> Councilor_Wintershade (129079) with no delay
		quest::signalwith(129079,1,0);
	}
}

sub EVENT_TIMER {
	if ($timer eq "night") {
		$count++;

		if (($count == 1) && ($zonetime > 799 && $zonetime < 1700)) {
			#:: Spawn a Icewell Keep >> #daytrigger (129098), without grid or guild war, at the current location
			quest::spawn2(129098,0,0,$x,$y,$z,0);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
		elsif ($count == 2) {
			$count = 0;
			#:: Create a timer 'night' that triggers every 2 seconds (2 sec)
			quest::settimer("night",2);
		}
	}
}