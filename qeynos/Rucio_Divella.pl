sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello fellow citizen. Welcome to the Office of the People what can I do for you?");
	}	
	elsif ($text=~/donate/i) {
		quest::say("I would love to, but I am afraid I haven't the money to spare. You should ask [Hansl Bigroon]. He is loaded.");
	}
	elsif ($text=~/Hansl Bigroon/i) {
		quest::say("Hansl Bigroon is the office manager and a great engineer. He has designed most of the structures within Qeynos.");
	}
}
