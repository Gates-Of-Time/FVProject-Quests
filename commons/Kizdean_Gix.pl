#:: Part of Thex Mallet

sub EVENT_SPAWN {
	plugin::RandomRoam(500, 500);
}

sub EVENT_SAY {
	if ($text =~/hail/i) {
		quest::say("If you have business then out with it!! If not, then please be gone. I have little time to waste on chitchat!");
	}
	if ($text =~/Utalk Adarev Otcin/i) {
		quest::say("You speak the words of the Dead. You must be the assistance Loveal was to send. You must work quickly! Inside Befallen are the three pieces to the [" . quest::saylink("Thex Mallet") . "] which are to be returned to Loveal. Find Hubard L'rodd. He was my assistant. Give him this note and he should have information.");
		#:: Summon a 18891 - Tattered Cloth Note
		quest::summonitem(18891);
	}
	if ($text =~/Thex Mallet/i) {
		quest::say("The Thex Mallet is a very special weapon of elven creation. It is as ancient as Norrath itself. Queen Cristanos commands that we find it and return it to Loveal S'nez. That is all you need to know.");
	}
}
