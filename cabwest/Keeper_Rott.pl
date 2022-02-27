sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Animation 70 - Small Bow
		quest::doanim(70);
		quest::emote("bows before you. His eyes are kept wide by the pins which distort his eyelids.  'Greetings! You have stumbled upon the cave of the Keepers. We record the arcane secrets of the Brood of Kotiz. We have scribed many spells and make them available to all those who are deserving. Please, have a look.'");
	}
	elsif ($text=~/chosen occultist/i) {
		#:: Match if faction is Warmly or better
		if ($faction <= 2) {
			#:: Animation 36 - Kneel
			quest::doanim(36);
			quest::emote("kneels before you abjectly. 'Oh, great occultist! I am glad you have arrived, but I do not have the artifacts Kyvix seeks. You will have to seek out the sarnak revenants who still hold the precious stem and base. Get them and take them with your occultist skullcap back to Master Kyvix. Since you are headed in the general direction, I also have an [additional mission], if you do not mind.'");
		}
		else {
			quest::say("When you have shown more devotion to the Brood of Kotiz, we can discuss such things.");
		}
	}
	elsif ($text=~/additional mission/i) {
		#:: Match if faction is Warmly or better
		if ($faction <= 2) {
			quest::emote("grabs a fist full of scribbled notes and throws them into the air in a rage. 'All these notes are useless to me without the first four note pages! While I ventured through the fields of the drixies, I was assaulted by a band of gobs. They were shamans. I heard them calling spirits. They took the first two pages before I escaped. Then I lost the [second two pages] the next day!! Blast!!'");
		}
		else {
			quest::say("When you have shown more devotion to the Brood of Kotiz, we can discuss such things.");
		}
	}
	elsif ($text=~/second two pages/i) {
		#:: Match if faction is Warmly or better
		if ($faction <= 2) {
			quest::emote("begins to curse. Luckily, you do not understand the language, but you feel a bit of spittle strike your face. '...and then there I was, almost home and the legion expedition leader decided we should explore a bit more near the lake. Then I find myself up against the same type of gobs from the fields. I just ran for the exit an never looked back, but they still managed to swipe pages 3 and 4!!'");
		}
		else {
			quest::say("When you have shown more devotion to the Brood of Kotiz, we can discuss such things.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 12854 - Illegible Note, a 12855 - Illegible Note, a 12856 - Illegible Note, and a 12857 - Illegible Note
	if (plugin::takeItems(12854 => 1, 12855 => 1, 12856 => 1, 12857 => 1)) {
		quest::say("Oh, great necromancer, how can I repay you?!! I know. Here is a spell I recently researched. It should help you increase the strength of a summoned pet. Learn it well.");
		#:: Give a 16426 - Spell: Intensify Death
		quest::summonitem(16426);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 0);		#:: + Brood of Kotiz
		quest::faction(441, 0);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 12854 - Illegible Note
	elsif (plugin::takeItems(12854 => 1,)) {
		quest::say("I am expecting pages one through four. Do I have to go and find them myself?!");
		#:: Give a 12854 - Illegible Note
		quest::summonitem(12854);
	}
	#:: Match a 12855 - Illegible Note
	elsif (plugin::takeItems(12855 => 1)) {
		quest::say("I am expecting pages one through four. Do I have to go and find them myself?!");
		#:: Give a 12855 - Illegible Note
		quest::summonitem(12855);
	}
	#:: Match a 12856 - Illegible Note
	elsif (plugin::takeItems(12856 => 1)) {
		quest::say("I am expecting pages one through four. Do I have to go and find them myself?!");
		#:: Give a 12856 - Illegible Note
		quest::summonitem(12856);
	}
	#:: Match a 12857 - Illegible Note
	elsif (plugin::takeItems(12857 => 1)) {
		quest::say("I am expecting pages one through four. Do I have to go and find them myself?!");
		#:: Give a 12856 - Illegible Note
		quest::summonitem(12856);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
