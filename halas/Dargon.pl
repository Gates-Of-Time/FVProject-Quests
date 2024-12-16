sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, $name.  Can I interest you in any components to help you in your research?");
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 14331 - Ro's Breath
		if(plugin::takeItems(14331 => 1)){
			quest::say("So, I've been discovered! You must know Camin - he is one of the only people who could have recognized my work. I have worked very hard to mask my presence here.");
			#:: Spawn one and only one Halas >> Arantir_Karondor (29089), without grid or guild war, at the current location
			quest::unique_spawn(29089,0,0,$x,$y,$z,$h);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
		#:: Match a 14335 - Arantir's Ring
		if(plugin::takeItems(14335 => 1)){
			#:: Spawn one and only one Halas >> Arantir_Karondor (29089), without grid or guild war, at the current location
			quest::unique_spawn(29089,0,0,$x,$y,$z,$h);
			#:: Create a timer 'sendsignala' that triggers every 3 seconds
			quest::settimer("sendsignala",3);
		}
		#:: Match a 18168 - Note to Arantir
		if ((plugin::takeItemsn(18168 => 1)) {
			#:: Spawn one and only one Halas >> Arantir_Karondor (29089), without grid or guild war, at the current location
			quest::unique_spawn(29089,0,0,$x,$y,$z,$h);
			#:: Create a timer 'sendsignalb' that triggers every 3 seconds
			quest::settimer("sendsignalb",3);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	if ($timer eq "sendsignala") {
		#:: Send a signal '101' to Halas >> Arantir_Karondor (29089) with no delay
		quest::signalwith(29089,101,0); #signal arantir to set wizepicA = 1
		#:: Stop the timer 'sendsignala' from triggering
		quest::stoptimer("sendsignala");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	if ($timer eq "sendsignalb") {
		#:: Send a signal '102' to Halas >> Arantir_Karondor (29089) with no delay
		quest::signalwith(29089,102,0); #signal arantir to set wizepicB = 1
		#:: Stop the timer 'sendsignalb' from triggering
		quest::stoptimer("sendsignalb");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}