sub EVENT_COMBAT {
     my $random = int(rand(100));
	 #:: Match combat_state 1 (true) for entered combat
     if ($combat_state == 1){ 
		 if($random_result<30){
			# result less than 30
			quest::say("Death!!  Death to all who oppose the Crushbone orcs!!"); #:: 
			}elsif(($random_result>=30) && ($random_result<65)){
			# result between 30 and 65
			quest::say("Hail, Emperor Crush!!");
		}else{
			# result >65
			quest::say("Fall before the might of Clan Crushbone!!");
     }
	}
}
# Converted to Perl by SS 
