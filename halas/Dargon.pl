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
		elsif(plugin::takeItems(14335 => 1)){
			#:: Spawn one and only one Halas >> Arantir_Karondor (29089), without grid or guild war, at the current location
			quest::unique_spawn(29089,0,0,$x,$y,$z,$h);
			#:: Give a 14335 - Arantir's Ring
			quest::summonitem(14335);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
		#:: Match a 18168 - Note to Arantir
		elsif(plugin::takeItemsn(18168 => 1)) {
			#:: Spawn one and only one Halas >> Arantir_Karondor (29089), without grid or guild war, at the current location
			quest::unique_spawn(29089,0,0,$x,$y,$z,$h);
			quest::delete_data("wizepicA");
			quest::set_data("wizepicB",1);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}