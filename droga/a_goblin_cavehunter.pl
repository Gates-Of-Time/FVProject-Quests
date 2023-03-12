sub EVENT_COMBAT {
	#:: Match if combat state is 1 - entered combat
	if ($combat_state == 1) {
		#:: Create a scalar variable to store a random number 1 - 100
		my $Random = int(rand(100)) + 1;
		if ($Random <= 20) {
			quest::say("Your kind is not welcome here! Prepare to die!");
		}
		elsif ($Random <= 40) {
			quest::say("Your dead corpse will soon line my pockets with gold!");
		}
		elsif ($Random <= 60) {
			quest::say("How dare you enter our realm!");
		}
		elsif ($Random <= 80) {
			quest::say("I shall bathe in the blood of you and your fellows!");
		}
		else {
			quest::say("Halt! who enters here?");
		}
	}
}
