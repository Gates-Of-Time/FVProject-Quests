sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Hello, $name. I welcome you to the Temple of Divine Light. I am the resident healer. If you should ever require the power of Quellious to [" . quest::saylink("bind wounds") . "], [" . quest::saylink("cure disease") . "] or [" . quest::saylink("cure poison") . "], speak with me and I shall help you.");
	}
	if ($text=~/bind wounds/i) {
		quest::emote("I shall be pleased to help you with your wounds. The Temple of Divine Light requires a tribute of four gold before I may perform the service.");
	}
	if ($text=~/cure disease/i) {
		quest::emote("Your malady will be nothing more than a memory, but before that can be, we ask that a donation of two gold coins be offered.");
	}
	if ($text=~/cure poison/i) {
		quest::emote("You must pay the tribute of three gold before I cast the toxin from your body.");
	}
}
sub EVENT_ITEM {
	if($gold == 4) {
    quest::cast($spell_12); # Casts Healing
  }
  elsif ($gold == 3) {
    quest::cast($spell_203); # Casts Cure Poison
  }
   elsif ($gold == 2) {
    quest::cast($spell_213); # Casts Cure Disease
  }
  plugin::return_items(\%itemcount);
}
