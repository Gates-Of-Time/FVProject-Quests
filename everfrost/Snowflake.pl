sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Grrrrrr!!");
		}
	if ($text=~/megan/i) {
		quest::say("Grrroarrr !!");
		    if ($faction <= 4 && GetX() == -1161 and GetY() == 2022) {
			quest::say("Ruff... ruff... woof!");
			quest::start(195); # goto Megan O'reilly
			}
			if ($faction == 5) {
			quest::Emote("apparently responds only to one who follows the Wolves of the North.");
			}
			if ($faction >= 6) {
			quest::Emote("growls at you. It can sense you are an enemy of the Wolves of the North.");
			}
		}
	}
	sub EVENT_ITEM {
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 
