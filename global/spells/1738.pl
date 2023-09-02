#:: Tishan's Relocation 

sub EVENT_CAST_BEGIN {
	if (quest::is_current_expansion_the_ruins_of_kunark()) {
		if($zoneid != 105 # charasis 
			&& $zoneid != 103 # chardok 
			&& $zoneid != 90 # cityofmist 
			&& $zoneid != 104 # dalnir 
			&& $zoneid != 81 # droga 
			&& $zoneid != 88 # kaseora 
			&& $zoneid != 102 # karnor 
			&& $zoneid != 97 # kurn 
			&& $zoneid != 107 # nurga 
			&& $zoneid != 89 # sebilis 
			) {
				$client->InterruptSpell();
				$client->Message(0,"Your portal is too unstable, and collapses.");
		}
    }
}
