$change_amount = 0;

sub EVENT_SPAWN {
	my $min = 1;
	my $range = 4;
	my $randomspawn = int(rand($range)) + $min;
	plugin::RandomRoam(250, 250);
	quest::settimer("move",$randomspawn);
}
	
sub EVENT_TIMER {
	if ($timer eq "move") {
		plugin::RandomRoam(250, 250);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello $name! Don't let my little friend fool you--he is quite powerful!");
	}
	if ($status => 80) {
		if ($text=~/train/i) {
			Train();
		}
		elsif ($text=~/faction/i) {
			quest::say("I can adjust your faction.  Hand me 1 copper to lose 500, 1 silver to lose 100, 1 gold to gain 100, and 1 platinum to gain 500--then speak the faction number.");
		}
		elsif ($text=~/\b376\b/) {	#:: Grobb Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(376, $change_amount);
			}
		}
		elsif ($text=~/\b375\b/) {	#:: Death Fist Orcs (good)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(375, $change_amount);
			}
		}
		elsif ($text=~/\b374\b/) {	#:: Oggok Resident
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(374, $change_amount);
			}
		}
		elsif ($text=~/\b373\b/) {	#:: Mucktail Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(373, $change_amount);
			}
		}
		elsif ($text=~/\b5001\b/) {	#:: Anti-mage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5001, $change_amount);
			}
		}
		elsif ($text=~/\b372\b/) {	#:: Najena
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(372, $change_amount);
			}
		}
		elsif ($text=~/\b371\b/) {	#:: Neriak Ghoul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(371, $change_amount);
			}
		}
		elsif ($text=~/\b370\b/) {	#:: Dreadguard Inner
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(370, $change_amount);
			}
		}
		elsif ($text=~/\b369\b/) {	#:: Timmerain Darkbrow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(369, $change_amount);
			}
		}
		elsif ($text=~/\b5002\b/) {	#:: Banker
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5002, $change_amount);
			}
		}
		elsif ($text=~/\b368\b/) {	#:: Dervish Cutthroats
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(368, $change_amount);
			}
		}
		elsif ($text=~/\b367\b/) {	#:: Donovon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(367, $change_amount);
			}
		}
		elsif ($text=~/\b366\b/) {	#:: Karana Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(366, $change_amount);
			}
		}
		elsif ($text=~/\b365\b/) {	#:: Pickclaw Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(365, $change_amount);
			}
		}
		elsif ($text=~/\b364\b/) {	#:: Shralok Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(364, $change_amount);
			}
		}
		elsif ($text=~/\b363\b/) {	#:: The Spurned
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(363, $change_amount);
			}
		}
		elsif ($text=~/\b362\b/) {	#:: Priests of Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(362, $change_amount);
			}
		}
		elsif ($text=~/\b361\b/) {	#:: Ashen Order
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(361, $change_amount);
			}
		}
		elsif ($text=~/\b360\b/) {	#:: Iskar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(360, $change_amount);
			}
		}
		elsif ($text=~/\b359\b/) {	#:: Defenders of Luclin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(359, $change_amount);
			}
		}
		elsif ($text=~/\b358\b/) {	#:: Corrupt Akhevan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(358, $change_amount);
			}
		}
		elsif ($text=~/\b357\b/) {	#:: Akhevan (Plane of Shadow)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(357, $change_amount);
			}
		}
		elsif ($text=~/\b356\b/) {	#:: Diseased Animal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(356, $change_amount);
			}
		}
		elsif ($text=~/\b355\b/) {	#:: Storm Reapers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(355, $change_amount);
			}
		}
		elsif ($text=~/\b354\b/) {	#:: Neriak Troll
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(354, $change_amount);
			}
		}
		elsif ($text=~/\b353\b/) {	#:: Neriak Ogre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(353, $change_amount);
			}
		}
		elsif ($text=~/\b352\b/) {	#:: Neriak Inner
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(352, $change_amount);
			}
		}
		elsif ($text=~/\b351\b/) {	#:: Neriak Outer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(351, $change_amount);
			}
		}
		elsif ($text=~/\b350\b/) {	#:: Runnyeye C
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(350, $change_amount);
			}
		}
		elsif ($text=~/\b349\b/) {	#:: Runnyeye B
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(349, $change_amount);
			}
		}
		elsif ($text=~/\b348\b/) {	#:: Runnyeye A
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(348, $change_amount);
			}
		}
		elsif ($text=~/\b347\b/) {	#:: Shark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(347, $change_amount);
			}
		}
		elsif ($text=~/\b346\b/) {	#:: Commons Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(346, $change_amount);
			}
		}
		elsif ($text=~/\b345\b/) {	#:: Karana Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(345, $change_amount);
			}
		}
		elsif ($text=~/\b344\b/) {	#:: Beta Neutral
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(344, $change_amount);
			}
		}
		elsif ($text=~/\b343\b/) {	#:: Surefall Protected Animals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(343, $change_amount);
			}
		}
		elsif ($text=~/\b342\b/) {	#:: Order of Three
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(342, $change_amount);
			}
		}
		elsif ($text=~/\b341\b/) {	#:: Priests of Life
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(341, $change_amount);
			}
		}
		elsif ($text=~/\b340\b/) {	#:: Priests of Innoruuk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(340, $change_amount);
			}
		}
		elsif ($text=~/\b339\b/) {	#:: Bonethrowers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(339, $change_amount);
			}
		}
		elsif ($text=~/\b338\b/) {	#:: Merchants of Oggok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(338, $change_amount);
			}
		}
		elsif ($text=~/\b337\b/) {	#:: Oggok Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(337, $change_amount);
			}
		}
		elsif ($text=~/\b336\b/) {	#:: Coalition of Tradefolk Underground
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(336, $change_amount);
			}
		}
		elsif ($text=~/\b335\b/) {	#:: Thoughtbleeders of Fear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(335, $change_amount);
			}
		}
		elsif ($text=~/\b334\b/) {	#:: Dreadguard Outer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(334, $change_amount);
			}
		}
		elsif ($text=~/\b333\b/) {	#:: King Ak`Anon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(333, $change_amount);
			}
		}
		elsif ($text=~/\b332\b/) {	#:: Highpass Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(332, $change_amount);
			}
		}
		elsif ($text=~/\b331\b/) {	#:: Merchants of Highpass
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(331, $change_amount);
			}
		}
		elsif ($text=~/\b330\b/) {	#:: The Freeport Militia
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(330, $change_amount);
			}
		}
		elsif ($text=~/\b329\b/) {	#:: Carson McCabe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(329, $change_amount);
			}
		}
		elsif ($text=~/\b328\b/) {	#:: Merchants of Halas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(328, $change_amount);
			}
		}
		elsif ($text=~/\b327\b/) {	#:: Shamen of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(327, $change_amount);
			}
		}
		elsif ($text=~/\b326\b/) {	#:: Emerald Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(326, $change_amount);
			}
		}
		elsif ($text=~/\b325\b/) {	#:: Merchants of Felwithe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(325, $change_amount);
			}
		}
		elsif ($text=~/\b324\b/) {	#:: Unkempt Druids
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(324, $change_amount);
			}
		}
		elsif ($text=~/\b323\b/) {	#:: Solusek Mining Co.
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(323, $change_amount);
			}
		}
		elsif ($text=~/\b322\b/) {	#:: Miners Guild 628
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(322, $change_amount);
			}
		}
		elsif ($text=~/\b321\b/) {	#:: Split Paw Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(321, $change_amount);
			}
		}
		elsif ($text=~/\b5003\b/) {	#:: Defenders of the Haven
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5003, $change_amount);
			}
		}
		elsif ($text=~/\b5004\b/) {	#:: Denizens of Fear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5004, $change_amount);
			}
		}
		elsif ($text=~/\b320\b/) {	#:: Wolves of the North
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(320, $change_amount);
			}
		}
		elsif ($text=~/\b319\b/) {	#:: Vox
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(319, $change_amount);
			}
		}
		elsif ($text=~/\b318\b/) {	#:: Venril Sathir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(318, $change_amount);
			}
		}
		elsif ($text=~/\b317\b/) {	#:: Undead Frogloks of Guk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(317, $change_amount);
			}
		}
		elsif ($text=~/\b316\b/) {	#:: Tunare's Scouts
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(316, $change_amount);
			}
		}
		elsif ($text=~/\b315\b/) {	#:: Trakanon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(315, $change_amount);
			}
		}
		elsif ($text=~/\b314\b/) {	#:: Syth of Permafrost
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(314, $change_amount);
			}
		}
		elsif ($text=~/\b313\b/) {	#:: Pirates of Gunthak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(313, $change_amount);
			}
		}
		elsif ($text=~/\b312\b/) {	#:: Storm Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(312, $change_amount);
			}
		}
		elsif ($text=~/\b311\b/) {	#:: Steel Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(311, $change_amount);
			}
		}
		elsif ($text=~/\b310\b/) {	#:: Soldiers of Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(310, $change_amount);
			}
		}
		elsif ($text=~/\b309\b/) {	#:: Silent Fist Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(309, $change_amount);
			}
		}
		elsif ($text=~/\b5005\b/) {	#:: Fizzlethorpe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5005, $change_amount);
			}
		}
		elsif ($text=~/\b308\b/) {	#:: Shadowknights of Night Keep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(308, $change_amount);
			}
		}
		elsif ($text=~/\b307\b/) {	#:: Sarnak Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(307, $change_amount);
			}
		}
		elsif ($text=~/\b306\b/) {	#:: Sabertooths of Blackburrow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(306, $change_amount);
			}
		}
		elsif ($text=~/\b305\b/) {	#:: Rogues of the White Rose
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(305, $change_amount);
			}
		}
		elsif ($text=~/\b304\b/) {	#:: Ring of Scale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(304, $change_amount);
			}
		}
		elsif ($text=~/\b303\b/) {	#:: Queen Cristanos Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(303, $change_amount);
			}
		}
		elsif ($text=~/\b302\b/) {	#:: Protectors of Pine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(302, $change_amount);
			}
		}
		elsif ($text=~/\b301\b/) {	#:: Priests of Nagafen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(301, $change_amount);
			}
		}
		elsif ($text=~/\b300\b/) {	#:: Priests of Mischief
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(300, $change_amount);
			}
		}
		elsif ($text=~/\b299\b/) {	#:: Phinigel Autropos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(299, $change_amount);
			}
		}
		elsif ($text=~/\b298\b/) {	#:: Peace Keepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(298, $change_amount);
			}
		}
		elsif ($text=~/\b297\b/) {	#:: Paladins of Underfoot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(297, $change_amount);
			}
		}
		elsif ($text=~/\b296\b/) {	#:: Opal Darkbriar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(296, $change_amount);
			}
		}
		elsif ($text=~/\b295\b/) {	#:: The Kromdek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(295, $change_amount);
			}
		}
		elsif ($text=~/\b294\b/) {	#:: Miragul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(294, $change_amount);
			}
		}
		elsif ($text=~/\b293\b/) {	#:: Miners Guild 249
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(293, $change_amount);
			}
		}
		elsif ($text=~/\b292\b/) {	#:: Merchants of Rivervale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(292, $change_amount);
			}
		}
		elsif ($text=~/\b291\b/) {	#:: Merchants of Qeynos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(291, $change_amount);
			}
		}
		elsif ($text=~/\b290\b/) {	#:: Merchants of Kaladim
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(290, $change_amount);
			}
		}
		elsif ($text=~/\b289\b/) {	#:: Merchants of Erudin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(289, $change_amount);
			}
		}
		elsif ($text=~/\b288\b/) {	#:: Merchants of Ak`Anon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(288, $change_amount);
			}
		}
		elsif ($text=~/\b287\b/) {	#:: Meldrath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(287, $change_amount);
			}
		}
		elsif ($text=~/\b286\b/) {	#:: Mayor Gubbin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(286, $change_amount);
			}
		}
		elsif ($text=~/\b285\b/) {	#:: Mayong Mistmoore
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(285, $change_amount);
			}
		}
		elsif ($text=~/\b284\b/) {	#:: League of Antonican Bards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(284, $change_amount);
			}
		}
		elsif ($text=~/\b283\b/) {	#:: Pack of Tomar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(283, $change_amount);
			}
		}
		elsif ($text=~/\b5006\b/) {	#:: Hall of the Ebon Mask
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5006, $change_amount);
			}
		}
		elsif ($text=~/\b282\b/) {	#:: Kobolds of Fire Pit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(282, $change_amount);
			}
		}
		elsif ($text=~/\b281\b/) {	#:: Knights of Truth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(281, $change_amount);
			}
		}
		elsif ($text=~/\b280\b/) {	#:: Knights of Thunder
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(280, $change_amount);
			}
		}
		elsif ($text=~/\b279\b/) {	#:: King Tearis Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(279, $change_amount);
			}
		}
		elsif ($text=~/\b278\b/) {	#:: King Naythox Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(278, $change_amount);
			}
		}
		elsif ($text=~/\b277\b/) {	#:: Kerra of Barren Coast
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(277, $change_amount);
			}
		}
		elsif ($text=~/\b276\b/) {	#:: Kelethin Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(276, $change_amount);
			}
		}
		elsif ($text=~/\b275\b/) {	#:: Keepers of the Art
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(275, $change_amount);
			}
		}
		elsif ($text=~/\b274\b/) {	#:: Kazon Stormhammer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(274, $change_amount);
			}
		}
		elsif ($text=~/\b273\b/) {	#:: Kane Bayle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(273, $change_amount);
			}
		}
		elsif ($text=~/\b272\b/) {	#:: Jaggedpine Treefolk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(272, $change_amount);
			}
		}
		elsif ($text=~/\b271\b/) {	#:: Dismal Rage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(271, $change_amount);
			}
		}
		elsif ($text=~/\b270\b/) {	#:: Indigo Brotherhood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(270, $change_amount);
			}
		}
		elsif ($text=~/\b269\b/) {	#:: Kithicor Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(269, $change_amount);
			}
		}
		elsif ($text=~/\b268\b/) {	#:: Combine Empire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(268, $change_amount);
			}
		}
		elsif ($text=~/\b267\b/) {	#:: High Guard of Erudin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(267, $change_amount);
			}
		}
		elsif ($text=~/\b266\b/) {	#:: High Council of Erudin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(266, $change_amount);
			}
		}
		elsif ($text=~/\b265\b/) {	#:: Heretics
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(265, $change_amount);
			}
		}
		elsif ($text=~/\b264\b/) {	#:: Whistling Fist Brotherhood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(264, $change_amount);
			}
		}
		elsif ($text=~/\b263\b/) {	#:: Guardians of the Vale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(263, $change_amount);
			}
		}
		elsif ($text=~/\b262\b/) {	#:: Guards of Qeynos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(262, $change_amount);
			}
		}
		elsif ($text=~/\b261\b/) {	#:: Green Blood Knights
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(261, $change_amount);
			}
		}
		elsif ($text=~/\b260\b/) {	#:: Gnarled Fist
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(260, $change_amount);
			}
		}
		elsif ($text=~/\b259\b/) {	#:: Goblins of Mountain Death
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(259, $change_amount);
			}
		}
		elsif ($text=~/\b258\b/) {	#:: Goblins of Fire Peak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(258, $change_amount);
			}
		}
		elsif ($text=~/\b5007\b/) {	#:: Keepers of the Claw
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5007, $change_amount);
			}
		}
		elsif ($text=~/\b5008\b/) {	#:: Kejekan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5008, $change_amount);
			}
		}
		elsif ($text=~/\b257\b/) {	#:: Goblins of Cleaving Tooth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(257, $change_amount);
			}
		}
		elsif ($text=~/\b256\b/) {	#:: Bloodgills
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(256, $change_amount);
			}
		}
		elsif ($text=~/\b255\b/) {	#:: Gem Choppers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(255, $change_amount);
			}
		}
		elsif ($text=~/\b254\b/) {	#:: Gate Callers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(254, $change_amount);
			}
		}
		elsif ($text=~/\b253\b/) {	#:: Burynai Legion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(253, $change_amount);
			}
		}
		elsif ($text=~/\b252\b/) {	#:: Frogloks of Kunark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(252, $change_amount);
			}
		}
		elsif ($text=~/\b251\b/) {	#:: Frogloks of Guk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(251, $change_amount);
			}
		}
		elsif ($text=~/\b250\b/) {	#:: The Kromdul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(250, $change_amount);
			}
		}
		elsif ($text=~/\b249\b/) {	#:: Nagafen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(249, $change_amount);
			}
		}
		elsif ($text=~/\b248\b/) {	#:: Inhabitants of Firiona Vie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(248, $change_amount);
			}
		}
		elsif ($text=~/\b247\b/) {	#:: Horde of Xalgoz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(247, $change_amount);
			}
		}
		elsif ($text=~/\b246\b/) {	#:: Faydarks Champions
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(246, $change_amount);
			}
		}
		elsif ($text=~/\b5009\b/) {	#:: Kunark Fire Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5009, $change_amount);
			}
		}
		elsif ($text=~/\b245\b/) {	#:: Eldritch Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(245, $change_amount);
			}
		}
		elsif ($text=~/\b244\b/) {	#:: Ebon Mask
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(244, $change_amount);
			}
		}
		elsif ($text=~/\b243\b/) {	#:: Drafling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(243, $change_amount);
			}
		}
		elsif ($text=~/\b242\b/) {	#:: Deepwater Knights
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(242, $change_amount);
			}
		}
		elsif ($text=~/\b241\b/) {	#:: Deeppockets
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(241, $change_amount);
			}
		}
		elsif ($text=~/\b240\b/) {	#:: Deepmuses
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(240, $change_amount);
			}
		}
		elsif ($text=~/\b239\b/) {	#:: The Dead
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(239, $change_amount);
			}
		}
		elsif ($text=~/\b238\b/) {	#:: Dark Reflection
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(238, $change_amount);
			}
		}
		elsif ($text=~/\b237\b/) {	#:: Dark Ones
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(237, $change_amount);
			}
		}
		elsif ($text=~/\b236\b/) {	#:: Dark Bargainers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(236, $change_amount);
			}
		}
		elsif ($text=~/\b235\b/) {	#:: DaBashers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(235, $change_amount);
			}
		}
		elsif ($text=~/\b234\b/) {	#:: Crushbone Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(234, $change_amount);
			}
		}
		elsif ($text=~/\b233\b/) {	#:: Crimson Hands
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(233, $change_amount);
			}
		}
		elsif ($text=~/\b232\b/) {	#:: Craknek Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(232, $change_amount);
			}
		}
		elsif ($text=~/\b231\b/) {	#:: Craftkeepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(231, $change_amount);
			}
		}
		elsif ($text=~/\b230\b/) {	#:: Corrupt Qeynos Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(230, $change_amount);
			}
		}
		elsif ($text=~/\b229\b/) {	#:: Coalition of Tradefolk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(229, $change_amount);
			}
		}
		elsif ($text=~/\b228\b/) {	#:: Clurg
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(228, $change_amount);
			}
		}
		elsif ($text=~/\b227\b/) {	#:: Clerics of Underfoot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(227, $change_amount);
			}
		}
		elsif ($text=~/\b226\b/) {	#:: Clerics of Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(226, $change_amount);
			}
		}
		elsif ($text=~/\b225\b/) {	#:: Clan Runnyeye
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(225, $change_amount);
			}
		}
		elsif ($text=~/\b224\b/) {	#:: Clan Drippycan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(224, $change_amount);
			}
		}
		elsif ($text=~/\b223\b/) {	#:: Circle of Unseen Hands
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(223, $change_amount);
			}
		}
		elsif ($text=~/\b222\b/) {	#:: Broken Skull Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(222, $change_amount);
			}
		}
		elsif ($text=~/\b221\b/) {	#:: Bloodsabers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(221, $change_amount);
			}
		}
		elsif ($text=~/\b220\b/) {	#:: Arcane Scientists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(220, $change_amount);
			}
		}
		elsif ($text=~/\b219\b/) {	#:: Antonius Bayle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(219, $change_amount);
			}
		}
		elsif ($text=~/\b218\b/) {	#:: Allize Taeew
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(218, $change_amount);
			}
		}
		elsif ($text=~/\b217\b/) {	#:: Allize Volew
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(217, $change_amount);
			}
		}
		elsif ($text=~/\b216\b/) {	#:: Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(216, $change_amount);
			}
		}
		elsif ($text=~/\b215\b/) {	#:: Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(215, $change_amount);
			}
		}
		elsif ($text=~/\b214\b/) {	#:: Tribunal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(214, $change_amount);
			}
		}
		elsif ($text=~/\b213\b/) {	#:: Solusek Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(213, $change_amount);
			}
		}
		elsif ($text=~/\b212\b/) {	#:: Rodcet Nife
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(212, $change_amount);
			}
		}
		elsif ($text=~/\b211\b/) {	#:: Rallos Zek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(211, $change_amount);
			}
		}
		elsif ($text=~/\b210\b/) {	#:: Quellious
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(210, $change_amount);
			}
		}
		elsif ($text=~/\b209\b/) {	#:: Prexus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(209, $change_amount);
			}
		}
		elsif ($text=~/\b208\b/) {	#:: Mithaniel Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(208, $change_amount);
			}
		}
		elsif ($text=~/\b207\b/) {	#:: Karana
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(207, $change_amount);
			}
		}
		elsif ($text=~/\b5010\b/) {	#:: Ogre Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5010, $change_amount);
			}
		}
		elsif ($text=~/\b206\b/) {	#:: Innoruuk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(206, $change_amount);
			}
		}
		elsif ($text=~/\b205\b/) {	#:: Fizzlethorp
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(205, $change_amount);
			}
		}
		elsif ($text=~/\b204\b/) {	#:: Erollisi Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(204, $change_amount);
			}
		}
		elsif ($text=~/\b203\b/) {	#:: Cazic-Thule
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(203, $change_amount);
			}
		}
		elsif ($text=~/\b202\b/) {	#:: Brell Serilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(202, $change_amount);
			}
		}
		elsif ($text=~/\b201\b/) {	#:: Bertoxxulous
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(201, $change_amount);
			}
		}
		elsif ($text=~/\b200\b/) {	#:: Erollisi Marr (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(200, $change_amount);
			}
		}
		elsif ($text=~/\b199\b/) {	#:: Iksar Scorpion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(199, $change_amount);
			}
		}
		elsif ($text=~/\b198\b/) {	#:: Kunark Fish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(198, $change_amount);
			}
		}
		elsif ($text=~/\b197\b/) {	#:: Spectral Iksar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(197, $change_amount);
			}
		}
		elsif ($text=~/\b196\b/) {	#:: Spectral Sarnak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(196, $change_amount);
			}
		}
		elsif ($text=~/\b195\b/) {	#:: Goo
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(195, $change_amount);
			}
		}
		elsif ($text=~/\b194\b/) {	#:: Burynai
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(194, $change_amount);
			}
		}
		elsif ($text=~/\b193\b/) {	#:: Race Faction (193)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(193, $change_amount);
			}
		}
		elsif ($text=~/\b192\b/) {	#:: Race Faction (192)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(192, $change_amount);
			}
		}
		elsif ($text=~/\b191\b/) {	#:: Boat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(191, $change_amount);
			}
		}
		elsif ($text=~/\b190\b/) {	#:: Forest Giant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(190, $change_amount);
			}
		}
		elsif ($text=~/\b189\b/) {	#:: Iksar Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(189, $change_amount);
			}
		}
		elsif ($text=~/\b188\b/) {	#:: Yeti
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(188, $change_amount);
			}
		}
		elsif ($text=~/\b187\b/) {	#:: Kunark Goblin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(187, $change_amount);
			}
		}
		elsif ($text=~/\b186\b/) {	#:: Xalgoz Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(186, $change_amount);
			}
		}
		elsif ($text=~/\b185\b/) {	#:: Rhino
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(185, $change_amount);
			}
		}
		elsif ($text=~/\b184\b/) {	#:: Mosquito
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(184, $change_amount);
			}
		}
		elsif ($text=~/\b183\b/) {	#:: Lycanthrope
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(183, $change_amount);
			}
		}
		elsif ($text=~/\b182\b/) {	#:: Draglok Invalid Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(182, $change_amount);
			}
		}
		elsif ($text=~/\b181\b/) {	#:: Sarnak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(181, $change_amount);
			}
		}
		elsif ($text=~/\b180\b/) {	#:: Vah Shir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(180, $change_amount);
			}
		}
		elsif ($text=~/\b179\b/) {	#:: Scorpion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(179, $change_amount);
			}
		}
		elsif ($text=~/\b178\b/) {	#:: Iksar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(178, $change_amount);
			}
		}
		elsif ($text=~/\b177\b/) {	#:: Invisible Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(177, $change_amount);
			}
		}
		elsif ($text=~/\b176\b/) {	#:: Djinn (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(176, $change_amount);
			}
		}
		elsif ($text=~/\b175\b/) {	#:: Pegasus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(175, $change_amount);
			}
		}
		elsif ($text=~/\b5011\b/) {	#:: Residents of Karanas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5011, $change_amount);
			}
		}
		elsif ($text=~/\b174\b/) {	#:: Unicorn Nightmare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(174, $change_amount);
			}
		}
		elsif ($text=~/\b173\b/) {	#:: Innoruuk (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(173, $change_amount);
			}
		}
		elsif ($text=~/\b172\b/) {	#:: Dragon Skeleton
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(172, $change_amount);
			}
		}
		elsif ($text=~/\b5012\b/) {	#:: Root of Innuruuk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5012, $change_amount);
			}
		}
		elsif ($text=~/\b171\b/) {	#:: Gorgon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(171, $change_amount);
			}
		}
		elsif ($text=~/\b170\b/) {	#:: SpiritWolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(170, $change_amount);
			}
		}
		elsif ($text=~/\b169\b/) {	#:: Saber-toothed Cat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(169, $change_amount);
			}
		}
		elsif ($text=~/\b168\b/) {	#:: Erudite Ghost
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(168, $change_amount);
			}
		}
		elsif ($text=~/\b167\b/) {	#:: Ghost Dwarf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(167, $change_amount);
			}
		}
		elsif ($text=~/\b166\b/) {	#:: Sea Horse
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(166, $change_amount);
			}
		}
		elsif ($text=~/\b165\b/) {	#:: Clam
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(165, $change_amount);
			}
		}
		elsif ($text=~/\b164\b/) {	#:: Ghost Ship
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(164, $change_amount);
			}
		}
		elsif ($text=~/\b163\b/) {	#:: Drixie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(163, $change_amount);
			}
		}
		elsif ($text=~/\b162\b/) {	#:: Fayguard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(162, $change_amount);
			}
		}
		elsif ($text=~/\b161\b/) {	#:: Harpie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(161, $change_amount);
			}
		}
		elsif ($text=~/\b160\b/) {	#:: Mermaid
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(160, $change_amount);
			}
		}
		elsif ($text=~/\b159\b/) {	#:: Wasp
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(159, $change_amount);
			}
		}
		elsif ($text=~/\b158\b/) {	#:: Eye of Zomm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(158, $change_amount);
			}
		}
		elsif ($text=~/\b157\b/) {	#:: Mammoth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(157, $change_amount);
			}
		}
		elsif ($text=~/\b156\b/) {	#:: Fel Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(156, $change_amount);
			}
		}
		elsif ($text=~/\b155\b/) {	#:: Sword Fish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(155, $change_amount);
			}
		}
		elsif ($text=~/\b154\b/) {	#:: Leech
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(154, $change_amount);
			}
		}
		elsif ($text=~/\b153\b/) {	#:: Kedge
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(153, $change_amount);
			}
		}
		elsif ($text=~/\b152\b/) {	#:: Froglok Tadpole
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(152, $change_amount);
			}
		}
		elsif ($text=~/\b151\b/) {	#:: Efreeti
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(151, $change_amount);
			}
		}
		elsif ($text=~/\b150\b/) {	#:: Dervish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(150, $change_amount);
			}
		}
		elsif ($text=~/\b149\b/) {	#:: Amygdalan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(149, $change_amount);
			}
		}
		elsif ($text=~/\b148\b/) {	#:: Elf Vampire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(148, $change_amount);
			}
		}
		elsif ($text=~/\b147\b/) {	#:: Diasy Men
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(147, $change_amount);
			}
		}
		elsif ($text=~/\b146\b/) {	#:: Cockatrice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(146, $change_amount);
			}
		}
		elsif ($text=~/\b145\b/) {	#:: Cazic-Thule (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(145, $change_amount);
			}
		}
		elsif ($text=~/\b144\b/) {	#:: Kaladim Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(144, $change_amount);
			}
		}
		elsif ($text=~/\b143\b/) {	#:: Oggok Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(143, $change_amount);
			}
		}
		elsif ($text=~/\b142\b/) {	#:: Grobb Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(142, $change_amount);
			}
		}
		elsif ($text=~/\b141\b/) {	#:: Alligator
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(141, $change_amount);
			}
		}
		elsif ($text=~/\b140\b/) {	#:: Halas Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(140, $change_amount);
			}
		}
		elsif ($text=~/\b139\b/) {	#:: Drake
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(139, $change_amount);
			}
		}
		elsif ($text=~/\b138\b/) {	#:: Clockworks of Ak`Anon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(138, $change_amount);
			}
		}
		elsif ($text=~/\b137\b/) {	#:: Armadillo
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(137, $change_amount);
			}
		}
		elsif ($text=~/\b136\b/) {	#:: Sphinx
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(136, $change_amount);
			}
		}
		elsif ($text=~/\b135\b/) {	#:: Spectre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(135, $change_amount);
			}
		}
		elsif ($text=~/\b134\b/) {	#:: Snake Elemental
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(134, $change_amount);
			}
		}
		elsif ($text=~/\b133\b/) {	#:: Skunk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(133, $change_amount);
			}
		}
		elsif ($text=~/\b132\b/) {	#:: Scarecrow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(132, $change_amount);
			}
		}
		elsif ($text=~/\b131\b/) {	#:: Rivervale Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(131, $change_amount);
			}
		}
		elsif ($text=~/\b130\b/) {	#:: Reanimated Hand
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(130, $change_amount);
			}
		}
		elsif ($text=~/\b129\b/) {	#:: Bixie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(129, $change_amount);
			}
		}
		elsif ($text=~/\b128\b/) {	#:: Erudin Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(128, $change_amount);
			}
		}
		elsif ($text=~/\b127\b/) {	#:: Neriak Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(127, $change_amount);
			}
		}
		elsif ($text=~/\b126\b/) {	#:: Puma
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(126, $change_amount);
			}
		}
		elsif ($text=~/\b125\b/) {	#:: Elemental
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(125, $change_amount);
			}
		}
		elsif ($text=~/\b124\b/) {	#:: Piranha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(124, $change_amount);
			}
		}
		elsif ($text=~/\b123\b/) {	#:: Launch
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(123, $change_amount);
			}
		}
		elsif ($text=~/\b122\b/) {	#:: Ship
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(122, $change_amount);
			}
		}
		elsif ($text=~/\b121\b/) {	#:: Qeynos Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(121, $change_amount);
			}
		}
		elsif ($text=~/\b120\b/) {	#:: Zombie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(120, $change_amount);
			}
		}
		elsif ($text=~/\b119\b/) {	#:: Will-O-Wisp
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(119, $change_amount);
			}
		}
		elsif ($text=~/\b118\b/) {	#:: Tentacle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(118, $change_amount);
			}
		}
		elsif ($text=~/\b117\b/) {	#:: High Hold Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(117, $change_amount);
			}
		}
		elsif ($text=~/\b116\b/) {	#:: Rallos Zek (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(116, $change_amount);
			}
		}
		elsif ($text=~/\b115\b/) {	#:: Vampire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(115, $change_amount);
			}
		}
		elsif ($text=~/\b114\b/) {	#:: Treant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(114, $change_amount);
			}
		}
		elsif ($text=~/\b113\b/) {	#:: Tiger
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(113, $change_amount);
			}
		}
		elsif ($text=~/\b112\b/) {	#:: Tunare (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(112, $change_amount);
			}
		}
		elsif ($text=~/\b111\b/) {	#:: Shark (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(111, $change_amount);
			}
		}
		elsif ($text=~/\b110\b/) {	#:: Skeleton
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(110, $change_amount);
			}
		}
		elsif ($text=~/\b109\b/) {	#:: Kunark Goblin (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(109, $change_amount);
			}
		}
		elsif ($text=~/\b108\b/) {	#:: Solusek Ro (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(108, $change_amount);
			}
		}
		elsif ($text=~/\b107\b/) {	#:: Drachnid (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(107, $change_amount);
			}
		}
		elsif ($text=~/\b106\b/) {	#:: Pixies of Faydwer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(106, $change_amount);
			}
		}
		elsif ($text=~/\b105\b/) {	#:: Human Beggar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(105, $change_amount);
			}
		}
		elsif ($text=~/\b104\b/) {	#:: Orc
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(104, $change_amount);
			}
		}
		elsif ($text=~/\b103\b/) {	#:: Minotaur
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(103, $change_amount);
			}
		}
		elsif ($text=~/\b102\b/) {	#:: Mimic
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(102, $change_amount);
			}
		}
		elsif ($text=~/\b101\b/) {	#:: Lizard Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(101, $change_amount);
			}
		}
		elsif ($text=~/\b100\b/) {	#:: Lion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(100, $change_amount);
			}
		}
		elsif ($text=~/\b99\b/) {	#:: Lava Dragon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(99, $change_amount);
			}
		}
		elsif ($text=~/\b98\b/) {	#:: Kobold
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(98, $change_amount);
			}
		}
		elsif ($text=~/\b97\b/) {	#:: Griffon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(97, $change_amount);
			}
		}
		elsif ($text=~/\b96\b/) {	#:: Imp
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(96, $change_amount);
			}
		}
		elsif ($text=~/\b95\b/) {	#:: Demi Lich (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(95, $change_amount);
			}
		}
		elsif ($text=~/\b94\b/) {	#:: Human Guard (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(94, $change_amount);
			}
		}
		elsif ($text=~/\b93\b/) {	#:: Bear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(93, $change_amount);
			}
		}
		elsif ($text=~/\b92\b/) {	#:: Wolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(92, $change_amount);
			}
		}
		elsif ($text=~/\b91\b/) {	#:: Gorilla
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(91, $change_amount);
			}
		}
		elsif ($text=~/\b90\b/) {	#:: Goblin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(90, $change_amount);
			}
		}
		elsif ($text=~/\b89\b/) {	#:: Gnoll
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(89, $change_amount);
			}
		}
		elsif ($text=~/\b5013\b/) {	#:: KOS
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5013, $change_amount);
			}
		}
		elsif ($text=~/\b5014\b/) {	#:: KOS_animal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5014, $change_amount);
			}
		}
		elsif ($text=~/\b5015\b/) {	#:: Coalition of TradeFolk III
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5015, $change_amount);
			}
		}
		elsif ($text=~/\b5016\b/) {	#:: Swamp Giants of Kunark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5016, $change_amount);
			}
		}
		elsif ($text=~/\b88\b/) {	#:: Giant Spider
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(88, $change_amount);
			}
		}
		elsif ($text=~/\b5017\b/) {	#:: Murrissa Sandwhisper
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5017, $change_amount);
			}
		}
		elsif ($text=~/\b87\b/) {	#:: Giant Snake
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(87, $change_amount);
			}
		}
		elsif ($text=~/\b86\b/) {	#:: Giant Rat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(86, $change_amount);
			}
		}
		elsif ($text=~/\b5018\b/) {	#:: Mermaids
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5018, $change_amount);
			}
		}
		elsif ($text=~/\b85\b/) {	#:: Beta KOS Copy 9
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(85, $change_amount);
			}
		}
		elsif ($text=~/\b84\b/) {	#:: Giant Bat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(84, $change_amount);
			}
		}
		elsif ($text=~/\b5019\b/) {	#:: King Aythox Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5019, $change_amount);
			}
		}
		elsif ($text=~/\b83\b/) {	#:: Ghoul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(83, $change_amount);
			}
		}
		elsif ($text=~/\b5020\b/) {	#:: Undead Residents of Kithicor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5020, $change_amount);
			}
		}
		elsif ($text=~/\b82\b/) {	#:: Ghost
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(82, $change_amount);
			}
		}
		elsif ($text=~/\b5021\b/) {	#:: Cleaving Tooth Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5021, $change_amount);
			}
		}
		elsif ($text=~/\b5022\b/) {	#:: Mountain Death Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5022, $change_amount);
			}
		}
		elsif ($text=~/\b81\b/) {	#:: Gelatinous Cube
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(81, $change_amount);
			}
		}
		elsif ($text=~/\b80\b/) {	#:: Race Faction (80)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(80, $change_amount);
			}
		}
		elsif ($text=~/\b79\b/) {	#:: Gargoyle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(79, $change_amount);
			}
		}
		elsif ($text=~/\b78\b/) {	#:: Fungus Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(78, $change_amount);
			}
		}
		elsif ($text=~/\b77\b/) {	#:: Froglok Ghoul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(77, $change_amount);
			}
		}
		elsif ($text=~/\b76\b/) {	#:: Froglok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(76, $change_amount);
			}
		}
		elsif ($text=~/\b75\b/) {	#:: Fairy (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(75, $change_amount);
			}
		}
		elsif ($text=~/\b5023\b/) {	#:: Noobie Monsters KOS to Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5023, $change_amount);
			}
		}
		elsif ($text=~/\b74\b/) {	#:: Fish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(74, $change_amount);
			}
		}
		elsif ($text=~/\b73\b/) {	#:: Kerran (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(73, $change_amount);
			}
		}
		elsif ($text=~/\b72\b/) {	#:: Fire Beetle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(72, $change_amount);
			}
		}
		elsif ($text=~/\b71\b/) {	#:: Evil Eye
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(71, $change_amount);
			}
		}
		elsif ($text=~/\b70\b/) {	#:: Venril Sathir (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(70, $change_amount);
			}
		}
		elsif ($text=~/\b69\b/) {	#:: Trakanon (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(69, $change_amount);
			}
		}
		elsif ($text=~/\b68\b/) {	#:: Cyclops
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(68, $change_amount);
			}
		}
		elsif ($text=~/\b67\b/) {	#:: Clay Golem
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(67, $change_amount);
			}
		}
		elsif ($text=~/\b66\b/) {	#:: Centaur
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(66, $change_amount);
			}
		}
		elsif ($text=~/\b5024\b/) {	#:: Death Fist Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5024, $change_amount);
			}
		}
		elsif ($text=~/\b65\b/) {	#:: Brownies of Faydwer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(65, $change_amount);
			}
		}
		elsif ($text=~/\b64\b/) {	#:: Werewolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(64, $change_amount);
			}
		}
		elsif ($text=~/\b63\b/) {	#:: Aviak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(63, $change_amount);
			}
		}
		elsif ($text=~/\b62\b/) {	#:: Gnome
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(62, $change_amount);
			}
		}
		elsif ($text=~/\b61\b/) {	#:: Halfling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(61, $change_amount);
			}
		}
		elsif ($text=~/\b60\b/) {	#:: Ogre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(60, $change_amount);
			}
		}
		elsif ($text=~/\b59\b/) {	#:: Troll
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(59, $change_amount);
			}
		}
		elsif ($text=~/\b58\b/) {	#:: Dwarf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(58, $change_amount);
			}
		}
		elsif ($text=~/\b57\b/) {	#:: Half Elf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(57, $change_amount);
			}
		}
		elsif ($text=~/\b56\b/) {	#:: Dark Elf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(56, $change_amount);
			}
		}
		elsif ($text=~/\b55\b/) {	#:: High Elf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(55, $change_amount);
			}
		}
		elsif ($text=~/\b54\b/) {	#:: Wood Elf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(54, $change_amount);
			}
		}
		elsif ($text=~/\b5025\b/) {	#:: Kaladim Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5025, $change_amount);
			}
		}
		elsif ($text=~/\b53\b/) {	#:: Erudite
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(53, $change_amount);
			}
		}
		elsif ($text=~/\b52\b/) {	#:: Barbarian
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(52, $change_amount);
			}
		}
		elsif ($text=~/\b51\b/) {	#:: Human
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(51, $change_amount);
			}
		}
		elsif ($text=~/\b50\b/) {	#:: Class50
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(50, $change_amount);
			}
		}
		elsif ($text=~/\b49\b/) {	#:: Class49
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(49, $change_amount);
			}
		}
		elsif ($text=~/\b48\b/) {	#:: Class48
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(48, $change_amount);
			}
		}
		elsif ($text=~/\b47\b/) {	#:: Class47
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(47, $change_amount);
			}
		}
		elsif ($text=~/\b46\b/) {	#:: Class46
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(46, $change_amount);
			}
		}
		elsif ($text=~/\b45\b/) {	#:: Class45
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(45, $change_amount);
			}
		}
		elsif ($text=~/\b44\b/) {	#:: Class44
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(44, $change_amount);
			}
		}
		elsif ($text=~/\b5026\b/) {	#:: Ogguk Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5026, $change_amount);
			}
		}
		elsif ($text=~/\b43\b/) {	#:: Class43
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(43, $change_amount);
			}
		}
		elsif ($text=~/\b42\b/) {	#:: Class42
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(42, $change_amount);
			}
		}
		elsif ($text=~/\b5027\b/) {	#:: Phingel Autropos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5027, $change_amount);
			}
		}
		elsif ($text=~/\b41\b/) {	#:: Class41
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(41, $change_amount);
			}
		}
		elsif ($text=~/\b40\b/) {	#:: Class40
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(40, $change_amount);
			}
		}
		elsif ($text=~/\b39\b/) {	#:: Class39
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(39, $change_amount);
			}
		}
		elsif ($text=~/\b38\b/) {	#:: Class38
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(38, $change_amount);
			}
		}
		elsif ($text=~/\b37\b/) {	#:: Class37
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(37, $change_amount);
			}
		}
		elsif ($text=~/\b5028\b/) {	#:: Sky Talons
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5028, $change_amount);
			}
		}
		elsif ($text=~/\b36\b/) {	#:: Class36
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(36, $change_amount);
			}
		}
		elsif ($text=~/\b35\b/) {	#:: Class35
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(35, $change_amount);
			}
		}
		elsif ($text=~/\b5029\b/) {	#:: Temple Of Sol Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5029, $change_amount);
			}
		}
		elsif ($text=~/\b34\b/) {	#:: Class34
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(34, $change_amount);
			}
		}
		elsif ($text=~/\b33\b/) {	#:: Class33
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(33, $change_amount);
			}
		}
		elsif ($text=~/\b32\b/) {	#:: Merchant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(32, $change_amount);
			}
		}
		elsif ($text=~/\b31\b/) {	#:: Class31
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(31, $change_amount);
			}
		}
		elsif ($text=~/\b30\b/) {	#:: GUILDMASTERENCHANTER
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(30, $change_amount);
			}
		}
		elsif ($text=~/\b29\b/) {	#:: GUILDMASTERMAGICIAN
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(29, $change_amount);
			}
		}
		elsif ($text=~/\b28\b/) {	#:: GUILDMASTERWIZARD
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(28, $change_amount);
			}
		}
		elsif ($text=~/\b27\b/) {	#:: GUILDMASTERNECRO
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(27, $change_amount);
			}
		}
		elsif ($text=~/\b26\b/) {	#:: GUILDMASTERSHAMAN
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(26, $change_amount);
			}
		}
		elsif ($text=~/\b25\b/) {	#:: GUILDMASTERROGUE
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(25, $change_amount);
			}
		}
		elsif ($text=~/\b5030\b/) {	#:: Dulaks Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5030, $change_amount);
			}
		}
		elsif ($text=~/\b5031\b/) {	#:: Needlite
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5031, $change_amount);
			}
		}
		elsif ($text=~/\b24\b/) {	#:: GUILDMASTERBARD
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(24, $change_amount);
			}
		}
		elsif ($text=~/\b5032\b/) {	#:: Indifferent
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5032, $change_amount);
			}
		}
		elsif ($text=~/\b23\b/) {	#:: GUILDMASTERMONK
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(23, $change_amount);
			}
		}
		elsif ($text=~/\b22\b/) {	#:: GUILDMASTERDRUID
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(22, $change_amount);
			}
		}
		elsif ($text=~/\b21\b/) {	#:: GUILDMASTERSK
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(21, $change_amount);
			}
		}
		elsif ($text=~/\b5033\b/) {	#:: KOS Plane of Nightmare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5033, $change_amount);
			}
		}
		elsif ($text=~/\b5034\b/) {	#:: KOS Plane of Innovation
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5034, $change_amount);
			}
		}
		elsif ($text=~/\b5035\b/) {	#:: WehateThelin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5035, $change_amount);
			}
		}
		elsif ($text=~/\b5036\b/) {	#:: HoHMaiden
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5036, $change_amount);
			}
		}
		elsif ($text=~/\b5037\b/) {	#:: Nadox Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5037, $change_amount);
			}
		}
		elsif ($text=~/\b20\b/) {	#:: GUILDMASTERRANGER
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(20, $change_amount);
			}
		}
		elsif ($text=~/\b5038\b/) {	#:: Nitram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5038, $change_amount);
			}
		}
		elsif ($text=~/\b19\b/) {	#:: GUILDMASTERPALADIN
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(19, $change_amount);
			}
		}
		elsif ($text=~/\b5039\b/) {	#:: Residents of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5039, $change_amount);
			}
		}
		elsif ($text=~/\b5040\b/) {	#:: Madmen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5040, $change_amount);
			}
		}
		elsif ($text=~/\b18\b/) {	#:: GUILDMASTERCLERIC
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(18, $change_amount);
			}
		}
		elsif ($text=~/\b5041\b/) {	#:: VillagerRoom
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5041, $change_amount);
			}
		}
		elsif ($text=~/\b17\b/) {	#:: GUILDMASTERWARRIOR
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(17, $change_amount);
			}
		}
		elsif ($text=~/\b16\b/) {	#:: Berserker
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(16, $change_amount);
			}
		}
		elsif ($text=~/\b5042\b/) {	#:: OmensBatRat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5042, $change_amount);
			}
		}
		elsif ($text=~/\b5043\b/) {	#:: Neriak Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5043, $change_amount);
			}
		}
		elsif ($text=~/\b15\b/) {	#:: Beastlord
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(15, $change_amount);
			}
		}
		elsif ($text=~/\b5044\b/) {	#:: Planes_Neutral
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5044, $change_amount);
			}
		}
		elsif ($text=~/\b5045\b/) {	#:: KOS Plane of Storms
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5045, $change_amount);
			}
		}
		elsif ($text=~/\b5046\b/) {	#:: Paludal_Mushrooms
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5046, $change_amount);
			}
		}
		elsif ($text=~/\b5047\b/) {	#:: Paludal_Underbulk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5047, $change_amount);
			}
		}
		elsif ($text=~/\b5048\b/) {	#:: The_Angry_Sambata
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5048, $change_amount);
			}
		}
		elsif ($text=~/\b5049\b/) {	#:: Crescent Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5049, $change_amount);
			}
		}
		elsif ($text=~/\b14\b/) {	#:: Enchanter
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(14, $change_amount);
			}
		}
		elsif ($text=~/\b13\b/) {	#:: Magician
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(13, $change_amount);
			}
		}
		elsif ($text=~/\b12\b/) {	#:: Wizard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(12, $change_amount);
			}
		}
		elsif ($text=~/\b11\b/) {	#:: Necromancer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(11, $change_amount);
			}
		}
		elsif ($text=~/\b10\b/) {	#:: Shaman
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(10, $change_amount);
			}
		}
		elsif ($text=~/\b9\b/) {	#:: Rogue
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(9, $change_amount);
			}
		}
		elsif ($text=~/\b8\b/) {	#:: Bard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(8, $change_amount);
			}
		}
		elsif ($text=~/\b7\b/) {	#:: Monk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(7, $change_amount);
			}
		}
		elsif ($text=~/\b5050\b/) {	#:: Invaders of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5050, $change_amount);
			}
		}
		elsif ($text=~/\b6\b/) {	#:: Druid
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(6, $change_amount);
			}
		}
		elsif ($text=~/\b5\b/) {	#:: ShadowKnight
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5, $change_amount);
			}
		}
		elsif ($text=~/\b4\b/) {	#:: Ranger
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(4, $change_amount);
			}
		}
		elsif ($text=~/\b3\b/) {	#:: Paladin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(3, $change_amount);
			}
		}
		elsif ($text=~/\b2\b/) {	#:: Cleric
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2, $change_amount);
			}
		}
		elsif ($text=~/\b5051\b/) {	#:: Asylum of Anguish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5051, $change_amount);
			}
		}
		elsif ($text=~/\b5052\b/) {	#:: dubious
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5052, $change_amount);
			}
		}
		elsif ($text=~/\b5053\b/) {	#:: dubious-storms
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5053, $change_amount);
			}
		}
		elsif ($text=~/\b1\b/) {	#:: Warrior
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1, $change_amount);
			}
		}
		elsif ($text=~/\b5054\b/) {	#:: Scout_Guke
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5054, $change_amount);
			}
		}
		elsif ($text=~/\b5055\b/) {	#:: Dark_Reign_Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5055, $change_amount);
			}
		}
		elsif ($text=~/\b0\b/) {	#:: NoFaction
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(0, $change_amount);
			}
		}
		elsif ($text=~/\b377\b/) {	#:: Grobb Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(377, $change_amount);
			}
		}
		elsif ($text=~/\b378\b/) {	#:: Stone Hive Bixies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(378, $change_amount);
			}
		}
		elsif ($text=~/\b379\b/) {	#:: Butcherblock Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(379, $change_amount);
			}
		}
		elsif ($text=~/\b380\b/) {	#:: Wood Elf Bards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(380, $change_amount);
			}
		}
		elsif ($text=~/\b381\b/) {	#:: Tunare's Martyrs 2
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(381, $change_amount);
			}
		}
		elsif ($text=~/\b382\b/) {	#:: Kerra Isle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(382, $change_amount);
			}
		}
		elsif ($text=~/\b383\b/) {	#:: Thunder Hooves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(383, $change_amount);
			}
		}
		elsif ($text=~/\b384\b/) {	#:: Fay Scout
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(384, $change_amount);
			}
		}
		elsif ($text=~/\b385\b/) {	#:: Defective Clockwork
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(385, $change_amount);
			}
		}
		elsif ($text=~/\b386\b/) {	#:: Unrest Inhabitants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(386, $change_amount);
			}
		}
		elsif ($text=~/\b387\b/) {	#:: Befallen Inhabitants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(387, $change_amount);
			}
		}
		elsif ($text=~/\b388\b/) {	#:: Fairie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(388, $change_amount);
			}
		}
		elsif ($text=~/\b389\b/) {	#:: Golem
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(389, $change_amount);
			}
		}
		elsif ($text=~/\b390\b/) {	#:: New Combine Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(390, $change_amount);
			}
		}
		elsif ($text=~/\b391\b/) {	#:: New Combine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(391, $change_amount);
			}
		}
		elsif ($text=~/\b392\b/) {	#:: Faction392
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(392, $change_amount);
			}
		}
		elsif ($text=~/\b393\b/) {	#:: Djinn
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(393, $change_amount);
			}
		}
		elsif ($text=~/\b394\b/) {	#:: Shamen of War
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(394, $change_amount);
			}
		}
		elsif ($text=~/\b395\b/) {	#:: Morawk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(395, $change_amount);
			}
		}
		elsif ($text=~/\b396\b/) {	#:: Agnostic
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(396, $change_amount);
			}
		}
		elsif ($text=~/\b397\b/) {	#:: Sky Talons (good)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(397, $change_amount);
			}
		}
		elsif ($text=~/\b398\b/) {	#:: Riptide Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(398, $change_amount);
			}
		}
		elsif ($text=~/\b399\b/) {	#:: Sea Furies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(399, $change_amount);
			}
		}
		elsif ($text=~/\b400\b/) {	#:: Cult of Fear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(400, $change_amount);
			}
		}
		elsif ($text=~/\b401\b/) {	#:: Song Weavers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(401, $change_amount);
			}
		}
		elsif ($text=~/\b402\b/) {	#:: Oracle of K`Arnon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(402, $change_amount);
			}
		}
		elsif ($text=~/\b403\b/) {	#:: Oracle of Marud
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(403, $change_amount);
			}
		}
		elsif ($text=~/\b404\b/) {	#:: Truespirit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(404, $change_amount);
			}
		}
		elsif ($text=~/\b405\b/) {	#:: Dain Frostreaver IV
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(405, $change_amount);
			}
		}
		elsif ($text=~/\b406\b/) {	#:: Coldain
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(406, $change_amount);
			}
		}
		elsif ($text=~/\b407\b/) {	#:: Ry`Gorr Clan Snow Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(407, $change_amount);
			}
		}
		elsif ($text=~/\b408\b/) {	#:: Faction408
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(408, $change_amount);
			}
		}
		elsif ($text=~/\b409\b/) {	#:: Tserrina Syl`Tor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(409, $change_amount);
			}
		}
		elsif ($text=~/\b410\b/) {	#:: Guide1
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(410, $change_amount);
			}
		}
		elsif ($text=~/\b411\b/) {	#:: Guide2
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(411, $change_amount);
			}
		}
		elsif ($text=~/\b412\b/) {	#:: Krag
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(412, $change_amount);
			}
		}
		elsif ($text=~/\b413\b/) {	#:: Guide3
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(413, $change_amount);
			}
		}
		elsif ($text=~/\b414\b/) {	#:: Residents of Fear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(414, $change_amount);
			}
		}
		elsif ($text=~/\b415\b/) {	#:: Temple of Solusek Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(415, $change_amount);
			}
		}
		elsif ($text=~/\b416\b/) {	#:: Shadowed Men
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(416, $change_amount);
			}
		}
		elsif ($text=~/\b417\b/) {	#:: Ankhefenmut
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(417, $change_amount);
			}
		}
		elsif ($text=~/\b418\b/) {	#:: Zazamoukh
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(418, $change_amount);
			}
		}
		elsif ($text=~/\b419\b/) {	#:: Kromrif
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(419, $change_amount);
			}
		}
		elsif ($text=~/\b420\b/) {	#:: Fallen of Bloody Kithicor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(420, $change_amount);
			}
		}
		elsif ($text=~/\b421\b/) {	#:: Aggressors of Kithicor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(421, $change_amount);
			}
		}
		elsif ($text=~/\b422\b/) {	#:: Defenders of Kithicor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(422, $change_amount);
			}
		}
		elsif ($text=~/\b423\b/) {	#:: Verish Mal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(423, $change_amount);
			}
		}
		elsif ($text=~/\b424\b/) {	#:: Inhabitants of Sky
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(424, $change_amount);
			}
		}
		elsif ($text=~/\b425\b/) {	#:: Inhabitants of Hate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(425, $change_amount);
			}
		}
		elsif ($text=~/\b426\b/) {	#:: Agents of Mistmoore
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(426, $change_amount);
			}
		}
		elsif ($text=~/\b427\b/) {	#:: Spirocs of Timorous
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(427, $change_amount);
			}
		}
		elsif ($text=~/\b428\b/) {	#:: Minions of Underfoot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(428, $change_amount);
			}
		}
		elsif ($text=~/\b429\b/) {	#:: King Tormax
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(429, $change_amount);
			}
		}
		elsif ($text=~/\b430\b/) {	#:: Claws of Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(430, $change_amount);
			}
		}
		elsif ($text=~/\b431\b/) {	#:: Ulthork
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(431, $change_amount);
			}
		}
		elsif ($text=~/\b432\b/) {	#:: Othmir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(432, $change_amount);
			}
		}
		elsif ($text=~/\b433\b/) {	#:: Jaled Dar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(433, $change_amount);
			}
		}
		elsif ($text=~/\b434\b/) {	#:: Sirens of the Grotto
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(434, $change_amount);
			}
		}
		elsif ($text=~/\b435\b/) {	#:: Velketor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(435, $change_amount);
			}
		}
		elsif ($text=~/\b436\b/) {	#:: Yelinak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(436, $change_amount);
			}
		}
		elsif ($text=~/\b437\b/) {	#:: Denizens of Mischief
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(437, $change_amount);
			}
		}
		elsif ($text=~/\b438\b/) {	#:: Servants of Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(438, $change_amount);
			}
		}
		elsif ($text=~/\b439\b/) {	#:: Snowfang Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(439, $change_amount);
			}
		}
		elsif ($text=~/\b440\b/) {	#:: Cabilis Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(440, $change_amount);
			}
		}
		elsif ($text=~/\b441\b/) {	#:: Legion of Cabilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(441, $change_amount);
			}
		}
		elsif ($text=~/\b442\b/) {	#:: Crusaders of Greenmist
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(442, $change_amount);
			}
		}
		elsif ($text=~/\b443\b/) {	#:: Brood of Kotiz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(443, $change_amount);
			}
		}
		elsif ($text=~/\b444\b/) {	#:: Swift Tails
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(444, $change_amount);
			}
		}
		elsif ($text=~/\b445\b/) {	#:: Scaled Mystics
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(445, $change_amount);
			}
		}
		elsif ($text=~/\b446\b/) {	#:: The Forsaken
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(446, $change_amount);
			}
		}
		elsif ($text=~/\b447\b/) {	#:: Pirates of Iceclad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(447, $change_amount);
			}
		}
		elsif ($text=~/\b448\b/) {	#:: Kromzek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(448, $change_amount);
			}
		}
		elsif ($text=~/\b449\b/) {	#:: Tunarean Court
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(449, $change_amount);
			}
		}
		elsif ($text=~/\b450\b/) {	#:: Thrall of Kly
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(450, $change_amount);
			}
		}
		elsif ($text=~/\b451\b/) {	#:: Brood of Di`Zok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(451, $change_amount);
			}
		}
		elsif ($text=~/\b452\b/) {	#:: The Hotwingz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(452, $change_amount);
			}
		}
		elsif ($text=~/\b453\b/) {	#:: Citizens of Torsis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(453, $change_amount);
			}
		}
		elsif ($text=~/\b454\b/) {	#:: Drusella Sathir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(454, $change_amount);
			}
		}
		elsif ($text=~/\b455\b/) {	#:: Minions of Scale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(455, $change_amount);
			}
		}
		elsif ($text=~/\b456\b/) {	#:: Gelistial
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(456, $change_amount);
			}
		}
		elsif ($text=~/\b457\b/) {	#:: Holgresh
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(457, $change_amount);
			}
		}
		elsif ($text=~/\b458\b/) {	#:: Geonid Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(458, $change_amount);
			}
		}
		elsif ($text=~/\b459\b/) {	#:: Lithiniath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(459, $change_amount);
			}
		}
		elsif ($text=~/\b460\b/) {	#:: Citizens of Froststone
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(460, $change_amount);
			}
		}
		elsif ($text=~/\b461\b/) {	#:: Crystal Denizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(461, $change_amount);
			}
		}
		elsif ($text=~/\b462\b/) {	#:: Chetari
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(462, $change_amount);
			}
		}
		elsif ($text=~/\b463\b/) {	#:: Paebala
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(463, $change_amount);
			}
		}
		elsif ($text=~/\b464\b/) {	#:: Zlandicar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(464, $change_amount);
			}
		}
		elsif ($text=~/\b465\b/) {	#:: Tizmak Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(465, $change_amount);
			}
		}
		elsif ($text=~/\b466\b/) {	#:: Guardians of the Shrine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(466, $change_amount);
			}
		}
		elsif ($text=~/\b467\b/) {	#:: Guardians of Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(467, $change_amount);
			}
		}
		elsif ($text=~/\b468\b/) {	#:: The Sleeper
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(468, $change_amount);
			}
		}
		elsif ($text=~/\b469\b/) {	#:: Protectors of Growth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(469, $change_amount);
			}
		}
		elsif ($text=~/\b470\b/) {	#:: Peoples Republic of Thurgadin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(470, $change_amount);
			}
		}
		elsif ($text=~/\b471\b/) {	#:: Clan Kolbok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(471, $change_amount);
			}
		}
		elsif ($text=~/\b472\b/) {	#:: Warders of The Claw
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(472, $change_amount);
			}
		}
		elsif ($text=~/\b473\b/) {	#:: Kejek Village
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(473, $change_amount);
			}
		}
		elsif ($text=~/\b474\b/) {	#:: Sporali
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(474, $change_amount);
			}
		}
		elsif ($text=~/\b475\b/) {	#:: King Xorbb
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(475, $change_amount);
			}
		}
		elsif ($text=~/\b476\b/) {	#:: Beta Good
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(476, $change_amount);
			}
		}
		elsif ($text=~/\b477\b/) {	#:: Beta Evil
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(477, $change_amount);
			}
		}
		elsif ($text=~/\b478\b/) {	#:: Beta Warmly
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(478, $change_amount);
			}
		}
		elsif ($text=~/\b479\b/) {	#:: Beta KOS
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(479, $change_amount);
			}
		}
		elsif ($text=~/\b480\b/) {	#:: Faction480
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(480, $change_amount);
			}
		}
		elsif ($text=~/\b481\b/) {	#:: Faction481
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(481, $change_amount);
			}
		}
		elsif ($text=~/\b482\b/) {	#:: Tribunal (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(482, $change_amount);
			}
		}
		elsif ($text=~/\b483\b/) {	#:: Bertoxxulous (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(483, $change_amount);
			}
		}
		elsif ($text=~/\b484\b/) {	#:: Bristlebane (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(484, $change_amount);
			}
		}
		elsif ($text=~/\b485\b/) {	#:: Faydrake
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(485, $change_amount);
			}
		}
		elsif ($text=~/\b486\b/) {	#:: Sarnak Skeleton
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(486, $change_amount);
			}
		}
		elsif ($text=~/\b487\b/) {	#:: Ratman
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(487, $change_amount);
			}
		}
		elsif ($text=~/\b488\b/) {	#:: Wyvern
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(488, $change_amount);
			}
		}
		elsif ($text=~/\b489\b/) {	#:: Wurm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(489, $change_amount);
			}
		}
		elsif ($text=~/\b490\b/) {	#:: Devourer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(490, $change_amount);
			}
		}
		elsif ($text=~/\b491\b/) {	#:: Iksar Golem
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(491, $change_amount);
			}
		}
		elsif ($text=~/\b492\b/) {	#:: Iksar Skeleton
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(492, $change_amount);
			}
		}
		elsif ($text=~/\b493\b/) {	#:: Man-Eating Plant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(493, $change_amount);
			}
		}
		elsif ($text=~/\b494\b/) {	#:: Raptor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(494, $change_amount);
			}
		}
		elsif ($text=~/\b495\b/) {	#:: Sarnak Golem
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(495, $change_amount);
			}
		}
		elsif ($text=~/\b496\b/) {	#:: Water Dragon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(496, $change_amount);
			}
		}
		elsif ($text=~/\b497\b/) {	#:: Iksar Hand
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(497, $change_amount);
			}
		}
		elsif ($text=~/\b498\b/) {	#:: Cactus Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(498, $change_amount);
			}
		}
		elsif ($text=~/\b499\b/) {	#:: Flying Monkey
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(499, $change_amount);
			}
		}
		elsif ($text=~/\b500\b/) {	#:: Brontotherium
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(500, $change_amount);
			}
		}
		elsif ($text=~/\b501\b/) {	#:: Snow Dervish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(501, $change_amount);
			}
		}
		elsif ($text=~/\b502\b/) {	#:: Dire Wolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(502, $change_amount);
			}
		}
		elsif ($text=~/\b503\b/) {	#:: Manticore
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(503, $change_amount);
			}
		}
		elsif ($text=~/\b504\b/) {	#:: Totem Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(504, $change_amount);
			}
		}
		elsif ($text=~/\b505\b/) {	#:: Cold Spectre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(505, $change_amount);
			}
		}
		elsif ($text=~/\b506\b/) {	#:: Enchanted Armor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(506, $change_amount);
			}
		}
		elsif ($text=~/\b507\b/) {	#:: Snow Bunny
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(507, $change_amount);
			}
		}
		elsif ($text=~/\b508\b/) {	#:: Walrus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(508, $change_amount);
			}
		}
		elsif ($text=~/\b509\b/) {	#:: Rock Gem Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(509, $change_amount);
			}
		}
		elsif ($text=~/\b510\b/) {	#:: Race Faction (510)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(510, $change_amount);
			}
		}
		elsif ($text=~/\b511\b/) {	#:: Race Faction (511)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(511, $change_amount);
			}
		}
		elsif ($text=~/\b512\b/) {	#:: Yakman
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(512, $change_amount);
			}
		}
		elsif ($text=~/\b513\b/) {	#:: Faun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(513, $change_amount);
			}
		}
		elsif ($text=~/\b514\b/) {	#:: Coldain (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(514, $change_amount);
			}
		}
		elsif ($text=~/\b515\b/) {	#:: Velious Dragon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(515, $change_amount);
			}
		}
		elsif ($text=~/\b516\b/) {	#:: Hag
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(516, $change_amount);
			}
		}
		elsif ($text=~/\b517\b/) {	#:: Hippogriff
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(517, $change_amount);
			}
		}
		elsif ($text=~/\b518\b/) {	#:: Siren
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(518, $change_amount);
			}
		}
		elsif ($text=~/\b519\b/) {	#:: Frost Giant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(519, $change_amount);
			}
		}
		elsif ($text=~/\b520\b/) {	#:: Storm Giant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(520, $change_amount);
			}
		}
		elsif ($text=~/\b521\b/) {	#:: Otter Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(521, $change_amount);
			}
		}
		elsif ($text=~/\b522\b/) {	#:: Walrus Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(522, $change_amount);
			}
		}
		elsif ($text=~/\b523\b/) {	#:: Clockwork Dragon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(523, $change_amount);
			}
		}
		elsif ($text=~/\b524\b/) {	#:: Abhorrent
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(524, $change_amount);
			}
		}
		elsif ($text=~/\b525\b/) {	#:: Sea Turtle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(525, $change_amount);
			}
		}
		elsif ($text=~/\b526\b/) {	#:: BandWdragons
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(526, $change_amount);
			}
		}
		elsif ($text=~/\b527\b/) {	#:: Ghost Dragon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(527, $change_amount);
			}
		}
		elsif ($text=~/\b528\b/) {	#:: Race Faction (528)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(528, $change_amount);
			}
		}
		elsif ($text=~/\b529\b/) {	#:: Prismatic Dragon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(529, $change_amount);
			}
		}
		elsif ($text=~/\b530\b/) {	#:: Shik Nar of Fungus Grove
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(530, $change_amount);
			}
		}
		elsif ($text=~/\b531\b/) {	#:: Rockhopper
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(531, $change_amount);
			}
		}
		elsif ($text=~/\b532\b/) {	#:: Underbulk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(532, $change_amount);
			}
		}
		elsif ($text=~/\b533\b/) {	#:: Grimling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(533, $change_amount);
			}
		}
		elsif ($text=~/\b534\b/) {	#:: Vacuum Worm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(534, $change_amount);
			}
		}
		elsif ($text=~/\b535\b/) {	#:: Race Faction (535)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(535, $change_amount);
			}
		}
		elsif ($text=~/\b536\b/) {	#:: Kahli Shah
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(536, $change_amount);
			}
		}
		elsif ($text=~/\b537\b/) {	#:: Owlbear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(537, $change_amount);
			}
		}
		elsif ($text=~/\b538\b/) {	#:: Rhino Beetle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(538, $change_amount);
			}
		}
		elsif ($text=~/\b539\b/) {	#:: Vampyre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(539, $change_amount);
			}
		}
		elsif ($text=~/\b540\b/) {	#:: Earth Elemental (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(540, $change_amount);
			}
		}
		elsif ($text=~/\b541\b/) {	#:: Air Elemental (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(541, $change_amount);
			}
		}
		elsif ($text=~/\b542\b/) {	#:: Water Elemental (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(542, $change_amount);
			}
		}
		elsif ($text=~/\b543\b/) {	#:: Fire Elemental (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(543, $change_amount);
			}
		}
		elsif ($text=~/\b544\b/) {	#:: Wetfang Minnow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(544, $change_amount);
			}
		}
		elsif ($text=~/\b545\b/) {	#:: Thought Horror
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(545, $change_amount);
			}
		}
		elsif ($text=~/\b546\b/) {	#:: Tegi
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(546, $change_amount);
			}
		}
		elsif ($text=~/\b547\b/) {	#:: Horse
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(547, $change_amount);
			}
		}
		elsif ($text=~/\b548\b/) {	#:: Shissar of Chelsith
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(548, $change_amount);
			}
		}
		elsif ($text=~/\b549\b/) {	#:: Fungal Fiend
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(549, $change_amount);
			}
		}
		elsif ($text=~/\b550\b/) {	#:: Vampire Volatalis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(550, $change_amount);
			}
		}
		elsif ($text=~/\b551\b/) {	#:: Stonegrabber
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(551, $change_amount);
			}
		}
		elsif ($text=~/\b552\b/) {	#:: Scarlet Cheetah
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(552, $change_amount);
			}
		}
		elsif ($text=~/\b553\b/) {	#:: Zelniak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(553, $change_amount);
			}
		}
		elsif ($text=~/\b554\b/) {	#:: Lightcrawler
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(554, $change_amount);
			}
		}
		elsif ($text=~/\b555\b/) {	#:: Shade
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(555, $change_amount);
			}
		}
		elsif ($text=~/\b556\b/) {	#:: Sunflower
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(556, $change_amount);
			}
		}
		elsif ($text=~/\b557\b/) {	#:: Sun Revenant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(557, $change_amount);
			}
		}
		elsif ($text=~/\b558\b/) {	#:: Shrieker
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(558, $change_amount);
			}
		}
		elsif ($text=~/\b559\b/) {	#:: Galorian
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(559, $change_amount);
			}
		}
		elsif ($text=~/\b560\b/) {	#:: Netherbian
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(560, $change_amount);
			}
		}
		elsif ($text=~/\b561\b/) {	#:: Akheva (Race Type)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(561, $change_amount);
			}
		}
		elsif ($text=~/\b562\b/) {	#:: Spire Spirit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(562, $change_amount);
			}
		}
		elsif ($text=~/\b563\b/) {	#:: Sonic Wolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(563, $change_amount);
			}
		}
		elsif ($text=~/\b564\b/) {	#:: Ground Shaker
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(564, $change_amount);
			}
		}
		elsif ($text=~/\b565\b/) {	#:: Vah Shir Skeleton
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(565, $change_amount);
			}
		}
		elsif ($text=~/\b566\b/) {	#:: Mutant Humanoid
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(566, $change_amount);
			}
		}
		elsif ($text=~/\b567\b/) {	#:: Seru Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(567, $change_amount);
			}
		}
		elsif ($text=~/\b568\b/) {	#:: Recuso
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(568, $change_amount);
			}
		}
		elsif ($text=~/\b569\b/) {	#:: Vah Shir King (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(569, $change_amount);
			}
		}
		elsif ($text=~/\b570\b/) {	#:: Vah Shir Guard (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(570, $change_amount);
			}
		}
		elsif ($text=~/\b571\b/) {	#:: Portal Man (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(571, $change_amount);
			}
		}
		elsif ($text=~/\b572\b/) {	#:: Lujein
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(572, $change_amount);
			}
		}
		elsif ($text=~/\b573\b/) {	#:: Potamide
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(573, $change_amount);
			}
		}
		elsif ($text=~/\b574\b/) {	#:: Dryad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(574, $change_amount);
			}
		}
		elsif ($text=~/\b575\b/) {	#:: Evil Treant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(575, $change_amount);
			}
		}
		elsif ($text=~/\b576\b/) {	#:: Mutant Fly
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(576, $change_amount);
			}
		}
		elsif ($text=~/\b577\b/) {	#:: Tarew Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(577, $change_amount);
			}
		}
		elsif ($text=~/\b578\b/) {	#:: Solusek Ro New
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(578, $change_amount);
			}
		}
		elsif ($text=~/\b579\b/) {	#:: Clockwork Golem
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(579, $change_amount);
			}
		}
		elsif ($text=~/\b580\b/) {	#:: Clockwork Brain
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(580, $change_amount);
			}
		}
		elsif ($text=~/\b581\b/) {	#:: Spectral Banshee
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(581, $change_amount);
			}
		}
		elsif ($text=~/\b582\b/) {	#:: Guard of Justice Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(582, $change_amount);
			}
		}
		elsif ($text=~/\b583\b/) {	#:: Mischief Castle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(583, $change_amount);
			}
		}
		elsif ($text=~/\b584\b/) {	#:: Disease Boss
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(584, $change_amount);
			}
		}
		elsif ($text=~/\b585\b/) {	#:: Sol Ro Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(585, $change_amount);
			}
		}
		elsif ($text=~/\b586\b/) {	#:: Bertoxxulous Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(586, $change_amount);
			}
		}
		elsif ($text=~/\b587\b/) {	#:: Tribunal Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(587, $change_amount);
			}
		}
		elsif ($text=~/\b588\b/) {	#:: Terris-Thule
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(588, $change_amount);
			}
		}
		elsif ($text=~/\b589\b/) {	#:: Vegerog
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(589, $change_amount);
			}
		}
		elsif ($text=~/\b590\b/) {	#:: Crocodile
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(590, $change_amount);
			}
		}
		elsif ($text=~/\b591\b/) {	#:: POP Bat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(591, $change_amount);
			}
		}
		elsif ($text=~/\b592\b/) {	#:: Slarghilug
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(592, $change_amount);
			}
		}
		elsif ($text=~/\b593\b/) {	#:: Tranquilion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(593, $change_amount);
			}
		}
		elsif ($text=~/\b594\b/) {	#:: Tin Soldier
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(594, $change_amount);
			}
		}
		elsif ($text=~/\b595\b/) {	#:: Nightmare Wraith
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(595, $change_amount);
			}
		}
		elsif ($text=~/\b596\b/) {	#:: Malarian
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(596, $change_amount);
			}
		}
		elsif ($text=~/\b597\b/) {	#:: Knight of Pestilence
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(597, $change_amount);
			}
		}
		elsif ($text=~/\b598\b/) {	#:: Lepertoloth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(598, $change_amount);
			}
		}
		elsif ($text=~/\b599\b/) {	#:: Bubonian Boss
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(599, $change_amount);
			}
		}
		elsif ($text=~/\b600\b/) {	#:: Bubonian Underling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(600, $change_amount);
			}
		}
		elsif ($text=~/\b601\b/) {	#:: Pusling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(601, $change_amount);
			}
		}
		elsif ($text=~/\b602\b/) {	#:: Mephit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(602, $change_amount);
			}
		}
		elsif ($text=~/\b603\b/) {	#:: Stormrider
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(603, $change_amount);
			}
		}
		elsif ($text=~/\b604\b/) {	#:: Junk Beast
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(604, $change_amount);
			}
		}
		elsif ($text=~/\b605\b/) {	#:: Broken Clockwork
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(605, $change_amount);
			}
		}
		elsif ($text=~/\b606\b/) {	#:: Giant Clockwork
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(606, $change_amount);
			}
		}
		elsif ($text=~/\b607\b/) {	#:: Clockwork Beetle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(607, $change_amount);
			}
		}
		elsif ($text=~/\b608\b/) {	#:: Nightmare Goblin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(608, $change_amount);
			}
		}
		elsif ($text=~/\b609\b/) {	#:: Karana Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(609, $change_amount);
			}
		}
		elsif ($text=~/\b610\b/) {	#:: Blood Raven
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(610, $change_amount);
			}
		}
		elsif ($text=~/\b611\b/) {	#:: Nightmare Gargoyle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(611, $change_amount);
			}
		}
		elsif ($text=~/\b612\b/) {	#:: Mouths of Insanity
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(612, $change_amount);
			}
		}
		elsif ($text=~/\b613\b/) {	#:: Skeletal Horse
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(613, $change_amount);
			}
		}
		elsif ($text=~/\b614\b/) {	#:: Saryrn Race
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(614, $change_amount);
			}
		}
		elsif ($text=~/\b615\b/) {	#:: Fennin Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(615, $change_amount);
			}
		}
		elsif ($text=~/\b616\b/) {	#:: Tormentor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(616, $change_amount);
			}
		}
		elsif ($text=~/\b617\b/) {	#:: Necromancer Priest
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(617, $change_amount);
			}
		}
		elsif ($text=~/\b618\b/) {	#:: Nightmare, Planar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(618, $change_amount);
			}
		}
		elsif ($text=~/\b619\b/) {	#:: Rallos Zek Race Faction
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(619, $change_amount);
			}
		}
		elsif ($text=~/\b620\b/) {	#:: Vallon Zek Race Faction
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(620, $change_amount);
			}
		}
		elsif ($text=~/\b621\b/) {	#:: Tallon Zek Race Faction
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(621, $change_amount);
			}
		}
		elsif ($text=~/\b622\b/) {	#:: Air Mephit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(622, $change_amount);
			}
		}
		elsif ($text=~/\b623\b/) {	#:: Earth Mephit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(623, $change_amount);
			}
		}
		elsif ($text=~/\b624\b/) {	#:: Fire Mephit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(624, $change_amount);
			}
		}
		elsif ($text=~/\b625\b/) {	#:: Nightmare Mephit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(625, $change_amount);
			}
		}
		elsif ($text=~/\b626\b/) {	#:: Zebuxoruk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(626, $change_amount);
			}
		}
		elsif ($text=~/\b627\b/) {	#:: Mithaniel Marr (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(627, $change_amount);
			}
		}
		elsif ($text=~/\b628\b/) {	#:: Undead Knight
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(628, $change_amount);
			}
		}
		elsif ($text=~/\b629\b/) {	#:: The Rathe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(629, $change_amount);
			}
		}
		elsif ($text=~/\b630\b/) {	#:: Xegony
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(630, $change_amount);
			}
		}
		elsif ($text=~/\b631\b/) {	#:: Greater Fiend
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(631, $change_amount);
			}
		}
		elsif ($text=~/\b632\b/) {	#:: Race Faction (632)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(632, $change_amount);
			}
		}
		elsif ($text=~/\b633\b/) {	#:: Crab
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(633, $change_amount);
			}
		}
		elsif ($text=~/\b634\b/) {	#:: Phoenix
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(634, $change_amount);
			}
		}
		elsif ($text=~/\b635\b/) {	#:: Quarm (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(635, $change_amount);
			}
		}
		elsif ($text=~/\b636\b/) {	#:: Bear PoP
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(636, $change_amount);
			}
		}
		elsif ($text=~/\b637\b/) {	#:: Storm Taarid
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(637, $change_amount);
			}
		}
		elsif ($text=~/\b638\b/) {	#:: Storm Satuur
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(638, $change_amount);
			}
		}
		elsif ($text=~/\b639\b/) {	#:: Storm Kuraaln
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(639, $change_amount);
			}
		}
		elsif ($text=~/\b640\b/) {	#:: Storm Volaas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(640, $change_amount);
			}
		}
		elsif ($text=~/\b641\b/) {	#:: Storm Mana
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(641, $change_amount);
			}
		}
		elsif ($text=~/\b642\b/) {	#:: Storm Fire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(642, $change_amount);
			}
		}
		elsif ($text=~/\b643\b/) {	#:: Storm Celestial
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(643, $change_amount);
			}
		}
		elsif ($text=~/\b644\b/) {	#:: War Wraith
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(644, $change_amount);
			}
		}
		elsif ($text=~/\b645\b/) {	#:: Wrulon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(645, $change_amount);
			}
		}
		elsif ($text=~/\b646\b/) {	#:: Kraken
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(646, $change_amount);
			}
		}
		elsif ($text=~/\b647\b/) {	#:: Poison Frog
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(647, $change_amount);
			}
		}
		elsif ($text=~/\b648\b/) {	#:: Queztocoatal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(648, $change_amount);
			}
		}
		elsif ($text=~/\b649\b/) {	#:: Valorian (War Soldier)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(649, $change_amount);
			}
		}
		elsif ($text=~/\b650\b/) {	#:: War Boar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(650, $change_amount);
			}
		}
		elsif ($text=~/\b651\b/) {	#:: Efreeti PoP
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(651, $change_amount);
			}
		}
		elsif ($text=~/\b652\b/) {	#:: War Boar Unarmored
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(652, $change_amount);
			}
		}
		elsif ($text=~/\b653\b/) {	#:: Black Knight
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(653, $change_amount);
			}
		}
		elsif ($text=~/\b654\b/) {	#:: Animated Armor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(654, $change_amount);
			}
		}
		elsif ($text=~/\b655\b/) {	#:: Undead Footman
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(655, $change_amount);
			}
		}
		elsif ($text=~/\b656\b/) {	#:: Rallos Zek Minion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(656, $change_amount);
			}
		}
		elsif ($text=~/\b657\b/) {	#:: Arachnid - PoP
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(657, $change_amount);
			}
		}
		elsif ($text=~/\b658\b/) {	#:: Crystal Spider (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(658, $change_amount);
			}
		}
		elsif ($text=~/\b659\b/) {	#:: Zebuxoruk's Cage (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(659, $change_amount);
			}
		}
		elsif ($text=~/\b660\b/) {	#:: Bastion of Thunder Portal (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(660, $change_amount);
			}
		}
		elsif ($text=~/\b661\b/) {	#:: Guktan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(661, $change_amount);
			}
		}
		elsif ($text=~/\b662\b/) {	#:: Troll Buccaneer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(662, $change_amount);
			}
		}
		elsif ($text=~/\b663\b/) {	#:: Troll Freebooter
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(663, $change_amount);
			}
		}
		elsif ($text=~/\b664\b/) {	#:: Troll Sea Rover
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(664, $change_amount);
			}
		}
		elsif ($text=~/\b665\b/) {	#:: Spectre Pirate Boss
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(665, $change_amount);
			}
		}
		elsif ($text=~/\b666\b/) {	#:: Pirate Boss
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(666, $change_amount);
			}
		}
		elsif ($text=~/\b667\b/) {	#:: Pirate Dark Shaman
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(667, $change_amount);
			}
		}
		elsif ($text=~/\b668\b/) {	#:: Pirate Officer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(668, $change_amount);
			}
		}
		elsif ($text=~/\b669\b/) {	#:: Gnome Pirate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(669, $change_amount);
			}
		}
		elsif ($text=~/\b670\b/) {	#:: Dark Elf Pirate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(670, $change_amount);
			}
		}
		elsif ($text=~/\b671\b/) {	#:: Ogre Pirate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(671, $change_amount);
			}
		}
		elsif ($text=~/\b672\b/) {	#:: Human Pirate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(672, $change_amount);
			}
		}
		elsif ($text=~/\b673\b/) {	#:: Erudite Pirate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(673, $change_amount);
			}
		}
		elsif ($text=~/\b674\b/) {	#:: Poison Arrow Frog
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(674, $change_amount);
			}
		}
		elsif ($text=~/\b675\b/) {	#:: Troll Zombie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(675, $change_amount);
			}
		}
		elsif ($text=~/\b676\b/) {	#:: Luggald
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(676, $change_amount);
			}
		}
		elsif ($text=~/\b677\b/) {	#:: Luggald Armored
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(677, $change_amount);
			}
		}
		elsif ($text=~/\b678\b/) {	#:: Luggald Robed
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(678, $change_amount);
			}
		}
		elsif ($text=~/\b679\b/) {	#:: Drogmor (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(679, $change_amount);
			}
		}
		elsif ($text=~/\b680\b/) {	#:: Dream Delvers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(680, $change_amount);
			}
		}
		elsif ($text=~/\b681\b/) {	#:: Beta Ally
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(681, $change_amount);
			}
		}
		elsif ($text=~/\b682\b/) {	#:: Beta Warmly
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(682, $change_amount);
			}
		}
		elsif ($text=~/\b683\b/) {	#:: Beta Kindly
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(683, $change_amount);
			}
		}
		elsif ($text=~/\b684\b/) {	#:: Beta Amiable
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(684, $change_amount);
			}
		}
		elsif ($text=~/\b685\b/) {	#:: Beta Apprehensive
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(685, $change_amount);
			}
		}
		elsif ($text=~/\b686\b/) {	#:: Beta Dubious
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(686, $change_amount);
			}
		}
		elsif ($text=~/\b687\b/) {	#:: Beta Threatening
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(687, $change_amount);
			}
		}
		elsif ($text=~/\b688\b/) {	#:: Shissar (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(688, $change_amount);
			}
		}
		elsif ($text=~/\b689\b/) {	#:: Shik Nar (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(689, $change_amount);
			}
		}
		elsif ($text=~/\b690\b/) {	#:: Shik Nar of Mons Letalis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(690, $change_amount);
			}
		}
		elsif ($text=~/\b691\b/) {	#:: Brownie (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(691, $change_amount);
			}
		}
		elsif ($text=~/\b692\b/) {	#:: Pixie (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(692, $change_amount);
			}
		}
		elsif ($text=~/\b693\b/) {	#:: Qeynos Citizen (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(693, $change_amount);
			}
		}
		elsif ($text=~/\b694\b/) {	#:: Erudite Citizen (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(694, $change_amount);
			}
		}
		elsif ($text=~/\b695\b/) {	#:: Clockwork Gnome (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(695, $change_amount);
			}
		}
		elsif ($text=~/\b696\b/) {	#:: Kaladim Citizen (Race)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(696, $change_amount);
			}
		}
		elsif ($text=~/\b697\b/) {	#:: Faction697
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(697, $change_amount);
			}
		}
		elsif ($text=~/\b698\b/) {	#:: Faction698
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(698, $change_amount);
			}
		}
		elsif ($text=~/\b699\b/) {	#:: Faction699
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(699, $change_amount);
			}
		}
		elsif ($text=~/\b700\b/) {	#:: Mercenary Coalition
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(700, $change_amount);
			}
		}
		elsif ($text=~/\b701\b/) {	#:: Beta KOS Copy 1
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(701, $change_amount);
			}
		}
		elsif ($text=~/\b702\b/) {	#:: Beta KOS Copy 2
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(702, $change_amount);
			}
		}
		elsif ($text=~/\b703\b/) {	#:: Beta KOS Copy 3
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(703, $change_amount);
			}
		}
		elsif ($text=~/\b704\b/) {	#:: Beta KOS Copy 4
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(704, $change_amount);
			}
		}
		elsif ($text=~/\b705\b/) {	#:: Beta KOS Copy 5
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(705, $change_amount);
			}
		}
		elsif ($text=~/\b706\b/) {	#:: Beta KOS Copy 6
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(706, $change_amount);
			}
		}
		elsif ($text=~/\b707\b/) {	#:: Beta KOS Copy 7
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(707, $change_amount);
			}
		}
		elsif ($text=~/\b708\b/) {	#:: Beta KOS Copy 8
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(708, $change_amount);
			}
		}
		elsif ($text=~/\b709\b/) {	#:: The Yendan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(709, $change_amount);
			}
		}
		elsif ($text=~/\b710\b/) {	#:: Guardians of War
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(710, $change_amount);
			}
		}
		elsif ($text=~/\b711\b/) {	#:: Castle Rulnavis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(711, $change_amount);
			}
		}
		elsif ($text=~/\b712\b/) {	#:: Castle Tamrel
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(712, $change_amount);
			}
		}
		elsif ($text=~/\b713\b/) {	#:: Soldiers of Tallon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(713, $change_amount);
			}
		}
		elsif ($text=~/\b714\b/) {	#:: Soldiers of Vallon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(714, $change_amount);
			}
		}
		elsif ($text=~/\b715\b/) {	#:: Inhabitants of Rulnavis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(715, $change_amount);
			}
		}
		elsif ($text=~/\b716\b/) {	#:: Inhabitants of Tamrel
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(716, $change_amount);
			}
		}
		elsif ($text=~/\b717\b/) {	#:: Keepers of Narikor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(717, $change_amount);
			}
		}
		elsif ($text=~/\b718\b/) {	#:: The Disgraced
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(718, $change_amount);
			}
		}
		elsif ($text=~/\b719\b/) {	#:: Minions of Rot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(719, $change_amount);
			}
		}
		elsif ($text=~/\b720\b/) {	#:: Memorial Gnomelike
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(720, $change_amount);
			}
		}
		elsif ($text=~/\b721\b/) {	#:: Iron Legion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(721, $change_amount);
			}
		}
		elsif ($text=~/\b722\b/) {	#:: Faction722
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(722, $change_amount);
			}
		}
		elsif ($text=~/\b723\b/) {	#:: Faction723
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(723, $change_amount);
			}
		}
		elsif ($text=~/\b724\b/) {	#:: Faction724
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(724, $change_amount);
			}
		}
		elsif ($text=~/\b725\b/) {	#:: Faction725
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(725, $change_amount);
			}
		}
		elsif ($text=~/\b726\b/) {	#:: Faction726
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(726, $change_amount);
			}
		}
		elsif ($text=~/\b727\b/) {	#:: Faction727
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(727, $change_amount);
			}
		}
		elsif ($text=~/\b728\b/) {	#:: Faction728
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(728, $change_amount);
			}
		}
		elsif ($text=~/\b729\b/) {	#:: Faction729
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(729, $change_amount);
			}
		}
		elsif ($text=~/\b730\b/) {	#:: Faction730
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(730, $change_amount);
			}
		}
		elsif ($text=~/\b731\b/) {	#:: Faction731
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(731, $change_amount);
			}
		}
		elsif ($text=~/\b732\b/) {	#:: Faction732
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(732, $change_amount);
			}
		}
		elsif ($text=~/\b733\b/) {	#:: Faction733
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(733, $change_amount);
			}
		}
		elsif ($text=~/\b734\b/) {	#:: Faction734
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(734, $change_amount);
			}
		}
		elsif ($text=~/\b735\b/) {	#:: Faction735
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(735, $change_amount);
			}
		}
		elsif ($text=~/\b736\b/) {	#:: Faction736
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(736, $change_amount);
			}
		}
		elsif ($text=~/\b737\b/) {	#:: Faction737
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(737, $change_amount);
			}
		}
		elsif ($text=~/\b738\b/) {	#:: Faction738
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(738, $change_amount);
			}
		}
		elsif ($text=~/\b739\b/) {	#:: Faction739
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(739, $change_amount);
			}
		}
		elsif ($text=~/\b740\b/) {	#:: Faction740
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(740, $change_amount);
			}
		}
		elsif ($text=~/\b741\b/) {	#:: Faction741
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(741, $change_amount);
			}
		}
		elsif ($text=~/\b742\b/) {	#:: Faction742
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(742, $change_amount);
			}
		}
		elsif ($text=~/\b743\b/) {	#:: Faction743
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(743, $change_amount);
			}
		}
		elsif ($text=~/\b744\b/) {	#:: Faction744
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(744, $change_amount);
			}
		}
		elsif ($text=~/\b745\b/) {	#:: Faction745
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(745, $change_amount);
			}
		}
		elsif ($text=~/\b746\b/) {	#:: Faction746
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(746, $change_amount);
			}
		}
		elsif ($text=~/\b747\b/) {	#:: Faction747
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(747, $change_amount);
			}
		}
		elsif ($text=~/\b748\b/) {	#:: Faction748
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(748, $change_amount);
			}
		}
		elsif ($text=~/\b749\b/) {	#:: Faction749
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(749, $change_amount);
			}
		}
		elsif ($text=~/\b750\b/) {	#:: Faction750
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(750, $change_amount);
			}
		}
		elsif ($text=~/\b751\b/) {	#:: Faction751
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(751, $change_amount);
			}
		}
		elsif ($text=~/\b752\b/) {	#:: Faction752
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(752, $change_amount);
			}
		}
		elsif ($text=~/\b753\b/) {	#:: Faction753
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(753, $change_amount);
			}
		}
		elsif ($text=~/\b754\b/) {	#:: Faction754
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(754, $change_amount);
			}
		}
		elsif ($text=~/\b755\b/) {	#:: Faction755
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(755, $change_amount);
			}
		}
		elsif ($text=~/\b756\b/) {	#:: Faction756
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(756, $change_amount);
			}
		}
		elsif ($text=~/\b757\b/) {	#:: Faction757
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(757, $change_amount);
			}
		}
		elsif ($text=~/\b758\b/) {	#:: Faction758
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(758, $change_amount);
			}
		}
		elsif ($text=~/\b759\b/) {	#:: Faction759
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(759, $change_amount);
			}
		}
		elsif ($text=~/\b760\b/) {	#:: Faction760
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(760, $change_amount);
			}
		}
		elsif ($text=~/\b761\b/) {	#:: Faction761
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(761, $change_amount);
			}
		}
		elsif ($text=~/\b762\b/) {	#:: Faction762
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(762, $change_amount);
			}
		}
		elsif ($text=~/\b763\b/) {	#:: Faction763
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(763, $change_amount);
			}
		}
		elsif ($text=~/\b764\b/) {	#:: Faction764
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(764, $change_amount);
			}
		}
		elsif ($text=~/\b765\b/) {	#:: Faction765
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(765, $change_amount);
			}
		}
		elsif ($text=~/\b766\b/) {	#:: Faction766
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(766, $change_amount);
			}
		}
		elsif ($text=~/\b767\b/) {	#:: Faction767
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(767, $change_amount);
			}
		}
		elsif ($text=~/\b768\b/) {	#:: Faction768
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(768, $change_amount);
			}
		}
		elsif ($text=~/\b769\b/) {	#:: Faction769
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(769, $change_amount);
			}
		}
		elsif ($text=~/\b770\b/) {	#:: Faction770
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(770, $change_amount);
			}
		}
		elsif ($text=~/\b771\b/) {	#:: Faction771
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(771, $change_amount);
			}
		}
		elsif ($text=~/\b772\b/) {	#:: Faction772
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(772, $change_amount);
			}
		}
		elsif ($text=~/\b773\b/) {	#:: Faction773
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(773, $change_amount);
			}
		}
		elsif ($text=~/\b774\b/) {	#:: Faction774
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(774, $change_amount);
			}
		}
		elsif ($text=~/\b775\b/) {	#:: Faction775
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(775, $change_amount);
			}
		}
		elsif ($text=~/\b776\b/) {	#:: Faction776
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(776, $change_amount);
			}
		}
		elsif ($text=~/\b777\b/) {	#:: Faction777
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(777, $change_amount);
			}
		}
		elsif ($text=~/\b778\b/) {	#:: Faction778
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(778, $change_amount);
			}
		}
		elsif ($text=~/\b779\b/) {	#:: Faction779
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(779, $change_amount);
			}
		}
		elsif ($text=~/\b780\b/) {	#:: Faction780
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(780, $change_amount);
			}
		}
		elsif ($text=~/\b781\b/) {	#:: Faction781
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(781, $change_amount);
			}
		}
		elsif ($text=~/\b782\b/) {	#:: Faction782
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(782, $change_amount);
			}
		}
		elsif ($text=~/\b783\b/) {	#:: Faction783
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(783, $change_amount);
			}
		}
		elsif ($text=~/\b784\b/) {	#:: Faction784
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(784, $change_amount);
			}
		}
		elsif ($text=~/\b785\b/) {	#:: Faction785
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(785, $change_amount);
			}
		}
		elsif ($text=~/\b786\b/) {	#:: Faction786
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(786, $change_amount);
			}
		}
		elsif ($text=~/\b787\b/) {	#:: Faction787
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(787, $change_amount);
			}
		}
		elsif ($text=~/\b788\b/) {	#:: Faction788
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(788, $change_amount);
			}
		}
		elsif ($text=~/\b789\b/) {	#:: Faction789
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(789, $change_amount);
			}
		}
		elsif ($text=~/\b790\b/) {	#:: Faction790
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(790, $change_amount);
			}
		}
		elsif ($text=~/\b791\b/) {	#:: Faction791
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(791, $change_amount);
			}
		}
		elsif ($text=~/\b792\b/) {	#:: Faction792
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(792, $change_amount);
			}
		}
		elsif ($text=~/\b793\b/) {	#:: Faction793
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(793, $change_amount);
			}
		}
		elsif ($text=~/\b794\b/) {	#:: Faction794
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(794, $change_amount);
			}
		}
		elsif ($text=~/\b795\b/) {	#:: Faction795
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(795, $change_amount);
			}
		}
		elsif ($text=~/\b796\b/) {	#:: Faction796
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(796, $change_amount);
			}
		}
		elsif ($text=~/\b797\b/) {	#:: Faction797
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(797, $change_amount);
			}
		}
		elsif ($text=~/\b798\b/) {	#:: Faction798
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(798, $change_amount);
			}
		}
		elsif ($text=~/\b799\b/) {	#:: Faction799
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(799, $change_amount);
			}
		}
		elsif ($text=~/\b800\b/) {	#:: Faction800
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(800, $change_amount);
			}
		}
		elsif ($text=~/\b801\b/) {	#:: Faction801
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(801, $change_amount);
			}
		}
		elsif ($text=~/\b802\b/) {	#:: Faction802
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(802, $change_amount);
			}
		}
		elsif ($text=~/\b803\b/) {	#:: Faction803
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(803, $change_amount);
			}
		}
		elsif ($text=~/\b804\b/) {	#:: Faction804
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(804, $change_amount);
			}
		}
		elsif ($text=~/\b805\b/) {	#:: Faction805
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(805, $change_amount);
			}
		}
		elsif ($text=~/\b806\b/) {	#:: Faction806
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(806, $change_amount);
			}
		}
		elsif ($text=~/\b807\b/) {	#:: Faction807
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(807, $change_amount);
			}
		}
		elsif ($text=~/\b808\b/) {	#:: Faction808
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(808, $change_amount);
			}
		}
		elsif ($text=~/\b809\b/) {	#:: Faction809
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(809, $change_amount);
			}
		}
		elsif ($text=~/\b810\b/) {	#:: Faction810
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(810, $change_amount);
			}
		}
		elsif ($text=~/\b811\b/) {	#:: Faction811
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(811, $change_amount);
			}
		}
		elsif ($text=~/\b812\b/) {	#:: Faction812
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(812, $change_amount);
			}
		}
		elsif ($text=~/\b813\b/) {	#:: Faction813
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(813, $change_amount);
			}
		}
		elsif ($text=~/\b814\b/) {	#:: Faction814
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(814, $change_amount);
			}
		}
		elsif ($text=~/\b815\b/) {	#:: Faction815
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(815, $change_amount);
			}
		}
		elsif ($text=~/\b816\b/) {	#:: Faction816
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(816, $change_amount);
			}
		}
		elsif ($text=~/\b817\b/) {	#:: Faction817
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(817, $change_amount);
			}
		}
		elsif ($text=~/\b818\b/) {	#:: Faction818
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(818, $change_amount);
			}
		}
		elsif ($text=~/\b819\b/) {	#:: Faction819
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(819, $change_amount);
			}
		}
		elsif ($text=~/\b820\b/) {	#:: Faction820
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(820, $change_amount);
			}
		}
		elsif ($text=~/\b821\b/) {	#:: Faction821
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(821, $change_amount);
			}
		}
		elsif ($text=~/\b822\b/) {	#:: Faction822
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(822, $change_amount);
			}
		}
		elsif ($text=~/\b823\b/) {	#:: Faction823
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(823, $change_amount);
			}
		}
		elsif ($text=~/\b824\b/) {	#:: Faction824
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(824, $change_amount);
			}
		}
		elsif ($text=~/\b825\b/) {	#:: Faction825
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(825, $change_amount);
			}
		}
		elsif ($text=~/\b826\b/) {	#:: Faction826
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(826, $change_amount);
			}
		}
		elsif ($text=~/\b827\b/) {	#:: Faction827
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(827, $change_amount);
			}
		}
		elsif ($text=~/\b828\b/) {	#:: Faction828
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(828, $change_amount);
			}
		}
		elsif ($text=~/\b829\b/) {	#:: Faction829
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(829, $change_amount);
			}
		}
		elsif ($text=~/\b830\b/) {	#:: Faction830
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(830, $change_amount);
			}
		}
		elsif ($text=~/\b831\b/) {	#:: Faction831
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(831, $change_amount);
			}
		}
		elsif ($text=~/\b832\b/) {	#:: Faction832
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(832, $change_amount);
			}
		}
		elsif ($text=~/\b833\b/) {	#:: Faction833
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(833, $change_amount);
			}
		}
		elsif ($text=~/\b834\b/) {	#:: Faction834
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(834, $change_amount);
			}
		}
		elsif ($text=~/\b835\b/) {	#:: Faction835
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(835, $change_amount);
			}
		}
		elsif ($text=~/\b836\b/) {	#:: Faction836
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(836, $change_amount);
			}
		}
		elsif ($text=~/\b837\b/) {	#:: Faction837
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(837, $change_amount);
			}
		}
		elsif ($text=~/\b838\b/) {	#:: Faction838
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(838, $change_amount);
			}
		}
		elsif ($text=~/\b839\b/) {	#:: Faction839
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(839, $change_amount);
			}
		}
		elsif ($text=~/\b840\b/) {	#:: Faction840
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(840, $change_amount);
			}
		}
		elsif ($text=~/\b841\b/) {	#:: Faction841
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(841, $change_amount);
			}
		}
		elsif ($text=~/\b842\b/) {	#:: Faction842
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(842, $change_amount);
			}
		}
		elsif ($text=~/\b843\b/) {	#:: Faction843
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(843, $change_amount);
			}
		}
		elsif ($text=~/\b844\b/) {	#:: Faction844
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(844, $change_amount);
			}
		}
		elsif ($text=~/\b845\b/) {	#:: Faction845
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(845, $change_amount);
			}
		}
		elsif ($text=~/\b846\b/) {	#:: Faction846
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(846, $change_amount);
			}
		}
		elsif ($text=~/\b847\b/) {	#:: Faction847
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(847, $change_amount);
			}
		}
		elsif ($text=~/\b848\b/) {	#:: Faction848
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(848, $change_amount);
			}
		}
		elsif ($text=~/\b849\b/) {	#:: Faction849
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(849, $change_amount);
			}
		}
		elsif ($text=~/\b850\b/) {	#:: Faction850
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(850, $change_amount);
			}
		}
		elsif ($text=~/\b851\b/) {	#:: Faction851
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(851, $change_amount);
			}
		}
		elsif ($text=~/\b852\b/) {	#:: Faction852
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(852, $change_amount);
			}
		}
		elsif ($text=~/\b853\b/) {	#:: Faction853
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(853, $change_amount);
			}
		}
		elsif ($text=~/\b854\b/) {	#:: Faction854
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(854, $change_amount);
			}
		}
		elsif ($text=~/\b855\b/) {	#:: Faction855
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(855, $change_amount);
			}
		}
		elsif ($text=~/\b856\b/) {	#:: Faction856
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(856, $change_amount);
			}
		}
		elsif ($text=~/\b857\b/) {	#:: Faction857
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(857, $change_amount);
			}
		}
		elsif ($text=~/\b858\b/) {	#:: Faction858
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(858, $change_amount);
			}
		}
		elsif ($text=~/\b859\b/) {	#:: Faction859
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(859, $change_amount);
			}
		}
		elsif ($text=~/\b860\b/) {	#:: Faction860
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(860, $change_amount);
			}
		}
		elsif ($text=~/\b861\b/) {	#:: Faction861
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(861, $change_amount);
			}
		}
		elsif ($text=~/\b862\b/) {	#:: Faction862
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(862, $change_amount);
			}
		}
		elsif ($text=~/\b863\b/) {	#:: Faction863
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(863, $change_amount);
			}
		}
		elsif ($text=~/\b864\b/) {	#:: Faction864
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(864, $change_amount);
			}
		}
		elsif ($text=~/\b865\b/) {	#:: Faction865
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(865, $change_amount);
			}
		}
		elsif ($text=~/\b866\b/) {	#:: Faction866
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(866, $change_amount);
			}
		}
		elsif ($text=~/\b867\b/) {	#:: Faction867
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(867, $change_amount);
			}
		}
		elsif ($text=~/\b868\b/) {	#:: Faction868
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(868, $change_amount);
			}
		}
		elsif ($text=~/\b869\b/) {	#:: Faction869
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(869, $change_amount);
			}
		}
		elsif ($text=~/\b870\b/) {	#:: Faction870
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(870, $change_amount);
			}
		}
		elsif ($text=~/\b871\b/) {	#:: Faction871
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(871, $change_amount);
			}
		}
		elsif ($text=~/\b872\b/) {	#:: Faction872
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(872, $change_amount);
			}
		}
		elsif ($text=~/\b873\b/) {	#:: Faction873
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(873, $change_amount);
			}
		}
		elsif ($text=~/\b874\b/) {	#:: Faction874
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(874, $change_amount);
			}
		}
		elsif ($text=~/\b875\b/) {	#:: Faction875
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(875, $change_amount);
			}
		}
		elsif ($text=~/\b876\b/) {	#:: Faction876
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(876, $change_amount);
			}
		}
		elsif ($text=~/\b877\b/) {	#:: Faction877
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(877, $change_amount);
			}
		}
		elsif ($text=~/\b878\b/) {	#:: Faction878
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(878, $change_amount);
			}
		}
		elsif ($text=~/\b879\b/) {	#:: Faction879
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(879, $change_amount);
			}
		}
		elsif ($text=~/\b880\b/) {	#:: Faction880
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(880, $change_amount);
			}
		}
		elsif ($text=~/\b881\b/) {	#:: Faction881
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(881, $change_amount);
			}
		}
		elsif ($text=~/\b882\b/) {	#:: Faction882
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(882, $change_amount);
			}
		}
		elsif ($text=~/\b883\b/) {	#:: Faction883
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(883, $change_amount);
			}
		}
		elsif ($text=~/\b884\b/) {	#:: Faction884
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(884, $change_amount);
			}
		}
		elsif ($text=~/\b885\b/) {	#:: Faction885
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(885, $change_amount);
			}
		}
		elsif ($text=~/\b886\b/) {	#:: Faction886
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(886, $change_amount);
			}
		}
		elsif ($text=~/\b887\b/) {	#:: Faction887
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(887, $change_amount);
			}
		}
		elsif ($text=~/\b888\b/) {	#:: Faction888
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(888, $change_amount);
			}
		}
		elsif ($text=~/\b889\b/) {	#:: Faction889
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(889, $change_amount);
			}
		}
		elsif ($text=~/\b890\b/) {	#:: Faction890
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(890, $change_amount);
			}
		}
		elsif ($text=~/\b891\b/) {	#:: Faction891
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(891, $change_amount);
			}
		}
		elsif ($text=~/\b892\b/) {	#:: Faction892
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(892, $change_amount);
			}
		}
		elsif ($text=~/\b893\b/) {	#:: Faction893
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(893, $change_amount);
			}
		}
		elsif ($text=~/\b894\b/) {	#:: Faction894
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(894, $change_amount);
			}
		}
		elsif ($text=~/\b895\b/) {	#:: Faction895
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(895, $change_amount);
			}
		}
		elsif ($text=~/\b896\b/) {	#:: Faction896
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(896, $change_amount);
			}
		}
		elsif ($text=~/\b897\b/) {	#:: Faction897
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(897, $change_amount);
			}
		}
		elsif ($text=~/\b898\b/) {	#:: Faction898
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(898, $change_amount);
			}
		}
		elsif ($text=~/\b899\b/) {	#:: Faction899
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(899, $change_amount);
			}
		}
		elsif ($text=~/\b900\b/) {	#:: Faction900
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(900, $change_amount);
			}
		}
		elsif ($text=~/\b901\b/) {	#:: Faction901
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(901, $change_amount);
			}
		}
		elsif ($text=~/\b902\b/) {	#:: Faction902
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(902, $change_amount);
			}
		}
		elsif ($text=~/\b903\b/) {	#:: Faction903
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(903, $change_amount);
			}
		}
		elsif ($text=~/\b904\b/) {	#:: Faction904
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(904, $change_amount);
			}
		}
		elsif ($text=~/\b905\b/) {	#:: Faction905
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(905, $change_amount);
			}
		}
		elsif ($text=~/\b906\b/) {	#:: Faction906
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(906, $change_amount);
			}
		}
		elsif ($text=~/\b907\b/) {	#:: Faction907
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(907, $change_amount);
			}
		}
		elsif ($text=~/\b908\b/) {	#:: Faction908
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(908, $change_amount);
			}
		}
		elsif ($text=~/\b909\b/) {	#:: Faction909
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(909, $change_amount);
			}
		}
		elsif ($text=~/\b910\b/) {	#:: Faction910
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(910, $change_amount);
			}
		}
		elsif ($text=~/\b911\b/) {	#:: Faction911
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(911, $change_amount);
			}
		}
		elsif ($text=~/\b912\b/) {	#:: Faction912
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(912, $change_amount);
			}
		}
		elsif ($text=~/\b913\b/) {	#:: Faction913
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(913, $change_amount);
			}
		}
		elsif ($text=~/\b914\b/) {	#:: Faction914
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(914, $change_amount);
			}
		}
		elsif ($text=~/\b915\b/) {	#:: Faction915
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(915, $change_amount);
			}
		}
		elsif ($text=~/\b916\b/) {	#:: Faction916
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(916, $change_amount);
			}
		}
		elsif ($text=~/\b917\b/) {	#:: Faction917
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(917, $change_amount);
			}
		}
		elsif ($text=~/\b918\b/) {	#:: Faction918
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(918, $change_amount);
			}
		}
		elsif ($text=~/\b919\b/) {	#:: Faction919
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(919, $change_amount);
			}
		}
		elsif ($text=~/\b920\b/) {	#:: Faction920
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(920, $change_amount);
			}
		}
		elsif ($text=~/\b921\b/) {	#:: Faction921
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(921, $change_amount);
			}
		}
		elsif ($text=~/\b922\b/) {	#:: Faction922
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(922, $change_amount);
			}
		}
		elsif ($text=~/\b923\b/) {	#:: Faction923
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(923, $change_amount);
			}
		}
		elsif ($text=~/\b924\b/) {	#:: Faction924
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(924, $change_amount);
			}
		}
		elsif ($text=~/\b925\b/) {	#:: Faction925
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(925, $change_amount);
			}
		}
		elsif ($text=~/\b926\b/) {	#:: Faction926
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(926, $change_amount);
			}
		}
		elsif ($text=~/\b927\b/) {	#:: Faction927
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(927, $change_amount);
			}
		}
		elsif ($text=~/\b928\b/) {	#:: Faction928
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(928, $change_amount);
			}
		}
		elsif ($text=~/\b929\b/) {	#:: Faction929
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(929, $change_amount);
			}
		}
		elsif ($text=~/\b930\b/) {	#:: Faction930
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(930, $change_amount);
			}
		}
		elsif ($text=~/\b931\b/) {	#:: Faction931
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(931, $change_amount);
			}
		}
		elsif ($text=~/\b932\b/) {	#:: Faction932
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(932, $change_amount);
			}
		}
		elsif ($text=~/\b933\b/) {	#:: Faction933
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(933, $change_amount);
			}
		}
		elsif ($text=~/\b934\b/) {	#:: Faction934
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(934, $change_amount);
			}
		}
		elsif ($text=~/\b935\b/) {	#:: Faction935
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(935, $change_amount);
			}
		}
		elsif ($text=~/\b936\b/) {	#:: Faction936
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(936, $change_amount);
			}
		}
		elsif ($text=~/\b937\b/) {	#:: Faction937
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(937, $change_amount);
			}
		}
		elsif ($text=~/\b938\b/) {	#:: Faction938
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(938, $change_amount);
			}
		}
		elsif ($text=~/\b939\b/) {	#:: Faction939
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(939, $change_amount);
			}
		}
		elsif ($text=~/\b940\b/) {	#:: Faction940
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(940, $change_amount);
			}
		}
		elsif ($text=~/\b941\b/) {	#:: Faction941
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(941, $change_amount);
			}
		}
		elsif ($text=~/\b942\b/) {	#:: Faction942
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(942, $change_amount);
			}
		}
		elsif ($text=~/\b943\b/) {	#:: Faction943
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(943, $change_amount);
			}
		}
		elsif ($text=~/\b944\b/) {	#:: Faction944
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(944, $change_amount);
			}
		}
		elsif ($text=~/\b945\b/) {	#:: Faction945
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(945, $change_amount);
			}
		}
		elsif ($text=~/\b946\b/) {	#:: Faction946
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(946, $change_amount);
			}
		}
		elsif ($text=~/\b947\b/) {	#:: Faction947
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(947, $change_amount);
			}
		}
		elsif ($text=~/\b948\b/) {	#:: Faction948
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(948, $change_amount);
			}
		}
		elsif ($text=~/\b949\b/) {	#:: Faction949
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(949, $change_amount);
			}
		}
		elsif ($text=~/\b950\b/) {	#:: Faction950
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(950, $change_amount);
			}
		}
		elsif ($text=~/\b951\b/) {	#:: Faction951
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(951, $change_amount);
			}
		}
		elsif ($text=~/\b952\b/) {	#:: Faction952
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(952, $change_amount);
			}
		}
		elsif ($text=~/\b953\b/) {	#:: Faction953
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(953, $change_amount);
			}
		}
		elsif ($text=~/\b954\b/) {	#:: Faction954
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(954, $change_amount);
			}
		}
		elsif ($text=~/\b955\b/) {	#:: Faction955
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(955, $change_amount);
			}
		}
		elsif ($text=~/\b956\b/) {	#:: Faction956
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(956, $change_amount);
			}
		}
		elsif ($text=~/\b957\b/) {	#:: Faction957
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(957, $change_amount);
			}
		}
		elsif ($text=~/\b958\b/) {	#:: Faction958
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(958, $change_amount);
			}
		}
		elsif ($text=~/\b959\b/) {	#:: Faction959
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(959, $change_amount);
			}
		}
		elsif ($text=~/\b960\b/) {	#:: Faction960
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(960, $change_amount);
			}
		}
		elsif ($text=~/\b961\b/) {	#:: Faction961
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(961, $change_amount);
			}
		}
		elsif ($text=~/\b962\b/) {	#:: Faction962
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(962, $change_amount);
			}
		}
		elsif ($text=~/\b963\b/) {	#:: Faction963
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(963, $change_amount);
			}
		}
		elsif ($text=~/\b964\b/) {	#:: Faction964
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(964, $change_amount);
			}
		}
		elsif ($text=~/\b965\b/) {	#:: Faction965
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(965, $change_amount);
			}
		}
		elsif ($text=~/\b966\b/) {	#:: Faction966
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(966, $change_amount);
			}
		}
		elsif ($text=~/\b967\b/) {	#:: Faction967
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(967, $change_amount);
			}
		}
		elsif ($text=~/\b968\b/) {	#:: Faction968
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(968, $change_amount);
			}
		}
		elsif ($text=~/\b969\b/) {	#:: Faction969
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(969, $change_amount);
			}
		}
		elsif ($text=~/\b970\b/) {	#:: Faction970
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(970, $change_amount);
			}
		}
		elsif ($text=~/\b971\b/) {	#:: Faction971
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(971, $change_amount);
			}
		}
		elsif ($text=~/\b972\b/) {	#:: Faction972
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(972, $change_amount);
			}
		}
		elsif ($text=~/\b973\b/) {	#:: Faction973
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(973, $change_amount);
			}
		}
		elsif ($text=~/\b974\b/) {	#:: Faction974
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(974, $change_amount);
			}
		}
		elsif ($text=~/\b975\b/) {	#:: Faction975
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(975, $change_amount);
			}
		}
		elsif ($text=~/\b976\b/) {	#:: Faction976
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(976, $change_amount);
			}
		}
		elsif ($text=~/\b977\b/) {	#:: Faction977
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(977, $change_amount);
			}
		}
		elsif ($text=~/\b978\b/) {	#:: Faction978
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(978, $change_amount);
			}
		}
		elsif ($text=~/\b979\b/) {	#:: Faction979
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(979, $change_amount);
			}
		}
		elsif ($text=~/\b980\b/) {	#:: Faction980
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(980, $change_amount);
			}
		}
		elsif ($text=~/\b981\b/) {	#:: Faction981
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(981, $change_amount);
			}
		}
		elsif ($text=~/\b982\b/) {	#:: Faction982
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(982, $change_amount);
			}
		}
		elsif ($text=~/\b983\b/) {	#:: Faction983
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(983, $change_amount);
			}
		}
		elsif ($text=~/\b984\b/) {	#:: Faction984
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(984, $change_amount);
			}
		}
		elsif ($text=~/\b985\b/) {	#:: Faction985
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(985, $change_amount);
			}
		}
		elsif ($text=~/\b986\b/) {	#:: Faction986
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(986, $change_amount);
			}
		}
		elsif ($text=~/\b987\b/) {	#:: Faction987
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(987, $change_amount);
			}
		}
		elsif ($text=~/\b988\b/) {	#:: Faction988
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(988, $change_amount);
			}
		}
		elsif ($text=~/\b989\b/) {	#:: Faction989
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(989, $change_amount);
			}
		}
		elsif ($text=~/\b990\b/) {	#:: Faction990
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(990, $change_amount);
			}
		}
		elsif ($text=~/\b991\b/) {	#:: Faction991
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(991, $change_amount);
			}
		}
		elsif ($text=~/\b992\b/) {	#:: Faction992
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(992, $change_amount);
			}
		}
		elsif ($text=~/\b993\b/) {	#:: Faction993
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(993, $change_amount);
			}
		}
		elsif ($text=~/\b994\b/) {	#:: Faction994
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(994, $change_amount);
			}
		}
		elsif ($text=~/\b995\b/) {	#:: Faction995
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(995, $change_amount);
			}
		}
		elsif ($text=~/\b996\b/) {	#:: Faction996
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(996, $change_amount);
			}
		}
		elsif ($text=~/\b997\b/) {	#:: Faction997
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(997, $change_amount);
			}
		}
		elsif ($text=~/\b998\b/) {	#:: Faction998
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(998, $change_amount);
			}
		}
		elsif ($text=~/\b999\b/) {	#:: Faction999
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(999, $change_amount);
			}
		}
		elsif ($text=~/\b1000\b/) {	#:: Slaves of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1000, $change_amount);
			}
		}
		elsif ($text=~/\b1001\b/) {	#:: Kobolds of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1001, $change_amount);
			}
		}
		elsif ($text=~/\b1002\b/) {	#:: Creatures of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1002, $change_amount);
			}
		}
		elsif ($text=~/\b1003\b/) {	#:: Guards of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1003, $change_amount);
			}
		}
		elsif ($text=~/\b1004\b/) {	#:: Animals of Taelosia
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1004, $change_amount);
			}
		}
		elsif ($text=~/\b1005\b/) {	#:: Qeynos Elite Watch
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1005, $change_amount);
			}
		}
		elsif ($text=~/\b1006\b/) {	#:: Troupe of Free Speakers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1006, $change_amount);
			}
		}
		elsif ($text=~/\b1007\b/) {	#:: Riftseekers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1007, $change_amount);
			}
		}
		elsif ($text=~/\b1008\b/) {	#:: Discordant Creatures of Kuua
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1008, $change_amount);
			}
		}
		elsif ($text=~/\b1009\b/) {	#:: Denizens of Discord
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1009, $change_amount);
			}
		}
		elsif ($text=~/\b1010\b/) {	#:: Children of Dranik
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1010, $change_amount);
			}
		}
		elsif ($text=~/\b1011\b/) {	#:: Followers of Mekvidarsh
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1011, $change_amount);
			}
		}
		elsif ($text=~/\b1012\b/) {	#:: Followers of Loschryre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1012, $change_amount);
			}
		}
		elsif ($text=~/\b1013\b/) {	#:: Overlord Mata Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1013, $change_amount);
			}
		}
		elsif ($text=~/\b1014\b/) {	#:: BetaOmensNPCKOS
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1014, $change_amount);
			}
		}
		elsif ($text=~/\b1015\b/) {	#:: Creatures of Kuua
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1015, $change_amount);
			}
		}
		elsif ($text=~/\b1016\b/) {	#:: Dranik Loyalists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1016, $change_amount);
			}
		}
		elsif ($text=~/\b1017\b/) {	#:: Senior Guides of Norrath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1017, $change_amount);
			}
		}
		elsif ($text=~/\b1018\b/) {	#:: Children of Mistmoore
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1018, $change_amount);
			}
		}
		elsif ($text=~/\b1019\b/) {	#:: Elemental Invaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1019, $change_amount);
			}
		}
		elsif ($text=~/\b1020\b/) {	#:: Lanys T`Vyl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1020, $change_amount);
			}
		}
		elsif ($text=~/\b1021\b/) {	#:: Dark Reign
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1021, $change_amount);
			}
		}
		elsif ($text=~/\b1022\b/) {	#:: Firiona Vie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1022, $change_amount);
			}
		}
		elsif ($text=~/\b1023\b/) {	#:: Norrath's Keepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1023, $change_amount);
			}
		}
		elsif ($text=~/\b1024\b/) {	#:: Tirranun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1024, $change_amount);
			}
		}
		elsif ($text=~/\b1025\b/) {	#:: Minions of Tirranun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1025, $change_amount);
			}
		}
		elsif ($text=~/\b1026\b/) {	#:: Volkara
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1026, $change_amount);
			}
		}
		elsif ($text=~/\b1027\b/) {	#:: Volkara's Brood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1027, $change_amount);
			}
		}
		elsif ($text=~/\b1028\b/) {	#:: Yar`lir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1028, $change_amount);
			}
		}
		elsif ($text=~/\b1029\b/) {	#:: Thunder Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1029, $change_amount);
			}
		}
		elsif ($text=~/\b1030\b/) {	#:: Kessdona
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1030, $change_amount);
			}
		}
		elsif ($text=~/\b1031\b/) {	#:: Rikkukin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1031, $change_amount);
			}
		}
		elsif ($text=~/\b1032\b/) {	#:: Stillmoon Acolytes
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1032, $change_amount);
			}
		}
		elsif ($text=~/\b1033\b/) {	#:: Vishimtar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1033, $change_amount);
			}
		}
		elsif ($text=~/\b1034\b/) {	#:: Nest Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1034, $change_amount);
			}
		}
		elsif ($text=~/\b1035\b/) {	#:: Cursed Drakes
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1035, $change_amount);
			}
		}
		elsif ($text=~/\b1036\b/) {	#:: Scorchclaw Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1036, $change_amount);
			}
		}
		elsif ($text=~/\b1037\b/) {	#:: Frostflake Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1037, $change_amount);
			}
		}
		elsif ($text=~/\b1038\b/) {	#:: Whitecap Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1038, $change_amount);
			}
		}
		elsif ($text=~/\b1039\b/) {	#:: Dirtdigger Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1039, $change_amount);
			}
		}
		elsif ($text=~/\b1040\b/) {	#:: Greenfoot Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1040, $change_amount);
			}
		}
		elsif ($text=~/\b1041\b/) {	#:: Grel
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1041, $change_amount);
			}
		}
		elsif ($text=~/\b1042\b/) {	#:: Defenders of the Broodlands
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1042, $change_amount);
			}
		}
		elsif ($text=~/\b1043\b/) {	#:: BetaNPCKOS-PC
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1043, $change_amount);
			}
		}
		elsif ($text=~/\b1044\b/) {	#:: The Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1044, $change_amount);
			}
		}
		elsif ($text=~/\b1045\b/) {	#:: The Guardian's Alliance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1045, $change_amount);
			}
		}
		elsif ($text=~/\b1046\b/) {	#:: The Dark Alliance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1046, $change_amount);
			}
		}
		elsif ($text=~/\b1047\b/) {	#:: The Dark Suppliers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1047, $change_amount);
			}
		}
		elsif ($text=~/\b1048\b/) {	#:: Sporali Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1048, $change_amount);
			}
		}
		elsif ($text=~/\b1049\b/) {	#:: Deep Sporali
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1049, $change_amount);
			}
		}
		elsif ($text=~/\b1050\b/) {	#:: Expedition 328
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1050, $change_amount);
			}
		}
		elsif ($text=~/\b1051\b/) {	#:: Creep Reapers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1051, $change_amount);
			}
		}
		elsif ($text=~/\b1052\b/) {	#:: Shadowmane
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1052, $change_amount);
			}
		}
		elsif ($text=~/\b1053\b/) {	#:: Ragepaw
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1053, $change_amount);
			}
		}
		elsif ($text=~/\b1054\b/) {	#:: Shiliskin Empire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1054, $change_amount);
			}
		}
		elsif ($text=~/\b1055\b/) {	#:: Free Traders of Malgrinnor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1055, $change_amount);
			}
		}
		elsif ($text=~/\b1056\b/) {	#:: Fallen Guard of Illsalin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1056, $change_amount);
			}
		}
		elsif ($text=~/\b1057\b/) {	#:: Disciples of Jarzarrad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1057, $change_amount);
			}
		}
		elsif ($text=~/\b1058\b/) {	#:: Scions of Dreadspire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1058, $change_amount);
			}
		}
		elsif ($text=~/\b1059\b/) {	#:: Agents of Dreadspire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1059, $change_amount);
			}
		}
		elsif ($text=~/\b1060\b/) {	#:: Creatures of Darkhollow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1060, $change_amount);
			}
		}
		elsif ($text=~/\b1061\b/) {	#:: BetaNPCKOS-NPC
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1061, $change_amount);
			}
		}
		elsif ($text=~/\b1062\b/) {	#:: Assistants of the Scribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1062, $change_amount);
			}
		}
		elsif ($text=~/\b1063\b/) {	#:: Citizens of Freeport
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1063, $change_amount);
			}
		}
		elsif ($text=~/\b1064\b/) {	#:: Spirits of Arcstone
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1064, $change_amount);
			}
		}
		elsif ($text=~/\b1065\b/) {	#:: Fledgling Scrykin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1065, $change_amount);
			}
		}
		elsif ($text=~/\b1066\b/) {	#:: Elder Scrykin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1066, $change_amount);
			}
		}
		elsif ($text=~/\b1067\b/) {	#:: Constructs of Relic
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1067, $change_amount);
			}
		}
		elsif ($text=~/\b1068\b/) {	#:: Legions of Sverag
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1068, $change_amount);
			}
		}
		elsif ($text=~/\b1069\b/) {	#:: Ravenous Undead
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1069, $change_amount);
			}
		}
		elsif ($text=~/\b1070\b/) {	#:: Wildfang
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1070, $change_amount);
			}
		}
		elsif ($text=~/\b1071\b/) {	#:: Redfist Legionnaires
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1071, $change_amount);
			}
		}
		elsif ($text=~/\b1072\b/) {	#:: The Irebound
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1072, $change_amount);
			}
		}
		elsif ($text=~/\b1073\b/) {	#:: Ragefang
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1073, $change_amount);
			}
		}
		elsif ($text=~/\b1074\b/) {	#:: The Venom Swarm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1074, $change_amount);
			}
		}
		elsif ($text=~/\b1075\b/) {	#:: Deathshed Legion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1075, $change_amount);
			}
		}
		elsif ($text=~/\b1076\b/) {	#:: Blood Furies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1076, $change_amount);
			}
		}
		elsif ($text=~/\b1077\b/) {	#:: Furies of the North
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1077, $change_amount);
			}
		}
		elsif ($text=~/\b1078\b/) {	#:: Stormbreaker Furies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1078, $change_amount);
			}
		}
		elsif ($text=~/\b1079\b/) {	#:: Bonecracker Furies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1079, $change_amount);
			}
		}
		elsif ($text=~/\b1080\b/) {	#:: Furies of Shir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1080, $change_amount);
			}
		}
		elsif ($text=~/\b1081\b/) {	#:: The Wall-Borne
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1081, $change_amount);
			}
		}
		elsif ($text=~/\b1082\b/) {	#:: Legion of Rage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1082, $change_amount);
			}
		}
		elsif ($text=~/\b1083\b/) {	#:: The Wretched
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1083, $change_amount);
			}
		}
		elsif ($text=~/\b1084\b/) {	#:: Trueblood Coven
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1084, $change_amount);
			}
		}
		elsif ($text=~/\b1085\b/) {	#:: Citizens of Takish-Hiz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1085, $change_amount);
			}
		}
		elsif ($text=~/\b1086\b/) {	#:: Insurgents of Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1086, $change_amount);
			}
		}
		elsif ($text=~/\b1087\b/) {	#:: Creatures of Elddar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1087, $change_amount);
			}
		}
		elsif ($text=~/\b1088\b/) {	#:: Clan Vorzek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1088, $change_amount);
			}
		}
		elsif ($text=~/\b1089\b/) {	#:: Tribe of the Nogdha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1089, $change_amount);
			}
		}
		elsif ($text=~/\b1090\b/) {	#:: Servants of the Compact
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1090, $change_amount);
			}
		}
		elsif ($text=~/\b1091\b/) {	#:: Creatures of Sandflow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1091, $change_amount);
			}
		}
		elsif ($text=~/\b1092\b/) {	#:: Blood of Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1092, $change_amount);
			}
		}
		elsif ($text=~/\b1093\b/) {	#:: Direwind Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1093, $change_amount);
			}
		}
		elsif ($text=~/\b1094\b/) {	#:: Forces of Dyn'leth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1094, $change_amount);
			}
		}
		elsif ($text=~/\b1095\b/) {	#:: Crusade of the Scale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1095, $change_amount);
			}
		}
		elsif ($text=~/\b1096\b/) {	#:: Blackfeather Harpies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1096, $change_amount);
			}
		}
		elsif ($text=~/\b1097\b/) {	#:: Blackfeather Royalty
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1097, $change_amount);
			}
		}
		elsif ($text=~/\b1098\b/) {	#:: Blackfeather Animals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1098, $change_amount);
			}
		}
		elsif ($text=~/\b1099\b/) {	#:: Blackfeather Spiders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1099, $change_amount);
			}
		}
		elsif ($text=~/\b1100\b/) {	#:: Shades of Zek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1100, $change_amount);
			}
		}
		elsif ($text=~/\b1101\b/) {	#:: Ancestors of Valdeholm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1101, $change_amount);
			}
		}
		elsif ($text=~/\b1102\b/) {	#:: Converts of Valdeholm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1102, $change_amount);
			}
		}
		elsif ($text=~/\b1103\b/) {	#:: Valdeholm Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1103, $change_amount);
			}
		}
		elsif ($text=~/\b1104\b/) {	#:: Wraithguard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1104, $change_amount);
			}
		}
		elsif ($text=~/\b1105\b/) {	#:: Wraithguard Leadership
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1105, $change_amount);
			}
		}
		elsif ($text=~/\b1106\b/) {	#:: Drakkin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1106, $change_amount);
			}
		}
		elsif ($text=~/\b1107\b/) {	#:: Tuffein
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1107, $change_amount);
			}
		}
		elsif ($text=~/\b1108\b/) {	#:: Tuffein Leadership
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1108, $change_amount);
			}
		}
		elsif ($text=~/\b1109\b/) {	#:: Minohten
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1109, $change_amount);
			}
		}
		elsif ($text=~/\b1110\b/) {	#:: Nymphs of the Windwillow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1110, $change_amount);
			}
		}
		elsif ($text=~/\b1111\b/) {	#:: Nymphs of the Darkwater
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1111, $change_amount);
			}
		}
		elsif ($text=~/\b1112\b/) {	#:: Blackfeather Raiders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1112, $change_amount);
			}
		}
		elsif ($text=~/\b1113\b/) {	#:: Dromrek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1113, $change_amount);
			}
		}
		elsif ($text=~/\b1114\b/) {	#:: Lost of the Windwillow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1114, $change_amount);
			}
		}
		elsif ($text=~/\b1115\b/) {	#:: Foulblood Fieldstrider Centaur
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1115, $change_amount);
			}
		}
		elsif ($text=~/\b1116\b/) {	#:: Fieldstrider Centaur
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1116, $change_amount);
			}
		}
		elsif ($text=~/\b1117\b/) {	#:: Stonemight Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1117, $change_amount);
			}
		}
		elsif ($text=~/\b1118\b/) {	#:: Darkfell Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1118, $change_amount);
			}
		}
		elsif ($text=~/\b1119\b/) {	#:: Guardians of the Grove
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1119, $change_amount);
			}
		}
		elsif ($text=~/\b1120\b/) {	#:: Coldeye Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1120, $change_amount);
			}
		}
		elsif ($text=~/\b1121\b/) {	#:: Nightmoon Kobolds
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1121, $change_amount);
			}
		}
		elsif ($text=~/\b1122\b/) {	#:: Frostbite Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1122, $change_amount);
			}
		}
		elsif ($text=~/\b1123\b/) {	#:: Drones of Stonehive
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1123, $change_amount);
			}
		}
		elsif ($text=~/\b1124\b/) {	#:: Legion of Stonehive
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1124, $change_amount);
			}
		}
		elsif ($text=~/\b1125\b/) {	#:: Spirits of Nokk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1125, $change_amount);
			}
		}
		elsif ($text=~/\b1126\b/) {	#:: Guardians of the Dark Tower
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1126, $change_amount);
			}
		}
		elsif ($text=~/\b1127\b/) {	#:: The Blightfire Tainted
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1127, $change_amount);
			}
		}
		elsif ($text=~/\b1128\b/) {	#:: Madcaps - Mushroom Men
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1128, $change_amount);
			}
		}
		elsif ($text=~/\b1129\b/) {	#:: Circle of the Crystalwing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1129, $change_amount);
			}
		}
		elsif ($text=~/\b1130\b/) {	#:: Selay
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1130, $change_amount);
			}
		}
		elsif ($text=~/\b1131\b/) {	#:: Dyn`leth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1131, $change_amount);
			}
		}
		elsif ($text=~/\b1132\b/) {	#:: Lethar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1132, $change_amount);
			}
		}
		elsif ($text=~/\b1133\b/) {	#:: Vergalid
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1133, $change_amount);
			}
		}
		elsif ($text=~/\b1134\b/) {	#:: Scholars of Solusek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1134, $change_amount);
			}
		}
		elsif ($text=~/\b1135\b/) {	#:: Infiltrators and Traitors of Ashengate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1135, $change_amount);
			}
		}
		elsif ($text=~/\b1136\b/) {	#:: Nature Animal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1136, $change_amount);
			}
		}
		elsif ($text=~/\b1137\b/) {	#:: Crescent Reach Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1137, $change_amount);
			}
		}
		elsif ($text=~/\b1138\b/) {	#:: Greater Shades of Zek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1138, $change_amount);
			}
		}
		elsif ($text=~/\b1139\b/) {	#:: Newbie Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1139, $change_amount);
			}
		}
		elsif ($text=~/\b1140\b/) {	#:: Drowned Dead
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1140, $change_amount);
			}
		}
		elsif ($text=~/\b1141\b/) {	#:: Sharpeye's Reef Runners
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1141, $change_amount);
			}
		}
		elsif ($text=~/\b1142\b/) {	#:: Blacksail Pirates
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1142, $change_amount);
			}
		}
		elsif ($text=~/\b1143\b/) {	#:: Stormscape Aviaks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1143, $change_amount);
			}
		}
		elsif ($text=~/\b1144\b/) {	#:: Galigaba
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1144, $change_amount);
			}
		}
		elsif ($text=~/\b1145\b/) {	#:: King Peleke
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1145, $change_amount);
			}
		}
		elsif ($text=~/\b1146\b/) {	#:: Sunstone Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1146, $change_amount);
			}
		}
		elsif ($text=~/\b1147\b/) {	#:: King Vigdos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1147, $change_amount);
			}
		}
		elsif ($text=~/\b1148\b/) {	#:: Tidewater Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1148, $change_amount);
			}
		}
		elsif ($text=~/\b1149\b/) {	#:: King Tondra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1149, $change_amount);
			}
		}
		elsif ($text=~/\b1150\b/) {	#:: Platinum Efreeti
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1150, $change_amount);
			}
		}
		elsif ($text=~/\b1151\b/) {	#:: Sphinx of Atiiki
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1151, $change_amount);
			}
		}
		elsif ($text=~/\b1152\b/) {	#:: Nature Animal - Snake
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1152, $change_amount);
			}
		}
		elsif ($text=~/\b1153\b/) {	#:: Nature Animal - Crocodile
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1153, $change_amount);
			}
		}
		elsif ($text=~/\b1154\b/) {	#:: Nature Animal - Basilisk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1154, $change_amount);
			}
		}
		elsif ($text=~/\b1155\b/) {	#:: Nature Animal - Shark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1155, $change_amount);
			}
		}
		elsif ($text=~/\b1156\b/) {	#:: Nature Animal - Spider
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1156, $change_amount);
			}
		}
		elsif ($text=~/\b1157\b/) {	#:: Nature Animal - Wolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1157, $change_amount);
			}
		}
		elsif ($text=~/\b1158\b/) {	#:: Nature Animal - Bear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1158, $change_amount);
			}
		}
		elsif ($text=~/\b1159\b/) {	#:: Nature Animal - Beetle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1159, $change_amount);
			}
		}
		elsif ($text=~/\b1160\b/) {	#:: Nature Animal - Fish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1160, $change_amount);
			}
		}
		elsif ($text=~/\b1161\b/) {	#:: Combine Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1161, $change_amount);
			}
		}
		elsif ($text=~/\b1162\b/) {	#:: Disciples of Zhisza
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1162, $change_amount);
			}
		}
		elsif ($text=~/\b1163\b/) {	#:: Brood of Vaakiszh
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1163, $change_amount);
			}
		}
		elsif ($text=~/\b1164\b/) {	#:: Fangs of Saarisz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1164, $change_amount);
			}
		}
		elsif ($text=~/\b1165\b/) {	#:: Katta Elementals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1165, $change_amount);
			}
		}
		elsif ($text=~/\b1166\b/) {	#:: Sirens of Maiden's Grave
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1166, $change_amount);
			}
		}
		elsif ($text=~/\b1167\b/) {	#:: The Cursed of Monkey Rock
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1167, $change_amount);
			}
		}
		elsif ($text=~/\b1168\b/) {	#:: Minions of Solusek Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1168, $change_amount);
			}
		}
		elsif ($text=~/\b1169\b/) {	#:: Blacksail Smugglers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1169, $change_amount);
			}
		}
		elsif ($text=~/\b1170\b/) {	#:: Combine Empire Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1170, $change_amount);
			}
		}
		elsif ($text=~/\b1171\b/) {	#:: Beta Enemy
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1171, $change_amount);
			}
		}
		elsif ($text=~/\b1172\b/) {	#:: Beta Friend
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1172, $change_amount);
			}
		}
		elsif ($text=~/\b1173\b/) {	#:: Beta Neutral 2
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1173, $change_amount);
			}
		}
		elsif ($text=~/\b1174\b/) {	#:: The Cursed of Monkey Rock (Instance)
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1174, $change_amount);
			}
		}
		elsif ($text=~/\b1175\b/) {	#:: Captains of Dyn`leth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1175, $change_amount);
			}
		}
		elsif ($text=~/\b1176\b/) {	#:: Blood of Solusek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1176, $change_amount);
			}
		}
		elsif ($text=~/\b1177\b/) {	#:: Guardian 
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1177, $change_amount);
			}
		}
		elsif ($text=~/\b1178\b/) {	#:: Workshop Workers Union
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1178, $change_amount);
			}
		}
		elsif ($text=~/\b1179\b/) {	#:: Blackwater
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1179, $change_amount);
			}
		}
		elsif ($text=~/\b1180\b/) {	#:: Kirathas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1180, $change_amount);
			}
		}
		elsif ($text=~/\b1181\b/) {	#:: The Borrowers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1181, $change_amount);
			}
		}
		elsif ($text=~/\b1182\b/) {	#:: Erollisi's Scorned
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1182, $change_amount);
			}
		}
		elsif ($text=~/\b1183\b/) {	#:: Bertoxxulous' Chosen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1183, $change_amount);
			}
		}
		elsif ($text=~/\b1184\b/) {	#:: Camp Valor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1184, $change_amount);
			}
		}
		elsif ($text=~/\b1185\b/) {	#:: Ladies of the Light
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1185, $change_amount);
			}
		}
		elsif ($text=~/\b1186\b/) {	#:: Loyalists of Kerafyrm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1186, $change_amount);
			}
		}
		elsif ($text=~/\b1187\b/) {	#:: Emissaries of Claws of Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1187, $change_amount);
			}
		}
		elsif ($text=~/\b1188\b/) {	#:: Crusaders of Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1188, $change_amount);
			}
		}
		elsif ($text=~/\b1189\b/) {	#:: Brownie Rebels
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1189, $change_amount);
			}
		}
		elsif ($text=~/\b1190\b/) {	#:: Ak`Anon Strike Force V
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1190, $change_amount);
			}
		}
		elsif ($text=~/\b1191\b/) {	#:: Fang Breakers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1191, $change_amount);
			}
		}
		elsif ($text=~/\b1192\b/) {	#:: The Fallen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1192, $change_amount);
			}
		}
		elsif ($text=~/\b1193\b/) {	#:: Ancestors of the Crypt
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1193, $change_amount);
			}
		}
		elsif ($text=~/\b1194\b/) {	#:: Minions of Meldrath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1194, $change_amount);
			}
		}
		elsif ($text=~/\b1195\b/) {	#:: Bloodmoon Were-Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1195, $change_amount);
			}
		}
		elsif ($text=~/\b1196\b/) {	#:: Darkvine Villagers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1196, $change_amount);
			}
		}
		elsif ($text=~/\b1197\b/) {	#:: Wind Nymphs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1197, $change_amount);
			}
		}
		elsif ($text=~/\b1198\b/) {	#:: Guardian Defense Forces
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1198, $change_amount);
			}
		}
		elsif ($text=~/\b1199\b/) {	#:: Residents of the Glade
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1199, $change_amount);
			}
		}
		elsif ($text=~/\b1200\b/) {	#:: Bayle's Irregulars
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1200, $change_amount);
			}
		}
		elsif ($text=~/\b1201\b/) {	#:: Plaguebringer Parishioners
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1201, $change_amount);
			}
		}
		elsif ($text=~/\b1202\b/) {	#:: Blackburrow Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1202, $change_amount);
			}
		}
		elsif ($text=~/\b1203\b/) {	#:: Darkpaw Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1203, $change_amount);
			}
		}
		elsif ($text=~/\b1204\b/) {	#:: Army of Light 
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1204, $change_amount);
			}
		}
		elsif ($text=~/\b1205\b/) {	#:: Thaulen Teir'Duuren
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1205, $change_amount);
			}
		}
		elsif ($text=~/\b1206\b/) {	#:: Kithicor Irregulars
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1206, $change_amount);
			}
		}
		elsif ($text=~/\b1207\b/) {	#:: Prisoners of the Dark Elves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1207, $change_amount);
			}
		}
		elsif ($text=~/\b1208\b/) {	#:: Discordant Agents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1208, $change_amount);
			}
		}
		elsif ($text=~/\b1209\b/) {	#:: Dragorn Forces
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1209, $change_amount);
			}
		}
		elsif ($text=~/\b1210\b/) {	#:: Discordant Army
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1210, $change_amount);
			}
		}
		elsif ($text=~/\b1211\b/) {	#:: Toskirakk Slaves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1211, $change_amount);
			}
		}
		elsif ($text=~/\b1212\b/) {	#:: Toskirakk Slavers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1212, $change_amount);
			}
		}
		elsif ($text=~/\b1213\b/) {	#:: Rallosian Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1213, $change_amount);
			}
		}
		elsif ($text=~/\b1214\b/) {	#:: Toskirakk Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1214, $change_amount);
			}
		}
		elsif ($text=~/\b1215\b/) {	#:: Rathe Council
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1215, $change_amount);
			}
		}
		elsif ($text=~/\b1216\b/) {	#:: Rallosian Invaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1216, $change_amount);
			}
		}
		elsif ($text=~/\b1217\b/) {	#:: Rathe Living Heaps
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1217, $change_amount);
			}
		}
		elsif ($text=~/\b1218\b/) {	#:: Rathe Council Defenders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1218, $change_amount);
			}
		}
		elsif ($text=~/\b1219\b/) {	#:: Darkhammer Dwarves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1219, $change_amount);
			}
		}
		elsif ($text=~/\b1220\b/) {	#:: Primal Crystallines
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1220, $change_amount);
			}
		}
		elsif ($text=~/\b1221\b/) {	#:: Oceangreen Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1221, $change_amount);
			}
		}
		elsif ($text=~/\b1222\b/) {	#:: Cirtan, Bayle's Herald
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1222, $change_amount);
			}
		}
		elsif ($text=~/\b1223\b/) {	#:: Silla Herald
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1223, $change_amount);
			}
		}
		elsif ($text=~/\b1224\b/) {	#:: Tynoc, Herald of Scale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1224, $change_amount);
			}
		}
		elsif ($text=~/\b1225\b/) {	#:: Mitius, Herald of Change
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1225, $change_amount);
			}
		}
		elsif ($text=~/\b1226\b/) {	#:: Herald Argoth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1226, $change_amount);
			}
		}
		elsif ($text=~/\b1227\b/) {	#:: Herald of Druzzil Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1227, $change_amount);
			}
		}
		elsif ($text=~/\b1228\b/) {	#:: Ancient Blackburrow Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1228, $change_amount);
			}
		}
		elsif ($text=~/\b1229\b/) {	#:: Sebilisian Empire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1229, $change_amount);
			}
		}
		elsif ($text=~/\b1230\b/) {	#:: Discordant Armies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1230, $change_amount);
			}
		}
		elsif ($text=~/\b1231\b/) {	#:: Tanglefuse's Clockworks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1231, $change_amount);
			}
		}
		elsif ($text=~/\b1232\b/) {	#:: Underfoot Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1232, $change_amount);
			}
		}
		elsif ($text=~/\b1233\b/) {	#:: Underfoot Autarchs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1233, $change_amount);
			}
		}
		elsif ($text=~/\b1234\b/) {	#:: Underfoot Denizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1234, $change_amount);
			}
		}
		elsif ($text=~/\b1235\b/) {	#:: Underfoot Protectors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1235, $change_amount);
			}
		}
		elsif ($text=~/\b1236\b/) {	#:: Underfoot Devout
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1236, $change_amount);
			}
		}
		elsif ($text=~/\b1237\b/) {	#:: Cliknar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1237, $change_amount);
			}
		}
		elsif ($text=~/\b1238\b/) {	#:: Underfoot Subversionists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1238, $change_amount);
			}
		}
		elsif ($text=~/\b1239\b/) {	#:: Clockwork Magma Meter
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1239, $change_amount);
			}
		}
		elsif ($text=~/\b1240\b/) {	#:: Morell-Thule
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1240, $change_amount);
			}
		}
		elsif ($text=~/\b1241\b/) {	#:: Degmar's Loyalists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1241, $change_amount);
			}
		}
		elsif ($text=~/\b1242\b/) {	#:: Degmar's Commoners
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1242, $change_amount);
			}
		}
		elsif ($text=~/\b1243\b/) {	#:: Degmar's Haunts
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1243, $change_amount);
			}
		}
		elsif ($text=~/\b1244\b/) {	#:: Brother Island Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1244, $change_amount);
			}
		}
		elsif ($text=~/\b1245\b/) {	#:: Brother Island Animal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1245, $change_amount);
			}
		}
		elsif ($text=~/\b1246\b/) {	#:: Sirens of the Endless Cavern
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1246, $change_amount);
			}
		}
		elsif ($text=~/\b1247\b/) {	#:: Faction1247
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1247, $change_amount);
			}
		}
		elsif ($text=~/\b1248\b/) {	#:: Faction1248
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1248, $change_amount);
			}
		}
		elsif ($text=~/\b1249\b/) {	#:: Faction1249
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1249, $change_amount);
			}
		}
		elsif ($text=~/\b1250\b/) {	#:: Faction1250
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1250, $change_amount);
			}
		}
		elsif ($text=~/\b1251\b/) {	#:: Faction1251
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1251, $change_amount);
			}
		}
		elsif ($text=~/\b1252\b/) {	#:: Faction1252
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1252, $change_amount);
			}
		}
		elsif ($text=~/\b1253\b/) {	#:: Faction1253
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1253, $change_amount);
			}
		}
		elsif ($text=~/\b1254\b/) {	#:: Faction1254
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1254, $change_amount);
			}
		}
		elsif ($text=~/\b1255\b/) {	#:: Faction1255
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1255, $change_amount);
			}
		}
		elsif ($text=~/\b1256\b/) {	#:: Faction1256
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1256, $change_amount);
			}
		}
		elsif ($text=~/\b1257\b/) {	#:: Faction1257
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1257, $change_amount);
			}
		}
		elsif ($text=~/\b1258\b/) {	#:: Faction1258
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1258, $change_amount);
			}
		}
		elsif ($text=~/\b1259\b/) {	#:: Faction1259
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1259, $change_amount);
			}
		}
		elsif ($text=~/\b1260\b/) {	#:: Faction1260
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1260, $change_amount);
			}
		}
		elsif ($text=~/\b1261\b/) {	#:: Faction1261
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1261, $change_amount);
			}
		}
		elsif ($text=~/\b1262\b/) {	#:: Faction1262
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1262, $change_amount);
			}
		}
		elsif ($text=~/\b1263\b/) {	#:: Faction1263
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1263, $change_amount);
			}
		}
		elsif ($text=~/\b1264\b/) {	#:: Faction1264
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1264, $change_amount);
			}
		}
		elsif ($text=~/\b1265\b/) {	#:: Faction1265
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1265, $change_amount);
			}
		}
		elsif ($text=~/\b1266\b/) {	#:: Faction1266
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1266, $change_amount);
			}
		}
		elsif ($text=~/\b1267\b/) {	#:: Faction1267
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1267, $change_amount);
			}
		}
		elsif ($text=~/\b1268\b/) {	#:: Faction1268
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1268, $change_amount);
			}
		}
		elsif ($text=~/\b1269\b/) {	#:: Faction1269
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1269, $change_amount);
			}
		}
		elsif ($text=~/\b1270\b/) {	#:: Faction1270
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1270, $change_amount);
			}
		}
		elsif ($text=~/\b1271\b/) {	#:: Faction1271
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1271, $change_amount);
			}
		}
		elsif ($text=~/\b1272\b/) {	#:: Faction1272
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1272, $change_amount);
			}
		}
		elsif ($text=~/\b1273\b/) {	#:: Faction1273
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1273, $change_amount);
			}
		}
		elsif ($text=~/\b1274\b/) {	#:: Faction1274
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1274, $change_amount);
			}
		}
		elsif ($text=~/\b1275\b/) {	#:: Faction1275
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1275, $change_amount);
			}
		}
		elsif ($text=~/\b1276\b/) {	#:: Faction1276
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1276, $change_amount);
			}
		}
		elsif ($text=~/\b1277\b/) {	#:: Faction1277
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1277, $change_amount);
			}
		}
		elsif ($text=~/\b1278\b/) {	#:: Faction1278
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1278, $change_amount);
			}
		}
		elsif ($text=~/\b1279\b/) {	#:: Faction1279
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1279, $change_amount);
			}
		}
		elsif ($text=~/\b1280\b/) {	#:: Faction1280
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1280, $change_amount);
			}
		}
		elsif ($text=~/\b1281\b/) {	#:: Faction1281
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1281, $change_amount);
			}
		}
		elsif ($text=~/\b1282\b/) {	#:: Faction1282
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1282, $change_amount);
			}
		}
		elsif ($text=~/\b1283\b/) {	#:: Faction1283
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1283, $change_amount);
			}
		}
		elsif ($text=~/\b1284\b/) {	#:: Faction1284
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1284, $change_amount);
			}
		}
		elsif ($text=~/\b1285\b/) {	#:: Faction1285
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1285, $change_amount);
			}
		}
		elsif ($text=~/\b1286\b/) {	#:: Faction1286
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1286, $change_amount);
			}
		}
		elsif ($text=~/\b1287\b/) {	#:: Faction1287
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1287, $change_amount);
			}
		}
		elsif ($text=~/\b1288\b/) {	#:: Faction1288
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1288, $change_amount);
			}
		}
		elsif ($text=~/\b1289\b/) {	#:: Faction1289
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1289, $change_amount);
			}
		}
		elsif ($text=~/\b1290\b/) {	#:: Faction1290
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1290, $change_amount);
			}
		}
		elsif ($text=~/\b1291\b/) {	#:: Faction1291
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1291, $change_amount);
			}
		}
		elsif ($text=~/\b1292\b/) {	#:: Faction1292
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1292, $change_amount);
			}
		}
		elsif ($text=~/\b1293\b/) {	#:: Faction1293
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1293, $change_amount);
			}
		}
		elsif ($text=~/\b1294\b/) {	#:: Faction1294
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1294, $change_amount);
			}
		}
		elsif ($text=~/\b1295\b/) {	#:: Faction1295
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1295, $change_amount);
			}
		}
		elsif ($text=~/\b1296\b/) {	#:: Faction1296
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1296, $change_amount);
			}
		}
		elsif ($text=~/\b1297\b/) {	#:: Faction1297
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1297, $change_amount);
			}
		}
		elsif ($text=~/\b1298\b/) {	#:: Faction1298
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1298, $change_amount);
			}
		}
		elsif ($text=~/\b1299\b/) {	#:: Faction1299
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1299, $change_amount);
			}
		}
		elsif ($text=~/\b1300\b/) {	#:: Faction1300
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1300, $change_amount);
			}
		}
		elsif ($text=~/\b1301\b/) {	#:: Faction1301
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1301, $change_amount);
			}
		}
		elsif ($text=~/\b1302\b/) {	#:: Faction1302
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1302, $change_amount);
			}
		}
		elsif ($text=~/\b1303\b/) {	#:: Faction1303
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1303, $change_amount);
			}
		}
		elsif ($text=~/\b1304\b/) {	#:: Faction1304
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1304, $change_amount);
			}
		}
		elsif ($text=~/\b1305\b/) {	#:: Faction1305
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1305, $change_amount);
			}
		}
		elsif ($text=~/\b1306\b/) {	#:: Faction1306
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1306, $change_amount);
			}
		}
		elsif ($text=~/\b1307\b/) {	#:: Faction1307
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1307, $change_amount);
			}
		}
		elsif ($text=~/\b1308\b/) {	#:: Faction1308
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1308, $change_amount);
			}
		}
		elsif ($text=~/\b1309\b/) {	#:: Faction1309
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1309, $change_amount);
			}
		}
		elsif ($text=~/\b1310\b/) {	#:: Faction1310
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1310, $change_amount);
			}
		}
		elsif ($text=~/\b1311\b/) {	#:: Faction1311
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1311, $change_amount);
			}
		}
		elsif ($text=~/\b1312\b/) {	#:: Faction1312
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1312, $change_amount);
			}
		}
		elsif ($text=~/\b1313\b/) {	#:: Faction1313
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1313, $change_amount);
			}
		}
		elsif ($text=~/\b1314\b/) {	#:: Faction1314
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1314, $change_amount);
			}
		}
		elsif ($text=~/\b1315\b/) {	#:: Faction1315
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1315, $change_amount);
			}
		}
		elsif ($text=~/\b1316\b/) {	#:: Faction1316
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1316, $change_amount);
			}
		}
		elsif ($text=~/\b1317\b/) {	#:: Faction1317
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1317, $change_amount);
			}
		}
		elsif ($text=~/\b1318\b/) {	#:: Faction1318
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1318, $change_amount);
			}
		}
		elsif ($text=~/\b1319\b/) {	#:: Faction1319
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1319, $change_amount);
			}
		}
		elsif ($text=~/\b1320\b/) {	#:: Faction1320
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1320, $change_amount);
			}
		}
		elsif ($text=~/\b1321\b/) {	#:: Faction1321
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1321, $change_amount);
			}
		}
		elsif ($text=~/\b1322\b/) {	#:: Faction1322
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1322, $change_amount);
			}
		}
		elsif ($text=~/\b1323\b/) {	#:: Faction1323
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1323, $change_amount);
			}
		}
		elsif ($text=~/\b1324\b/) {	#:: Faction1324
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1324, $change_amount);
			}
		}
		elsif ($text=~/\b1325\b/) {	#:: Faction1325
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1325, $change_amount);
			}
		}
		elsif ($text=~/\b1326\b/) {	#:: Faction1326
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1326, $change_amount);
			}
		}
		elsif ($text=~/\b1327\b/) {	#:: Faction1327
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1327, $change_amount);
			}
		}
		elsif ($text=~/\b1328\b/) {	#:: Faction1328
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1328, $change_amount);
			}
		}
		elsif ($text=~/\b1329\b/) {	#:: Faction1329
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1329, $change_amount);
			}
		}
		elsif ($text=~/\b1330\b/) {	#:: Faction1330
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1330, $change_amount);
			}
		}
		elsif ($text=~/\b1331\b/) {	#:: Faction1331
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1331, $change_amount);
			}
		}
		elsif ($text=~/\b1332\b/) {	#:: Faction1332
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1332, $change_amount);
			}
		}
		elsif ($text=~/\b1333\b/) {	#:: Faction1333
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1333, $change_amount);
			}
		}
		elsif ($text=~/\b1334\b/) {	#:: Faction1334
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1334, $change_amount);
			}
		}
		elsif ($text=~/\b1335\b/) {	#:: Faction1335
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1335, $change_amount);
			}
		}
		elsif ($text=~/\b1336\b/) {	#:: Faction1336
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1336, $change_amount);
			}
		}
		elsif ($text=~/\b1337\b/) {	#:: Faction1337
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1337, $change_amount);
			}
		}
		elsif ($text=~/\b1338\b/) {	#:: Faction1338
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1338, $change_amount);
			}
		}
		elsif ($text=~/\b1339\b/) {	#:: Faction1339
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1339, $change_amount);
			}
		}
		elsif ($text=~/\b1340\b/) {	#:: Faction1340
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1340, $change_amount);
			}
		}
		elsif ($text=~/\b1341\b/) {	#:: Faction1341
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1341, $change_amount);
			}
		}
		elsif ($text=~/\b1342\b/) {	#:: Faction1342
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1342, $change_amount);
			}
		}
		elsif ($text=~/\b1343\b/) {	#:: Faction1343
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1343, $change_amount);
			}
		}
		elsif ($text=~/\b1344\b/) {	#:: Faction1344
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1344, $change_amount);
			}
		}
		elsif ($text=~/\b1345\b/) {	#:: Faction1345
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1345, $change_amount);
			}
		}
		elsif ($text=~/\b1346\b/) {	#:: Faction1346
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1346, $change_amount);
			}
		}
		elsif ($text=~/\b1347\b/) {	#:: Faction1347
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1347, $change_amount);
			}
		}
		elsif ($text=~/\b1348\b/) {	#:: Faction1348
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1348, $change_amount);
			}
		}
		elsif ($text=~/\b1349\b/) {	#:: Faction1349
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1349, $change_amount);
			}
		}
		elsif ($text=~/\b1350\b/) {	#:: Faction1350
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1350, $change_amount);
			}
		}
		elsif ($text=~/\b1351\b/) {	#:: Faction1351
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1351, $change_amount);
			}
		}
		elsif ($text=~/\b1352\b/) {	#:: Faction1352
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1352, $change_amount);
			}
		}
		elsif ($text=~/\b1353\b/) {	#:: Faction1353
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1353, $change_amount);
			}
		}
		elsif ($text=~/\b1354\b/) {	#:: Faction1354
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1354, $change_amount);
			}
		}
		elsif ($text=~/\b1355\b/) {	#:: Faction1355
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1355, $change_amount);
			}
		}
		elsif ($text=~/\b1356\b/) {	#:: Faction1356
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1356, $change_amount);
			}
		}
		elsif ($text=~/\b1357\b/) {	#:: Faction1357
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1357, $change_amount);
			}
		}
		elsif ($text=~/\b1358\b/) {	#:: Faction1358
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1358, $change_amount);
			}
		}
		elsif ($text=~/\b1359\b/) {	#:: Faction1359
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1359, $change_amount);
			}
		}
		elsif ($text=~/\b1360\b/) {	#:: Faction1360
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1360, $change_amount);
			}
		}
		elsif ($text=~/\b1361\b/) {	#:: Faction1361
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1361, $change_amount);
			}
		}
		elsif ($text=~/\b1362\b/) {	#:: Faction1362
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1362, $change_amount);
			}
		}
		elsif ($text=~/\b1363\b/) {	#:: Faction1363
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1363, $change_amount);
			}
		}
		elsif ($text=~/\b1364\b/) {	#:: Faction1364
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1364, $change_amount);
			}
		}
		elsif ($text=~/\b1365\b/) {	#:: Faction1365
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1365, $change_amount);
			}
		}
		elsif ($text=~/\b1366\b/) {	#:: Faction1366
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1366, $change_amount);
			}
		}
		elsif ($text=~/\b1367\b/) {	#:: Faction1367
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1367, $change_amount);
			}
		}
		elsif ($text=~/\b1368\b/) {	#:: Faction1368
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1368, $change_amount);
			}
		}
		elsif ($text=~/\b1369\b/) {	#:: Faction1369
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1369, $change_amount);
			}
		}
		elsif ($text=~/\b1370\b/) {	#:: Faction1370
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1370, $change_amount);
			}
		}
		elsif ($text=~/\b1371\b/) {	#:: Faction1371
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1371, $change_amount);
			}
		}
		elsif ($text=~/\b1372\b/) {	#:: Faction1372
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1372, $change_amount);
			}
		}
		elsif ($text=~/\b1373\b/) {	#:: Faction1373
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1373, $change_amount);
			}
		}
		elsif ($text=~/\b1374\b/) {	#:: Faction1374
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1374, $change_amount);
			}
		}
		elsif ($text=~/\b1375\b/) {	#:: Faction1375
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1375, $change_amount);
			}
		}
		elsif ($text=~/\b1376\b/) {	#:: Faction1376
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1376, $change_amount);
			}
		}
		elsif ($text=~/\b1377\b/) {	#:: Faction1377
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1377, $change_amount);
			}
		}
		elsif ($text=~/\b1378\b/) {	#:: Faction1378
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1378, $change_amount);
			}
		}
		elsif ($text=~/\b1379\b/) {	#:: Faction1379
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1379, $change_amount);
			}
		}
		elsif ($text=~/\b1380\b/) {	#:: Faction1380
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1380, $change_amount);
			}
		}
		elsif ($text=~/\b1381\b/) {	#:: Faction1381
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1381, $change_amount);
			}
		}
		elsif ($text=~/\b1382\b/) {	#:: Faction1382
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1382, $change_amount);
			}
		}
		elsif ($text=~/\b1383\b/) {	#:: Faction1383
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1383, $change_amount);
			}
		}
		elsif ($text=~/\b1384\b/) {	#:: Faction1384
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1384, $change_amount);
			}
		}
		elsif ($text=~/\b1385\b/) {	#:: Faction1385
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1385, $change_amount);
			}
		}
		elsif ($text=~/\b1386\b/) {	#:: Faction1386
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1386, $change_amount);
			}
		}
		elsif ($text=~/\b1387\b/) {	#:: Faction1387
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1387, $change_amount);
			}
		}
		elsif ($text=~/\b1388\b/) {	#:: Faction1388
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1388, $change_amount);
			}
		}
		elsif ($text=~/\b1389\b/) {	#:: Faction1389
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1389, $change_amount);
			}
		}
		elsif ($text=~/\b1390\b/) {	#:: Faction1390
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1390, $change_amount);
			}
		}
		elsif ($text=~/\b1391\b/) {	#:: Faction1391
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1391, $change_amount);
			}
		}
		elsif ($text=~/\b1392\b/) {	#:: Faction1392
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1392, $change_amount);
			}
		}
		elsif ($text=~/\b1393\b/) {	#:: Faction1393
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1393, $change_amount);
			}
		}
		elsif ($text=~/\b1394\b/) {	#:: Faction1394
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1394, $change_amount);
			}
		}
		elsif ($text=~/\b1395\b/) {	#:: Faction1395
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1395, $change_amount);
			}
		}
		elsif ($text=~/\b1396\b/) {	#:: Faction1396
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1396, $change_amount);
			}
		}
		elsif ($text=~/\b1397\b/) {	#:: Faction1397
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1397, $change_amount);
			}
		}
		elsif ($text=~/\b1398\b/) {	#:: Faction1398
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1398, $change_amount);
			}
		}
		elsif ($text=~/\b1399\b/) {	#:: Faction1399
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1399, $change_amount);
			}
		}
		elsif ($text=~/\b1400\b/) {	#:: Faction1400
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1400, $change_amount);
			}
		}
		elsif ($text=~/\b1401\b/) {	#:: Faction1401
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1401, $change_amount);
			}
		}
		elsif ($text=~/\b1402\b/) {	#:: Faction1402
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1402, $change_amount);
			}
		}
		elsif ($text=~/\b1403\b/) {	#:: Faction1403
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1403, $change_amount);
			}
		}
		elsif ($text=~/\b1404\b/) {	#:: Faction1404
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1404, $change_amount);
			}
		}
		elsif ($text=~/\b1405\b/) {	#:: Faction1405
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1405, $change_amount);
			}
		}
		elsif ($text=~/\b1406\b/) {	#:: Faction1406
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1406, $change_amount);
			}
		}
		elsif ($text=~/\b1407\b/) {	#:: Faction1407
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1407, $change_amount);
			}
		}
		elsif ($text=~/\b1408\b/) {	#:: Faction1408
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1408, $change_amount);
			}
		}
		elsif ($text=~/\b1409\b/) {	#:: Faction1409
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1409, $change_amount);
			}
		}
		elsif ($text=~/\b1410\b/) {	#:: Faction1410
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1410, $change_amount);
			}
		}
		elsif ($text=~/\b1411\b/) {	#:: Faction1411
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1411, $change_amount);
			}
		}
		elsif ($text=~/\b1412\b/) {	#:: Faction1412
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1412, $change_amount);
			}
		}
		elsif ($text=~/\b1413\b/) {	#:: Faction1413
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1413, $change_amount);
			}
		}
		elsif ($text=~/\b1414\b/) {	#:: Faction1414
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1414, $change_amount);
			}
		}
		elsif ($text=~/\b1415\b/) {	#:: Faction1415
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1415, $change_amount);
			}
		}
		elsif ($text=~/\b1416\b/) {	#:: Faction1416
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1416, $change_amount);
			}
		}
		elsif ($text=~/\b1417\b/) {	#:: Faction1417
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1417, $change_amount);
			}
		}
		elsif ($text=~/\b1418\b/) {	#:: Faction1418
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1418, $change_amount);
			}
		}
		elsif ($text=~/\b1419\b/) {	#:: Faction1419
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1419, $change_amount);
			}
		}
		elsif ($text=~/\b1420\b/) {	#:: Faction1420
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1420, $change_amount);
			}
		}
		elsif ($text=~/\b1421\b/) {	#:: Faction1421
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1421, $change_amount);
			}
		}
		elsif ($text=~/\b1422\b/) {	#:: Faction1422
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1422, $change_amount);
			}
		}
		elsif ($text=~/\b1423\b/) {	#:: Faction1423
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1423, $change_amount);
			}
		}
		elsif ($text=~/\b1424\b/) {	#:: Faction1424
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1424, $change_amount);
			}
		}
		elsif ($text=~/\b1425\b/) {	#:: Faction1425
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1425, $change_amount);
			}
		}
		elsif ($text=~/\b1426\b/) {	#:: Faction1426
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1426, $change_amount);
			}
		}
		elsif ($text=~/\b1427\b/) {	#:: Faction1427
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1427, $change_amount);
			}
		}
		elsif ($text=~/\b1428\b/) {	#:: Faction1428
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1428, $change_amount);
			}
		}
		elsif ($text=~/\b1429\b/) {	#:: Faction1429
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1429, $change_amount);
			}
		}
		elsif ($text=~/\b1430\b/) {	#:: Faction1430
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1430, $change_amount);
			}
		}
		elsif ($text=~/\b1431\b/) {	#:: Faction1431
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1431, $change_amount);
			}
		}
		elsif ($text=~/\b1432\b/) {	#:: Faction1432
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1432, $change_amount);
			}
		}
		elsif ($text=~/\b1433\b/) {	#:: Faction1433
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1433, $change_amount);
			}
		}
		elsif ($text=~/\b1434\b/) {	#:: Faction1434
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1434, $change_amount);
			}
		}
		elsif ($text=~/\b1435\b/) {	#:: Faction1435
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1435, $change_amount);
			}
		}
		elsif ($text=~/\b1436\b/) {	#:: Faction1436
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1436, $change_amount);
			}
		}
		elsif ($text=~/\b1437\b/) {	#:: Faction1437
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1437, $change_amount);
			}
		}
		elsif ($text=~/\b1438\b/) {	#:: Faction1438
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1438, $change_amount);
			}
		}
		elsif ($text=~/\b1439\b/) {	#:: Faction1439
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1439, $change_amount);
			}
		}
		elsif ($text=~/\b1440\b/) {	#:: Faction1440
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1440, $change_amount);
			}
		}
		elsif ($text=~/\b1441\b/) {	#:: Faction1441
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1441, $change_amount);
			}
		}
		elsif ($text=~/\b1442\b/) {	#:: Faction1442
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1442, $change_amount);
			}
		}
		elsif ($text=~/\b1443\b/) {	#:: Faction1443
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1443, $change_amount);
			}
		}
		elsif ($text=~/\b1444\b/) {	#:: Faction1444
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1444, $change_amount);
			}
		}
		elsif ($text=~/\b1445\b/) {	#:: Faction1445
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1445, $change_amount);
			}
		}
		elsif ($text=~/\b1446\b/) {	#:: Faction1446
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1446, $change_amount);
			}
		}
		elsif ($text=~/\b1447\b/) {	#:: Faction1447
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1447, $change_amount);
			}
		}
		elsif ($text=~/\b1448\b/) {	#:: Faction1448
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1448, $change_amount);
			}
		}
		elsif ($text=~/\b1449\b/) {	#:: Faction1449
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1449, $change_amount);
			}
		}
		elsif ($text=~/\b1450\b/) {	#:: Faction1450
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1450, $change_amount);
			}
		}
		elsif ($text=~/\b1451\b/) {	#:: Faction1451
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1451, $change_amount);
			}
		}
		elsif ($text=~/\b1452\b/) {	#:: Faction1452
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1452, $change_amount);
			}
		}
		elsif ($text=~/\b1453\b/) {	#:: Faction1453
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1453, $change_amount);
			}
		}
		elsif ($text=~/\b1454\b/) {	#:: Faction1454
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1454, $change_amount);
			}
		}
		elsif ($text=~/\b1455\b/) {	#:: Faction1455
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1455, $change_amount);
			}
		}
		elsif ($text=~/\b1456\b/) {	#:: Faction1456
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1456, $change_amount);
			}
		}
		elsif ($text=~/\b1457\b/) {	#:: Faction1457
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1457, $change_amount);
			}
		}
		elsif ($text=~/\b1458\b/) {	#:: Faction1458
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1458, $change_amount);
			}
		}
		elsif ($text=~/\b1459\b/) {	#:: Faction1459
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1459, $change_amount);
			}
		}
		elsif ($text=~/\b1460\b/) {	#:: Faction1460
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1460, $change_amount);
			}
		}
		elsif ($text=~/\b1461\b/) {	#:: Faction1461
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1461, $change_amount);
			}
		}
		elsif ($text=~/\b1462\b/) {	#:: Faction1462
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1462, $change_amount);
			}
		}
		elsif ($text=~/\b1463\b/) {	#:: Faction1463
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1463, $change_amount);
			}
		}
		elsif ($text=~/\b1464\b/) {	#:: Faction1464
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1464, $change_amount);
			}
		}
		elsif ($text=~/\b1465\b/) {	#:: Faction1465
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1465, $change_amount);
			}
		}
		elsif ($text=~/\b1466\b/) {	#:: Faction1466
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1466, $change_amount);
			}
		}
		elsif ($text=~/\b1467\b/) {	#:: Faction1467
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1467, $change_amount);
			}
		}
		elsif ($text=~/\b1468\b/) {	#:: Faction1468
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1468, $change_amount);
			}
		}
		elsif ($text=~/\b1469\b/) {	#:: Faction1469
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1469, $change_amount);
			}
		}
		elsif ($text=~/\b1470\b/) {	#:: Faction1470
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1470, $change_amount);
			}
		}
		elsif ($text=~/\b1471\b/) {	#:: Faction1471
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1471, $change_amount);
			}
		}
		elsif ($text=~/\b1472\b/) {	#:: Faction1472
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1472, $change_amount);
			}
		}
		elsif ($text=~/\b1473\b/) {	#:: Faction1473
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1473, $change_amount);
			}
		}
		elsif ($text=~/\b1474\b/) {	#:: Faction1474
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1474, $change_amount);
			}
		}
		elsif ($text=~/\b1475\b/) {	#:: Faction1475
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1475, $change_amount);
			}
		}
		elsif ($text=~/\b1476\b/) {	#:: Faction1476
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1476, $change_amount);
			}
		}
		elsif ($text=~/\b1477\b/) {	#:: Faction1477
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1477, $change_amount);
			}
		}
		elsif ($text=~/\b1478\b/) {	#:: Faction1478
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1478, $change_amount);
			}
		}
		elsif ($text=~/\b1479\b/) {	#:: Faction1479
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1479, $change_amount);
			}
		}
		elsif ($text=~/\b1480\b/) {	#:: Faction1480
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1480, $change_amount);
			}
		}
		elsif ($text=~/\b1481\b/) {	#:: Faction1481
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1481, $change_amount);
			}
		}
		elsif ($text=~/\b1482\b/) {	#:: Faction1482
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1482, $change_amount);
			}
		}
		elsif ($text=~/\b1483\b/) {	#:: Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1483, $change_amount);
			}
		}
		elsif ($text=~/\b1484\b/) {	#:: Hand of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1484, $change_amount);
			}
		}
		elsif ($text=~/\b1485\b/) {	#:: Eye of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1485, $change_amount);
			}
		}
		elsif ($text=~/\b1486\b/) {	#:: Heart of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1486, $change_amount);
			}
		}
		elsif ($text=~/\b1487\b/) {	#:: Shoulders of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1487, $change_amount);
			}
		}
		elsif ($text=~/\b1488\b/) {	#:: The Recuso
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1488, $change_amount);
			}
		}
		elsif ($text=~/\b1489\b/) {	#:: Gladiators and Slaves of Sanctus Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1489, $change_amount);
			}
		}
		elsif ($text=~/\b1490\b/) {	#:: Grimlings of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1490, $change_amount);
			}
		}
		elsif ($text=~/\b1491\b/) {	#:: Sonic Wolves of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1491, $change_amount);
			}
		}
		elsif ($text=~/\b1492\b/) {	#:: Owlbears of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1492, $change_amount);
			}
		}
		elsif ($text=~/\b1493\b/) {	#:: Grimling Invaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1493, $change_amount);
			}
		}
		elsif ($text=~/\b1494\b/) {	#:: Owlbear Invaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1494, $change_amount);
			}
		}
		elsif ($text=~/\b1495\b/) {	#:: Sonic Wolf Invaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1495, $change_amount);
			}
		}
		elsif ($text=~/\b1496\b/) {	#:: Grimling Defenders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1496, $change_amount);
			}
		}
		elsif ($text=~/\b1497\b/) {	#:: Owlbear Defenders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1497, $change_amount);
			}
		}
		elsif ($text=~/\b1498\b/) {	#:: Sonic Wolf Defenders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1498, $change_amount);
			}
		}
		elsif ($text=~/\b1499\b/) {	#:: Citizens of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1499, $change_amount);
			}
		}
		elsif ($text=~/\b1500\b/) {	#:: Gor Taku
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1500, $change_amount);
			}
		}
		elsif ($text=~/\b1501\b/) {	#:: Shak Dratha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1501, $change_amount);
			}
		}
		elsif ($text=~/\b1502\b/) {	#:: Katta Castellum Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1502, $change_amount);
			}
		}
		elsif ($text=~/\b1503\b/) {	#:: Validus Custodus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1503, $change_amount);
			}
		}
		elsif ($text=~/\b1504\b/) {	#:: Magus Conlegium
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1504, $change_amount);
			}
		}
		elsif ($text=~/\b1505\b/) {	#:: Nathyn Illuminious
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1505, $change_amount);
			}
		}
		elsif ($text=~/\b1506\b/) {	#:: Coterie of the Eternal Night
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1506, $change_amount);
			}
		}
		elsif ($text=~/\b1507\b/) {	#:: Valdanov Zevfeer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1507, $change_amount);
			}
		}
		elsif ($text=~/\b1508\b/) {	#:: Traders of the Haven
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1508, $change_amount);
			}
		}
		elsif ($text=~/\b1509\b/) {	#:: Haven Defenders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1509, $change_amount);
			}
		}
		elsif ($text=~/\b1510\b/) {	#:: House of Fordel
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1510, $change_amount);
			}
		}
		elsif ($text=~/\b1511\b/) {	#:: House of Midst
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1511, $change_amount);
			}
		}
		elsif ($text=~/\b1512\b/) {	#:: House of Stout
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1512, $change_amount);
			}
		}
		elsif ($text=~/\b1513\b/) {	#:: Guardians of Shar Vahl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1513, $change_amount);
			}
		}
		elsif ($text=~/\b1514\b/) {	#:: Testfaction
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1514, $change_amount);
			}
		}
		elsif ($text=~/\b1515\b/) {	#:: Dark Forest Denizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1515, $change_amount);
			}
		}
		elsif ($text=~/\b1516\b/) {	#:: Grimlings of the Forest
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1516, $change_amount);
			}
		}
		elsif ($text=~/\b1517\b/) {	#:: Deepwood Owlbears
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1517, $change_amount);
			}
		}
		elsif ($text=~/\b1518\b/) {	#:: Pack of the Great Moon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1518, $change_amount);
			}
		}
		elsif ($text=~/\b1519\b/) {	#:: Lodikai
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1519, $change_amount);
			}
		}
		elsif ($text=~/\b1520\b/) {	#:: Whisperling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1520, $change_amount);
			}
		}
		elsif ($text=~/\b1521\b/) {	#:: Akheva
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1521, $change_amount);
			}
		}
		elsif ($text=~/\b1522\b/) {	#:: Primordial Malice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1522, $change_amount);
			}
		}
		elsif ($text=~/\b1523\b/) {	#:: Feast of the Burrowers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1523, $change_amount);
			}
		}
		elsif ($text=~/\b1524\b/) {	#:: Johanius Barleou
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1524, $change_amount);
			}
		}
		elsif ($text=~/\b1525\b/) {	#:: Coterie Elite
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1525, $change_amount);
			}
		}
		elsif ($text=~/\b1526\b/) {	#:: Old Disciples of Kerafyrm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1526, $change_amount);
			}
		}
		elsif ($text=~/\b1527\b/) {	#:: Spire Spirits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1527, $change_amount);
			}
		}
		elsif ($text=~/\b1528\b/) {	#:: Thought Leeches
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1528, $change_amount);
			}
		}
		elsif ($text=~/\b1529\b/) {	#:: Khala Dun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1529, $change_amount);
			}
		}
		elsif ($text=~/\b1530\b/) {	#:: Taruun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1530, $change_amount);
			}
		}
		elsif ($text=~/\b1531\b/) {	#:: Jharin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1531, $change_amount);
			}
		}
		elsif ($text=~/\b1532\b/) {	#:: Khati Sha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1532, $change_amount);
			}
		}
		elsif ($text=~/\b1533\b/) {	#:: Dar Khura
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1533, $change_amount);
			}
		}
		elsif ($text=~/\b1534\b/) {	#:: Luclin Monsters
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1534, $change_amount);
			}
		}
		elsif ($text=~/\b1535\b/) {	#:: Brood of Ssraeshza
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1535, $change_amount);
			}
		}
		elsif ($text=~/\b1536\b/) {	#:: Emperor Ssraeshza
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1536, $change_amount);
			}
		}
		elsif ($text=~/\b1537\b/) {	#:: Iksar Temple Slaves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1537, $change_amount);
			}
		}
		elsif ($text=~/\b1538\b/) {	#:: Spirits of Katta Castellum
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1538, $change_amount);
			}
		}
		elsif ($text=~/\b1539\b/) {	#:: Netherbians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1539, $change_amount);
			}
		}
		elsif ($text=~/\b1540\b/) {	#:: Troglodytes
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1540, $change_amount);
			}
		}
		elsif ($text=~/\b1541\b/) {	#:: Hand Legionnaries
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1541, $change_amount);
			}
		}
		elsif ($text=~/\b1542\b/) {	#:: Haven Smugglers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1542, $change_amount);
			}
		}
		elsif ($text=~/\b1543\b/) {	#:: Servants of Aero
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1543, $change_amount);
			}
		}
		elsif ($text=~/\b1544\b/) {	#:: Servants of Terra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1544, $change_amount);
			}
		}
		elsif ($text=~/\b1545\b/) {	#:: Servants of Inferno
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1545, $change_amount);
			}
		}
		elsif ($text=~/\b1546\b/) {	#:: Servants of Hydro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1546, $change_amount);
			}
		}
		elsif ($text=~/\b1547\b/) {	#:: Vornol Transon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1547, $change_amount);
			}
		}
		elsif ($text=~/\b1548\b/) {	#:: The Vas Ren Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1548, $change_amount);
			}
		}
		elsif ($text=~/\b1549\b/) {	#:: The Grol Baku Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1549, $change_amount);
			}
		}
		elsif ($text=~/\b1550\b/) {	#:: The Cral Ligi Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1550, $change_amount);
			}
		}
		elsif ($text=~/\b1551\b/) {	#:: The Tro Jeg Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1551, $change_amount);
			}
		}
		elsif ($text=~/\b1552\b/) {	#:: Vah Shir Crusaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1552, $change_amount);
			}
		}
		elsif ($text=~/\b1553\b/) {	#:: Netherbian Ambush
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1553, $change_amount);
			}
		}
		elsif ($text=~/\b1554\b/) {	#:: Netherbian Caravan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1554, $change_amount);
			}
		}
		elsif ($text=~/\b1555\b/) {	#:: Grieg
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1555, $change_amount);
			}
		}
		elsif ($text=~/\b1556\b/) {	#:: Luclin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1556, $change_amount);
			}
		}
		elsif ($text=~/\b1557\b/) {	#:: Dark Sendings
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1557, $change_amount);
			}
		}
		elsif ($text=~/\b1558\b/) {	#:: Grimling Captives
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1558, $change_amount);
			}
		}
		elsif ($text=~/\b1559\b/) {	#:: Lake Recondite Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1559, $change_amount);
			}
		}
		elsif ($text=~/\b1560\b/) {	#:: Kanaad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1560, $change_amount);
			}
		}
		elsif ($text=~/\b1561\b/) {	#:: Concilium Universus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1561, $change_amount);
			}
		}
		elsif ($text=~/\b1562\b/) {	#:: Disciples of Rhag`Zadune
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1562, $change_amount);
			}
		}
		elsif ($text=~/\b1563\b/) {	#:: The Sambata Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1563, $change_amount);
			}
		}
		elsif ($text=~/\b1564\b/) {	#:: Dawnhoppers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1564, $change_amount);
			}
		}
		elsif ($text=~/\b1565\b/) {	#:: Tarmok Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1565, $change_amount);
			}
		}
		elsif ($text=~/\b1566\b/) {	#:: Netok Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1566, $change_amount);
			}
		}
		elsif ($text=~/\b1567\b/) {	#:: Katta Traitors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1567, $change_amount);
			}
		}
		elsif ($text=~/\b1568\b/) {	#:: Deepshade Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1568, $change_amount);
			}
		}
		elsif ($text=~/\b1569\b/) {	#:: Deklean Korgad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1569, $change_amount);
			}
		}
		elsif ($text=~/\b1570\b/) {	#:: Order of Autarkic Umbrage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1570, $change_amount);
			}
		}
		elsif ($text=~/\b1571\b/) {	#:: Shei Vinitras
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1571, $change_amount);
			}
		}
		elsif ($text=~/\b1572\b/) {	#:: Anti Vinitras
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1572, $change_amount);
			}
		}
		elsif ($text=~/\b1573\b/) {	#:: The Bloodtribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1573, $change_amount);
			}
		}
		elsif ($text=~/\b1574\b/) {	#:: Minions of the Sunlord
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1574, $change_amount);
			}
		}
		elsif ($text=~/\b1575\b/) {	#:: Imps
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1575, $change_amount);
			}
		}
		elsif ($text=~/\b1576\b/) {	#:: Kingdom of Above and Below
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1576, $change_amount);
			}
		}
		elsif ($text=~/\b1577\b/) {	#:: The Truth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1577, $change_amount);
			}
		}
		elsif ($text=~/\b1578\b/) {	#:: Deklean Korgad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1578, $change_amount);
			}
		}
		elsif ($text=~/\b1579\b/) {	#:: Droga Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1579, $change_amount);
			}
		}
		elsif ($text=~/\b1580\b/) {	#:: Nurga Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1580, $change_amount);
			}
		}
		elsif ($text=~/\b1581\b/) {	#:: Luclin Friendly Monsters
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1581, $change_amount);
			}
		}
		elsif ($text=~/\b1582\b/) {	#:: Outcasts and Mutants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1582, $change_amount);
			}
		}
		elsif ($text=~/\b1583\b/) {	#:: Cult of the Great Saprophyte
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1583, $change_amount);
			}
		}
		elsif ($text=~/\b1584\b/) {	#:: Citizens of Shar Vahl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1584, $change_amount);
			}
		}
		elsif ($text=~/\b1585\b/) {	#:: Fiends of the Grove
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1585, $change_amount);
			}
		}
		elsif ($text=~/\b1586\b/) {	#:: Savage Spirit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1586, $change_amount);
			}
		}
		elsif ($text=~/\b1587\b/) {	#:: Zordak Ragefire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1587, $change_amount);
			}
		}
		elsif ($text=~/\b1588\b/) {	#:: Captain Cruikshanks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1588, $change_amount);
			}
		}
		elsif ($text=~/\b1589\b/) {	#:: Scourge
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1589, $change_amount);
			}
		}
		elsif ($text=~/\b1590\b/) {	#:: Captain Stottal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1590, $change_amount);
			}
		}
		elsif ($text=~/\b1591\b/) {	#:: Captain Smythe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1591, $change_amount);
			}
		}
		elsif ($text=~/\b1592\b/) {	#:: Captain Dorian Dulein
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1592, $change_amount);
			}
		}
		elsif ($text=~/\b1593\b/) {	#:: Frogloks of Krup
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1593, $change_amount);
			}
		}
		elsif ($text=~/\b1594\b/) {	#:: Cult of the Arisen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1594, $change_amount);
			}
		}
		elsif ($text=~/\b1595\b/) {	#:: New Alliance of Stone
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1595, $change_amount);
			}
		}
		elsif ($text=~/\b1596\b/) {	#:: Idelia the Serene
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1596, $change_amount);
			}
		}
		elsif ($text=~/\b1597\b/) {	#:: Residents of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1597, $change_amount);
			}
		}
		elsif ($text=~/\b1598\b/) {	#:: Anchorites of Brell Serilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1598, $change_amount);
			}
		}
		elsif ($text=~/\b1599\b/) {	#:: Darkpaws of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1599, $change_amount);
			}
		}
		elsif ($text=~/\b1600\b/) {	#:: Guardians of the Hatchling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1600, $change_amount);
			}
		}
		elsif ($text=~/\b1601\b/) {	#:: Pirates of the Pine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1601, $change_amount);
			}
		}
		elsif ($text=~/\b1602\b/) {	#:: Critters of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1602, $change_amount);
			}
		}
		elsif ($text=~/\b1603\b/) {	#:: Dryads of the Grove
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1603, $change_amount);
			}
		}
		elsif ($text=~/\b1604\b/) {	#:: Clan Grikbar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1604, $change_amount);
			}
		}
		elsif ($text=~/\b1605\b/) {	#:: Haven Smuggler Associates
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1605, $change_amount);
			}
		}
		elsif ($text=~/\b1606\b/) {	#:: KOS to Beta Neutral
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1606, $change_amount);
			}
		}
		elsif ($text=~/\b1607\b/) {	#:: Plague Bringer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1607, $change_amount);
			}
		}
		elsif ($text=~/\b1608\b/) {	#:: Spirits of Lxanvom
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1608, $change_amount);
			}
		}
		elsif ($text=~/\b1609\b/) {	#:: Askr the Lost
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1609, $change_amount);
			}
		}
		elsif ($text=~/\b1610\b/) {	#:: Greater Jord Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1610, $change_amount);
			}
		}
		elsif ($text=~/\b1611\b/) {	#:: Greater Brann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1611, $change_amount);
			}
		}
		elsif ($text=~/\b1612\b/) {	#:: Greater Vind Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1612, $change_amount);
			}
		}
		elsif ($text=~/\b1613\b/) {	#:: Greater Vann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1613, $change_amount);
			}
		}
		elsif ($text=~/\b1614\b/) {	#:: Lesser Jord Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1614, $change_amount);
			}
		}
		elsif ($text=~/\b1615\b/) {	#:: Lesser Brann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1615, $change_amount);
			}
		}
		elsif ($text=~/\b1616\b/) {	#:: Lesser Vind Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1616, $change_amount);
			}
		}
		elsif ($text=~/\b1617\b/) {	#:: Lesser Vann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1617, $change_amount);
			}
		}
		elsif ($text=~/\b1618\b/) {	#:: Storm Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1618, $change_amount);
			}
		}
		elsif ($text=~/\b1619\b/) {	#:: The Rainkeeper
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1619, $change_amount);
			}
		}
		elsif ($text=~/\b1620\b/) {	#:: Treants of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1620, $change_amount);
			}
		}
		elsif ($text=~/\b1621\b/) {	#:: Agnarr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1621, $change_amount);
			}
		}
		elsif ($text=~/\b1622\b/) {	#:: Arboreans of the Faydark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1622, $change_amount);
			}
		}
		elsif ($text=~/\b1623\b/) {	#:: Disciples of Kerafyrm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1623, $change_amount);
			}
		}
		elsif ($text=~/\b1624\b/) {	#:: Servants of Saryrn
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1624, $change_amount);
			}
		}
		elsif ($text=~/\b1625\b/) {	#:: Guardians of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1625, $change_amount);
			}
		}
		elsif ($text=~/\b1626\b/) {	#:: Jacosh Steldenn
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1626, $change_amount);
			}
		}
		elsif ($text=~/\b1627\b/) {	#:: Prisoners of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1627, $change_amount);
			}
		}
		elsif ($text=~/\b1628\b/) {	#:: Creatures of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1628, $change_amount);
			}
		}
		elsif ($text=~/\b1629\b/) {	#:: Gralloks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1629, $change_amount);
			}
		}
		elsif ($text=~/\b1630\b/) {	#:: Burning Dead
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1630, $change_amount);
			}
		}
		elsif ($text=~/\b1631\b/) {	#:: KOS All PC And Beta Neutral
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1631, $change_amount);
			}
		}
		elsif ($text=~/\b1632\b/) {	#:: Denizens of Water
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1632, $change_amount);
			}
		}
		elsif ($text=~/\b1633\b/) {	#:: Minions of Coirnav
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1633, $change_amount);
			}
		}
		elsif ($text=~/\b1634\b/) {	#:: Fish Lords
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1634, $change_amount);
			}
		}
		elsif ($text=~/\b1635\b/) {	#:: Dwellers of the Deep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1635, $change_amount);
			}
		}
		elsif ($text=~/\b1636\b/) {	#:: Inhabitants of Tanaan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1636, $change_amount);
			}
		}
		elsif ($text=~/\b1637\b/) {	#:: Truespirit Companion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1637, $change_amount);
			}
		}
		elsif ($text=~/\b1638\b/) {	#:: Rallos Zek, The Warlord
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1638, $change_amount);
			}
		}
		elsif ($text=~/\b1639\b/) {	#:: Tallon Zek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1639, $change_amount);
			}
		}
		elsif ($text=~/\b1640\b/) {	#:: Vallon Zek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1640, $change_amount);
			}
		}
		elsif ($text=~/\b1641\b/) {	#:: Eriak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1641, $change_amount);
			}
		}
		elsif ($text=~/\b1642\b/) {	#:: The Damned of Narikor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1642, $change_amount);
			}
		}
		elsif ($text=~/\b1643\b/) {	#:: The Diaku
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1643, $change_amount);
			}
		}
		elsif ($text=~/\b1644\b/) {	#:: The Gindan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1644, $change_amount);
			}
		}
		elsif ($text=~/\b1645\b/) {	#:: The Hendin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1645, $change_amount);
			}
		}
		elsif ($text=~/\b1646\b/) {	#:: The Decorus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1646, $change_amount);
			}
		}
		elsif ($text=~/\b1647\b/) {	#:: Gladiators of Drunder
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1647, $change_amount);
			}
		}
		elsif ($text=~/\b1648\b/) {	#:: Denizens of Fire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1648, $change_amount);
			}
		}
		elsif ($text=~/\b1649\b/) {	#:: Minions of Fennin Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1649, $change_amount);
			}
		}
		elsif ($text=~/\b1650\b/) {	#:: Inhabitants of Tranquility
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1650, $change_amount);
			}
		}
		elsif ($text=~/\b1651\b/) {	#:: Victim of Torment
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1651, $change_amount);
			}
		}
		elsif ($text=~/\b1652\b/) {	#:: Stampeding War Boar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1652, $change_amount);
			}
		}
		elsif ($text=~/\b1653\b/) {	#:: War Boar Piglet
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1653, $change_amount);
			}
		}
		elsif ($text=~/\b1654\b/) {	#:: Inhabitants of Disease
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1654, $change_amount);
			}
		}
		elsif ($text=~/\b1655\b/) {	#:: Inhabitants of Valor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1655, $change_amount);
			}
		}
		elsif ($text=~/\b1656\b/) {	#:: Battalion of Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1656, $change_amount);
			}
		}
		elsif ($text=~/\b1657\b/) {	#:: Rats of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1657, $change_amount);
			}
		}
		elsif ($text=~/\b1658\b/) {	#:: Denizens of Storm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1658, $change_amount);
			}
		}
		elsif ($text=~/\b1659\b/) {	#:: Lost Kingdom of Lok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1659, $change_amount);
			}
		}
		elsif ($text=~/\b1660\b/) {	#:: Koka'Vor Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1660, $change_amount);
			}
		}
		elsif ($text=~/\b1661\b/) {	#:: Inhabitants of Air
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1661, $change_amount);
			}
		}
		elsif ($text=~/\b1662\b/) {	#:: Guardians of the Living Earth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1662, $change_amount);
			}
		}
		elsif ($text=~/\b1663\b/) {	#:: The Protectorate of the Twelve
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1663, $change_amount);
			}
		}
		elsif ($text=~/\b1664\b/) {	#:: Eino
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1664, $change_amount);
			}
		}
		elsif ($text=~/\b1665\b/) {	#:: Frogloks of Sebilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1665, $change_amount);
			}
		}
		elsif ($text=~/\b1666\b/) {	#:: Frogloks of Ykesha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1666, $change_amount);
			}
		}
		elsif ($text=~/\b1667\b/) {	#:: Fallen Follies of Mischief
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1667, $change_amount);
			}
		}
		elsif ($text=~/\b1668\b/) {	#:: Lhranc the Disgraced
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1668, $change_amount);
			}
		}
		elsif ($text=~/\b1669\b/) {	#:: Minions of Enmity
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1669, $change_amount);
			}
		}
		elsif ($text=~/\b1670\b/) {	#:: Minions of Hope
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1670, $change_amount);
			}
		}
		elsif ($text=~/\b1671\b/) {	#:: Agents of the Pillars
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1671, $change_amount);
			}
		}
		elsif ($text=~/\b1672\b/) {	#:: Friends of Zordak Ragefire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1672, $change_amount);
			}
		}
		elsif ($text=~/\b1673\b/) {	#:: Enemies of Zordak Ragefire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1673, $change_amount);
			}
		}
		elsif ($text=~/\b1674\b/) {	#:: Kyle Bayle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1674, $change_amount);
			}
		}
		elsif ($text=~/\b1675\b/) {	#:: Kyle Bayle's Royal Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1675, $change_amount);
			}
		}
		elsif ($text=~/\b1676\b/) {	#:: Hills Revenant
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1676, $change_amount);
			}
		}
		elsif ($text=~/\b1677\b/) {	#:: Dead Hills Archaeologists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1677, $change_amount);
			}
		}
		elsif ($text=~/\b1678\b/) {	#:: Xulous of the Dead Hills
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1678, $change_amount);
			}
		}
		elsif ($text=~/\b1679\b/) {	#:: The Kromtus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1679, $change_amount);
			}
		}
		elsif ($text=~/\b1680\b/) {	#:: Bloodfeather Aviaks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1680, $change_amount);
			}
		}
		elsif ($text=~/\b1681\b/) {	#:: The Thaell Ew
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1681, $change_amount);
			}
		}
		elsif ($text=~/\b1682\b/) {	#:: Faction1682
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1682, $change_amount);
			}
		}
		elsif ($text=~/\b1683\b/) {	#:: Faction1683
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1683, $change_amount);
			}
		}
		elsif ($text=~/\b1684\b/) {	#:: Faction1684
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1684, $change_amount);
			}
		}
		elsif ($text=~/\b1685\b/) {	#:: Faction1685
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1685, $change_amount);
			}
		}
		elsif ($text=~/\b1686\b/) {	#:: Faction1686
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1686, $change_amount);
			}
		}
		elsif ($text=~/\b1687\b/) {	#:: Faction1687
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1687, $change_amount);
			}
		}
		elsif ($text=~/\b1688\b/) {	#:: Faction1688
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1688, $change_amount);
			}
		}
		elsif ($text=~/\b1689\b/) {	#:: Faction1689
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1689, $change_amount);
			}
		}
		elsif ($text=~/\b1690\b/) {	#:: Faction1690
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1690, $change_amount);
			}
		}
		elsif ($text=~/\b1691\b/) {	#:: Faction1691
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1691, $change_amount);
			}
		}
		elsif ($text=~/\b1692\b/) {	#:: Faction1692
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1692, $change_amount);
			}
		}
		elsif ($text=~/\b1693\b/) {	#:: Faction1693
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1693, $change_amount);
			}
		}
		elsif ($text=~/\b1694\b/) {	#:: Faction1694
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1694, $change_amount);
			}
		}
		elsif ($text=~/\b1695\b/) {	#:: Faction1695
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1695, $change_amount);
			}
		}
		elsif ($text=~/\b1696\b/) {	#:: Faction1696
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1696, $change_amount);
			}
		}
		elsif ($text=~/\b1697\b/) {	#:: Faction1697
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1697, $change_amount);
			}
		}
		elsif ($text=~/\b1698\b/) {	#:: Faction1698
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1698, $change_amount);
			}
		}
		elsif ($text=~/\b1699\b/) {	#:: Faction1699
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1699, $change_amount);
			}
		}
		elsif ($text=~/\b1700\b/) {	#:: Torgiran
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1700, $change_amount);
			}
		}
		elsif ($text=~/\b1701\b/) {	#:: Warlord Ngrub
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1701, $change_amount);
			}
		}
		elsif ($text=~/\b1702\b/) {	#:: Resistance Miners
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1702, $change_amount);
			}
		}
		elsif ($text=~/\b1703\b/) {	#:: Nadox Initiate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1703, $change_amount);
			}
		}
		elsif ($text=~/\b1704\b/) {	#:: Cursed Frogloks of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1704, $change_amount);
			}
		}
		elsif ($text=~/\b1705\b/) {	#:: Creatures of Gunthak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1705, $change_amount);
			}
		}
		elsif ($text=~/\b1706\b/) {	#:: Undead of Gunthak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1706, $change_amount);
			}
		}
		elsif ($text=~/\b1707\b/) {	#:: Residents of Gunthak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1707, $change_amount);
			}
		}
		elsif ($text=~/\b1708\b/) {	#:: Crew of the Scorned Maiden
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1708, $change_amount);
			}
		}
		elsif ($text=~/\b1709\b/) {	#:: Protectors of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1709, $change_amount);
			}
		}
		elsif ($text=~/\b1710\b/) {	#:: Innothule Monster
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1710, $change_amount);
			}
		}
		elsif ($text=~/\b1711\b/) {	#:: Clerics of Gutka
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1711, $change_amount);
			}
		}
		elsif ($text=~/\b1712\b/) {	#:: Warriors of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1712, $change_amount);
			}
		}
		elsif ($text=~/\b1713\b/) {	#:: Paladins of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1713, $change_amount);
			}
		}
		elsif ($text=~/\b1714\b/) {	#:: Wizards of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1714, $change_amount);
			}
		}
		elsif ($text=~/\b1715\b/) {	#:: Shaman of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1715, $change_amount);
			}
		}
		elsif ($text=~/\b1716\b/) {	#:: High Council of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1716, $change_amount);
			}
		}
		elsif ($text=~/\b1717\b/) {	#:: Lorekeepers of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1717, $change_amount);
			}
		}
		elsif ($text=~/\b1718\b/) {	#:: Guktan Elders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1718, $change_amount);
			}
		}
		elsif ($text=~/\b1719\b/) {	#:: Citizens of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1719, $change_amount);
			}
		}
		elsif ($text=~/\b1720\b/) {	#:: Guktan Suppliers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1720, $change_amount);
			}
		}
		elsif ($text=~/\b1721\b/) {	#:: Troll Raiders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1721, $change_amount);
			}
		}
		elsif ($text=~/\b1722\b/) {	#:: Exiled Frogloks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1722, $change_amount);
			}
		}
		elsif ($text=~/\b1723\b/) {	#:: Grimling Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1723, $change_amount);
			}
		}
		elsif ($text=~/\b1724\b/) {	#:: Newbie Monster
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1724, $change_amount);
			}
		}
		elsif ($text=~/\b1725\b/) {	#:: Syrik Iceblood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1725, $change_amount);
			}
		}
		elsif ($text=~/\b1726\b/) {	#:: Inhabitants of Time
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1726, $change_amount);
			}
		}
		elsif ($text=~/\b1727\b/) {	#:: City Vermin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1727, $change_amount);
			}
		}
		elsif ($text=~/\b1728\b/) {	#:: Betrayers of Di`Zok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1728, $change_amount);
			}
		}
		elsif ($text=~/\b1729\b/) {	#:: Followers of Korucust
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1729, $change_amount);
			}
		}
		elsif ($text=~/\b1730\b/) {	#:: LDoNGood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1730, $change_amount);
			}
		}
		elsif ($text=~/\b1731\b/) {	#:: LDoNEvil
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1731, $change_amount);
			}
		}
		elsif ($text=~/\b1732\b/) {	#:: Tribe Vrodak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1732, $change_amount);
			}
		}
		elsif ($text=~/\b1733\b/) {	#:: Witnesses of Hate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1733, $change_amount);
			}
		}
		elsif ($text=~/\b1734\b/) {	#:: Forgotten Guktan Spirits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1734, $change_amount);
			}
		}
		elsif ($text=~/\b1735\b/) {	#:: Innoruuk's Curse of the Cauldron
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1735, $change_amount);
			}
		}
		elsif ($text=~/\b1736\b/) {	#:: Frostfoot Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1736, $change_amount);
			}
		}
		elsif ($text=~/\b1737\b/) {	#:: Lost Minions of Miragul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1737, $change_amount);
			}
		}
		elsif ($text=~/\b1738\b/) {	#:: Planar Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1738, $change_amount);
			}
		}
		elsif ($text=~/\b1739\b/) {	#:: Synarcana
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1739, $change_amount);
			}
		}
		elsif ($text=~/\b1740\b/) {	#:: Agents of the Synarcana
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1740, $change_amount);
			}
		}
		elsif ($text=~/\b1741\b/) {	#:: Orphans
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1741, $change_amount);
			}
		}
		elsif ($text=~/\b1742\b/) {	#:: Sustainers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1742, $change_amount);
			}
		}
		elsif ($text=~/\b1743\b/) {	#:: Loyals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1743, $change_amount);
			}
		}
		elsif ($text=~/\b1744\b/) {	#:: Progeny
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1744, $change_amount);
			}
		}
		elsif ($text=~/\b1745\b/) {	#:: Rujarkian Slavers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1745, $change_amount);
			}
		}
		elsif ($text=~/\b1746\b/) {	#:: The Broken
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1746, $change_amount);
			}
		}
		elsif ($text=~/\b1747\b/) {	#:: Steelcrown
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1747, $change_amount);
			}
		}
		elsif ($text=~/\b1748\b/) {	#:: Spiritbound
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1748, $change_amount);
			}
		}
		elsif ($text=~/\b1749\b/) {	#:: Steelslaves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1749, $change_amount);
			}
		}
		elsif ($text=~/\b1750\b/) {	#:: Citizens of Takish-Hiz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1750, $change_amount);
			}
		}
		elsif ($text=~/\b1751\b/) {	#:: Geomantic Compact
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1751, $change_amount);
			}
		}
		elsif ($text=~/\b1752\b/) {	#:: Royal Attendants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1752, $change_amount);
			}
		}
		elsif ($text=~/\b1753\b/) {	#:: Flowkeepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1753, $change_amount);
			}
		}
		elsif ($text=~/\b1754\b/) {	#:: Architects of Sand
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1754, $change_amount);
			}
		}
		elsif ($text=~/\b1755\b/) {	#:: Sandworkers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1755, $change_amount);
			}
		}
		elsif ($text=~/\b1756\b/) {	#:: LDoN Hostages
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1756, $change_amount);
			}
		}
		elsif ($text=~/\b1757\b/) {	#:: Servants of the First Witness
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1757, $change_amount);
			}
		}
		elsif ($text=~/\b1758\b/) {	#:: Guktan Scouts
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1758, $change_amount);
			}
		}
		elsif ($text=~/\b1759\b/) {	#:: Wayfarers Brotherhood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1759, $change_amount);
			}
		}
		elsif ($text=~/\b1760\b/) {	#:: Minions of Mischief
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1760, $change_amount);
			}
		}
		elsif ($text=~/\b1761\b/) {	#:: Nihil
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1761, $change_amount);
			}
		}
		elsif ($text=~/\b1762\b/) {	#:: Trusik Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1762, $change_amount);
			}
		}
		elsif ($text=~/\b1763\b/) {	#:: Legion of Mata Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1763, $change_amount);
			}
		}
		elsif ($text=~/\b1764\b/) {	#:: Tunat`Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1764, $change_amount);
			}
		}
		elsif ($text=~/\b1765\b/) {	#:: Zun`Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1765, $change_amount);
			}
		}
		elsif ($text=~/\b1766\b/) {	#:: Pixtt
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1766, $change_amount);
			}
		}
		elsif ($text=~/\b1767\b/) {	#:: Hexxt
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1767, $change_amount);
			}
		}
		elsif ($text=~/\b1768\b/) {	#:: Rav
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1768, $change_amount);
			}
		}
		elsif ($text=~/\b1769\b/) {	#:: Creatures of Taelosia
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1769, $change_amount);
			}
		}
		elsif ($text=~/\b1770\b/) {	#:: Yunjo Slave Resistance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1770, $change_amount);
			}
		}
		elsif ($text=~/\b1771\b/) {	#:: Gladiators of Mata Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1771, $change_amount);
			}
		}
		elsif ($text=~/\b1772\b/) {	#:: The Sun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1772, $change_amount);
			}
		}
		elsif ($text=~/\b1773\b/) {	#:: The Moon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1773, $change_amount);
			}
		}
		elsif ($text=~/\b1774\b/) {	#:: Orcakar Players
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1774, $change_amount);
			}
		}
		elsif ($text=~/\b1775\b/) {	#:: Citizens of Argath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1775, $change_amount);
			}
		}
		elsif ($text=~/\b1776\b/) {	#:: Living Steel
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1776, $change_amount);
			}
		}
		elsif ($text=~/\b1777\b/) {	#:: Argathian Looters
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1777, $change_amount);
			}
		}
		elsif ($text=~/\b1778\b/) {	#:: Citizens of Arelis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1778, $change_amount);
			}
		}
		elsif ($text=~/\b1779\b/) {	#:: Farmers of the Lunanyn
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1779, $change_amount);
			}
		}
		elsif ($text=~/\b1780\b/) {	#:: Minions of War
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1780, $change_amount);
			}
		}
		elsif ($text=~/\b1781\b/) {	#:: Minions of the Sun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1781, $change_amount);
			}
		}
		elsif ($text=~/\b1782\b/) {	#:: Dominion of Beasts
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1782, $change_amount);
			}
		}
		elsif ($text=~/\b1783\b/) {	#:: Citizens of Sarith
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1783, $change_amount);
			}
		}
		elsif ($text=~/\b1784\b/) {	#:: Devout of Oseka
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1784, $change_amount);
			}
		}
		elsif ($text=~/\b1785\b/) {	#:: Minions of Prexus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1785, $change_amount);
			}
		}
		elsif ($text=~/\b1786\b/) {	#:: Seekers of Splendor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1786, $change_amount);
			}
		}
		elsif ($text=~/\b1787\b/) {	#:: Order of Radiance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1787, $change_amount);
			}
		}
		elsif ($text=~/\b1788\b/) {	#:: Devotees of Decay
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1788, $change_amount);
			}
		}
		elsif ($text=~/\b1789\b/) {	#:: Purity of Alra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1789, $change_amount);
			}
		}
		elsif ($text=~/\b1790\b/) {	#:: Paragons of Purity
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1790, $change_amount);
			}
		}
		elsif ($text=~/\b1791\b/) {	#:: Shades of Alra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1791, $change_amount);
			}
		}
		elsif ($text=~/\b1792\b/) {	#:: Paragons of Shadows
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1792, $change_amount);
			}
		}
		elsif ($text=~/\b1793\b/) {	#:: Arcanists of Alra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1793, $change_amount);
			}
		}
		elsif ($text=~/\b1794\b/) {	#:: Paragons of the Arcane
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1794, $change_amount);
			}
		}
		elsif ($text=~/\b1795\b/) {	#:: Living Will of Alra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1795, $change_amount);
			}
		}
		elsif ($text=~/\b1796\b/) {	#:: Paragons of Will
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1796, $change_amount);
			}
		}
		elsif ($text=~/\b1797\b/) {	#:: Servants of the Song
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1797, $change_amount);
			}
		}
		elsif ($text=~/\b1798\b/) {	#:: Citizens of Erillion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1798, $change_amount);
			}
		}
		elsif ($text=~/\b1799\b/) {	#:: Disciples of Order
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1799, $change_amount);
			}
		}
		elsif ($text=~/\b1800\b/) {	#:: The Godblooded
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1800, $change_amount);
			}
		}
		elsif ($text=~/\b1801\b/) {	#:: Iceshard Manor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1801, $change_amount);
			}
		}
		elsif ($text=~/\b1802\b/) {	#:: Dragon Death Keep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1802, $change_amount);
			}
		}
		elsif ($text=~/\b1803\b/) {	#:: Apparitions of Fear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1803, $change_amount);
			}
		}
		elsif ($text=~/\b1804\b/) {	#:: Beetles of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1804, $change_amount);
			}
		}
		elsif ($text=~/\b1805\b/) {	#:: Oashim of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1805, $change_amount);
			}
		}
		elsif ($text=~/\b1806\b/) {	#:: Pests of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1806, $change_amount);
			}
		}
		elsif ($text=~/\b1807\b/) {	#:: Scavengers of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1807, $change_amount);
			}
		}
		elsif ($text=~/\b1808\b/) {	#:: Kangon of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1808, $change_amount);
			}
		}
		elsif ($text=~/\b1809\b/) {	#:: Braxi of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1809, $change_amount);
			}
		}
		elsif ($text=~/\b1810\b/) {	#:: Wyverns of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1810, $change_amount);
			}
		}
		elsif ($text=~/\b1811\b/) {	#:: Selyrah of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1811, $change_amount);
			}
		}
		elsif ($text=~/\b1812\b/) {	#:: Goral of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1812, $change_amount);
			}
		}
		elsif ($text=~/\b1813\b/) {	#:: Snakes of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1813, $change_amount);
			}
		}
		elsif ($text=~/\b1814\b/) {	#:: Pumas of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1814, $change_amount);
			}
		}
		elsif ($text=~/\b1815\b/) {	#:: Grendlaen of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1815, $change_amount);
			}
		}
		elsif ($text=~/\b1816\b/) {	#:: Wolves of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1816, $change_amount);
			}
		}
		elsif ($text=~/\b1817\b/) {	#:: Hunters of Shard's Landing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1817, $change_amount);
			}
		}
		elsif ($text=~/\b1818\b/) {	#:: Forsaken Believers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1818, $change_amount);
			}
		}
		elsif ($text=~/\b1819\b/) {	#:: The Believers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1819, $change_amount);
			}
		}
		elsif ($text=~/\b1820\b/) {	#:: The Conscripted
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1820, $change_amount);
			}
		}
		elsif ($text=~/\b1821\b/) {	#:: Heralds of the Unspoken
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1821, $change_amount);
			}
		}
		elsif ($text=~/\b1822\b/) {	#:: Harbingers of Thule
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1822, $change_amount);
			}
		}
		elsif ($text=~/\b1823\b/) {	#:: Va`Ker
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1823, $change_amount);
			}
		}
		elsif ($text=~/\b1824\b/) {	#:: Terrorwing
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1824, $change_amount);
			}
		}
		elsif ($text=~/\b1825\b/) {	#:: Crystal Circle Builders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1825, $change_amount);
			}
		}
		elsif ($text=~/\b1826\b/) {	#:: The Unearthers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1826, $change_amount);
			}
		}
		elsif ($text=~/\b1827\b/) {	#:: The Displaced
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1827, $change_amount);
			}
		}
		elsif ($text=~/\b1828\b/) {	#:: The Sol'Dal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1828, $change_amount);
			}
		}
		elsif ($text=~/\b1829\b/) {	#:: The Ember
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1829, $change_amount);
			}
		}
		elsif ($text=~/\b1830\b/) {	#:: Defenders of Decay
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1830, $change_amount);
			}
		}
		elsif ($text=~/\b1831\b/) {	#:: Warriors of Rodcet
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1831, $change_amount);
			}
		}
		elsif ($text=~/\b1832\b/) {	#:: Faction1832
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1832, $change_amount);
			}
		}
		elsif ($text=~/\b1833\b/) {	#:: Faction1833
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1833, $change_amount);
			}
		}
		elsif ($text=~/\b1834\b/) {	#:: Faction1834
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1834, $change_amount);
			}
		}
		elsif ($text=~/\b1835\b/) {	#:: Harrowing Horde
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1835, $change_amount);
			}
		}
		elsif ($text=~/\b1836\b/) {	#:: Western Plains Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1836, $change_amount);
			}
		}
		elsif ($text=~/\b1837\b/) {	#:: Ursarachnids
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1837, $change_amount);
			}
		}
		elsif ($text=~/\b1838\b/) {	#:: Doomscale Cultists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1838, $change_amount);
			}
		}
		elsif ($text=~/\b1839\b/) {	#:: Nature Soul - Fire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1839, $change_amount);
			}
		}
		elsif ($text=~/\b1840\b/) {	#:: Nature Soul - Water
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1840, $change_amount);
			}
		}
		elsif ($text=~/\b1841\b/) {	#:: Nature Soul - Earth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1841, $change_amount);
			}
		}
		elsif ($text=~/\b1842\b/) {	#:: Nature Soul - Wood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1842, $change_amount);
			}
		}
		elsif ($text=~/\b1843\b/) {	#:: Flaming Jacks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1843, $change_amount);
			}
		}
		elsif ($text=~/\b1844\b/) {	#:: Ethernere Revenants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1844, $change_amount);
			}
		}
		elsif ($text=~/\b1845\b/) {	#:: Ethernere Spirits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1845, $change_amount);
			}
		}
		elsif ($text=~/\b1846\b/) {	#:: King Naythox Thex Loyalists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1846, $change_amount);
			}
		}
		elsif ($text=~/\b1847\b/) {	#:: Queen Cristanos Thex Loyalists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1847, $change_amount);
			}
		}
		elsif ($text=~/\b1848\b/) {	#:: Neriak Fourth Gate Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1848, $change_amount);
			}
		}
		elsif ($text=~/\b1849\b/) {	#:: Qeynos Guards of West Karana
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1849, $change_amount);
			}
		}
		elsif ($text=~/\b1850\b/) {	#:: Fellowship of the Peacock
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1850, $change_amount);
			}
		}
		elsif ($text=~/\b1851\b/) {	#:: Damsel of Decay's Denizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1851, $change_amount);
			}
		}
		elsif ($text=~/\b1852\b/) {	#:: Enemies of Tranquility
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1852, $change_amount);
			}
		}
		elsif ($text=~/\b1853\b/) {	#:: Legion of the Overking
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1853, $change_amount);
			}
		}
		elsif ($text=~/\b1854\b/) {	#:: Empire of the Di`Zok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1854, $change_amount);
			}
		}
		elsif ($text=~/\b1855\b/) {	#:: Kar`Zok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1855, $change_amount);
			}
		}
		elsif ($text=~/\b1856\b/) {	#:: Flamescale Legion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1856, $change_amount);
			}
		}
		elsif ($text=~/\b1857\b/) {	#:: Guardians of Konikor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1857, $change_amount);
			}
		}
		elsif ($text=~/\b1858\b/) {	#:: Clan Droga
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1858, $change_amount);
			}
		}
		elsif ($text=~/\b1859\b/) {	#:: Majestic Centurion Alliance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1859, $change_amount);
			}
		}
		elsif ($text=~/\b1860\b/) {	#:: The Clawdigger Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1860, $change_amount);
			}
		}
		elsif ($text=~/\b1861\b/) {	#:: Scorpiki
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1861, $change_amount);
			}
		}
		elsif ($text=~/\b1862\b/) {	#:: Denizens of Veeshan's Peak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1862, $change_amount);
			}
		}
		elsif ($text=~/\b1863\b/) {	#:: Servants of Esianti
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1863, $change_amount);
			}
		}
		elsif ($text=~/\b1864\b/) {	#:: Servants of Aalishai
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1864, $change_amount);
			}
		}
		elsif ($text=~/\b1865\b/) {	#:: Servants of Mearatas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1865, $change_amount);
			}
		}
		elsif ($text=~/\b1866\b/) {	#:: Servants of Loruella
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1866, $change_amount);
			}
		}
		elsif ($text=~/\b1867\b/) {	#:: Contingent of the Alabaster Owl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1867, $change_amount);
			}
		}
		elsif ($text=~/\b1868\b/) {	#:: Brass Phoenix Brigade
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1868, $change_amount);
			}
		}
		elsif ($text=~/\b1869\b/) {	#:: Company of the Alabaster Owl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1869, $change_amount);
			}
		}
		elsif ($text=~/\b1870\b/) {	#:: Brass Phoenix Legion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1870, $change_amount);
			}
		}
		elsif ($text=~/\b1871\b/) {	#:: Lords of Esianti
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1871, $change_amount);
			}
		}
		elsif ($text=~/\b1872\b/) {	#:: Lords of Aalishai
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1872, $change_amount);
			}
		}
		elsif ($text=~/\b1873\b/) {	#:: Bloodmoon Night-Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1873, $change_amount);
			}
		}
		elsif ($text=~/\b1874\b/) {	#:: Faction1874
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1874, $change_amount);
			}
		}
		elsif ($text=~/\b1875\b/) {	#:: Faction1875
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1875, $change_amount);
			}
		}
		elsif ($text=~/\b1876\b/) {	#:: Faction1876
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1876, $change_amount);
			}
		}
		elsif ($text=~/\b1877\b/) {	#:: Faction1877
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1877, $change_amount);
			}
		}
		elsif ($text=~/\b1878\b/) {	#:: Faction1878
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1878, $change_amount);
			}
		}
		elsif ($text=~/\b1879\b/) {	#:: Faction1879
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1879, $change_amount);
			}
		}
		elsif ($text=~/\b1880\b/) {	#:: Faction1880
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1880, $change_amount);
			}
		}
		elsif ($text=~/\b1881\b/) {	#:: Faction1881
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1881, $change_amount);
			}
		}
		elsif ($text=~/\b1882\b/) {	#:: Faction1882
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1882, $change_amount);
			}
		}
		elsif ($text=~/\b1883\b/) {	#:: Faction1883
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1883, $change_amount);
			}
		}
		elsif ($text=~/\b1884\b/) {	#:: Faction1884
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1884, $change_amount);
			}
		}
		elsif ($text=~/\b1885\b/) {	#:: Faction1885
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1885, $change_amount);
			}
		}
		elsif ($text=~/\b1886\b/) {	#:: Faction1886
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1886, $change_amount);
			}
		}
		elsif ($text=~/\b1887\b/) {	#:: Faction1887
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1887, $change_amount);
			}
		}
		elsif ($text=~/\b1888\b/) {	#:: Faction1888
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1888, $change_amount);
			}
		}
		elsif ($text=~/\b1889\b/) {	#:: Faction1889
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1889, $change_amount);
			}
		}
		elsif ($text=~/\b1890\b/) {	#:: Faction1890
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1890, $change_amount);
			}
		}
		elsif ($text=~/\b1891\b/) {	#:: Faction1891
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1891, $change_amount);
			}
		}
		elsif ($text=~/\b1892\b/) {	#:: Faction1892
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1892, $change_amount);
			}
		}
		elsif ($text=~/\b1893\b/) {	#:: Faction1893
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1893, $change_amount);
			}
		}
		elsif ($text=~/\b1894\b/) {	#:: Faction1894
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1894, $change_amount);
			}
		}
		elsif ($text=~/\b1895\b/) {	#:: Faction1895
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1895, $change_amount);
			}
		}
		elsif ($text=~/\b1896\b/) {	#:: Faction1896
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1896, $change_amount);
			}
		}
		elsif ($text=~/\b1897\b/) {	#:: Faction1897
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1897, $change_amount);
			}
		}
		elsif ($text=~/\b1898\b/) {	#:: Faction1898
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1898, $change_amount);
			}
		}
		elsif ($text=~/\b1899\b/) {	#:: Faction1899
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1899, $change_amount);
			}
		}
		elsif ($text=~/\b1900\b/) {	#:: Faction1900
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1900, $change_amount);
			}
		}
		elsif ($text=~/\b1901\b/) {	#:: Faction1901
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1901, $change_amount);
			}
		}
		elsif ($text=~/\b1902\b/) {	#:: Faction1902
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1902, $change_amount);
			}
		}
		elsif ($text=~/\b1903\b/) {	#:: Faction1903
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1903, $change_amount);
			}
		}
		elsif ($text=~/\b1904\b/) {	#:: Faction1904
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1904, $change_amount);
			}
		}
		elsif ($text=~/\b1905\b/) {	#:: Faction1905
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1905, $change_amount);
			}
		}
		elsif ($text=~/\b1906\b/) {	#:: Faction1906
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1906, $change_amount);
			}
		}
		elsif ($text=~/\b1907\b/) {	#:: Faction1907
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1907, $change_amount);
			}
		}
		elsif ($text=~/\b1908\b/) {	#:: Faction1908
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1908, $change_amount);
			}
		}
		elsif ($text=~/\b1909\b/) {	#:: Faction1909
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1909, $change_amount);
			}
		}
		elsif ($text=~/\b1910\b/) {	#:: Faction1910
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1910, $change_amount);
			}
		}
		elsif ($text=~/\b1911\b/) {	#:: Faction1911
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1911, $change_amount);
			}
		}
		elsif ($text=~/\b1912\b/) {	#:: Faction1912
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1912, $change_amount);
			}
		}
		elsif ($text=~/\b1913\b/) {	#:: Faction1913
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1913, $change_amount);
			}
		}
		elsif ($text=~/\b1914\b/) {	#:: Faction1914
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1914, $change_amount);
			}
		}
		elsif ($text=~/\b1915\b/) {	#:: Faction1915
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1915, $change_amount);
			}
		}
		elsif ($text=~/\b1916\b/) {	#:: Faction1916
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1916, $change_amount);
			}
		}
		elsif ($text=~/\b1917\b/) {	#:: Faction1917
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1917, $change_amount);
			}
		}
		elsif ($text=~/\b1918\b/) {	#:: Faction1918
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1918, $change_amount);
			}
		}
		elsif ($text=~/\b1919\b/) {	#:: Faction1919
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1919, $change_amount);
			}
		}
		elsif ($text=~/\b1920\b/) {	#:: Faction1920
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1920, $change_amount);
			}
		}
		elsif ($text=~/\b1921\b/) {	#:: Faction1921
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1921, $change_amount);
			}
		}
		elsif ($text=~/\b1922\b/) {	#:: Faction1922
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1922, $change_amount);
			}
		}
		elsif ($text=~/\b1923\b/) {	#:: Faction1923
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1923, $change_amount);
			}
		}
		elsif ($text=~/\b1924\b/) {	#:: Faction1924
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1924, $change_amount);
			}
		}
		elsif ($text=~/\b1925\b/) {	#:: Faction1925
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1925, $change_amount);
			}
		}
		elsif ($text=~/\b1926\b/) {	#:: Faction1926
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1926, $change_amount);
			}
		}
		elsif ($text=~/\b1927\b/) {	#:: Faction1927
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1927, $change_amount);
			}
		}
		elsif ($text=~/\b1928\b/) {	#:: Faction1928
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1928, $change_amount);
			}
		}
		elsif ($text=~/\b1929\b/) {	#:: Faction1929
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1929, $change_amount);
			}
		}
		elsif ($text=~/\b1930\b/) {	#:: Faction1930
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1930, $change_amount);
			}
		}
		elsif ($text=~/\b1931\b/) {	#:: Faction1931
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1931, $change_amount);
			}
		}
		elsif ($text=~/\b1932\b/) {	#:: Faction1932
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1932, $change_amount);
			}
		}
		elsif ($text=~/\b1933\b/) {	#:: Faction1933
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1933, $change_amount);
			}
		}
		elsif ($text=~/\b1934\b/) {	#:: Faction1934
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1934, $change_amount);
			}
		}
		elsif ($text=~/\b1935\b/) {	#:: Faction1935
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1935, $change_amount);
			}
		}
		elsif ($text=~/\b1936\b/) {	#:: Faction1936
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1936, $change_amount);
			}
		}
		elsif ($text=~/\b1937\b/) {	#:: Faction1937
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1937, $change_amount);
			}
		}
		elsif ($text=~/\b1938\b/) {	#:: Faction1938
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1938, $change_amount);
			}
		}
		elsif ($text=~/\b1939\b/) {	#:: Faction1939
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1939, $change_amount);
			}
		}
		elsif ($text=~/\b1940\b/) {	#:: Faction1940
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1940, $change_amount);
			}
		}
		elsif ($text=~/\b1941\b/) {	#:: Faction1941
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1941, $change_amount);
			}
		}
		elsif ($text=~/\b1942\b/) {	#:: Faction1942
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1942, $change_amount);
			}
		}
		elsif ($text=~/\b1943\b/) {	#:: Faction1943
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1943, $change_amount);
			}
		}
		elsif ($text=~/\b1944\b/) {	#:: Faction1944
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1944, $change_amount);
			}
		}
		elsif ($text=~/\b1945\b/) {	#:: Faction1945
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1945, $change_amount);
			}
		}
		elsif ($text=~/\b1946\b/) {	#:: Faction1946
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1946, $change_amount);
			}
		}
		elsif ($text=~/\b1947\b/) {	#:: Faction1947
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1947, $change_amount);
			}
		}
		elsif ($text=~/\b1948\b/) {	#:: Faction1948
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1948, $change_amount);
			}
		}
		elsif ($text=~/\b1949\b/) {	#:: Faction1949
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1949, $change_amount);
			}
		}
		elsif ($text=~/\b1950\b/) {	#:: Faction1950
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1950, $change_amount);
			}
		}
		elsif ($text=~/\b1951\b/) {	#:: Faction1951
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1951, $change_amount);
			}
		}
		elsif ($text=~/\b1952\b/) {	#:: Faction1952
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1952, $change_amount);
			}
		}
		elsif ($text=~/\b1953\b/) {	#:: Faction1953
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1953, $change_amount);
			}
		}
		elsif ($text=~/\b1954\b/) {	#:: Faction1954
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1954, $change_amount);
			}
		}
		elsif ($text=~/\b1955\b/) {	#:: Faction1955
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1955, $change_amount);
			}
		}
		elsif ($text=~/\b1956\b/) {	#:: Faction1956
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1956, $change_amount);
			}
		}
		elsif ($text=~/\b1957\b/) {	#:: Faction1957
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1957, $change_amount);
			}
		}
		elsif ($text=~/\b1958\b/) {	#:: Faction1958
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1958, $change_amount);
			}
		}
		elsif ($text=~/\b1959\b/) {	#:: Faction1959
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1959, $change_amount);
			}
		}
		elsif ($text=~/\b1960\b/) {	#:: Faction1960
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1960, $change_amount);
			}
		}
		elsif ($text=~/\b1961\b/) {	#:: Faction1961
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1961, $change_amount);
			}
		}
		elsif ($text=~/\b1962\b/) {	#:: Faction1962
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1962, $change_amount);
			}
		}
		elsif ($text=~/\b1963\b/) {	#:: Faction1963
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1963, $change_amount);
			}
		}
		elsif ($text=~/\b1964\b/) {	#:: Faction1964
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1964, $change_amount);
			}
		}
		elsif ($text=~/\b1965\b/) {	#:: Faction1965
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1965, $change_amount);
			}
		}
		elsif ($text=~/\b1966\b/) {	#:: Faction1966
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1966, $change_amount);
			}
		}
		elsif ($text=~/\b1967\b/) {	#:: Faction1967
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1967, $change_amount);
			}
		}
		elsif ($text=~/\b1968\b/) {	#:: Faction1968
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1968, $change_amount);
			}
		}
		elsif ($text=~/\b1969\b/) {	#:: Faction1969
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1969, $change_amount);
			}
		}
		elsif ($text=~/\b1970\b/) {	#:: Faction1970
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1970, $change_amount);
			}
		}
		elsif ($text=~/\b1971\b/) {	#:: Faction1971
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1971, $change_amount);
			}
		}
		elsif ($text=~/\b1972\b/) {	#:: Faction1972
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1972, $change_amount);
			}
		}
		elsif ($text=~/\b1973\b/) {	#:: Faction1973
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1973, $change_amount);
			}
		}
		elsif ($text=~/\b1974\b/) {	#:: Faction1974
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1974, $change_amount);
			}
		}
		elsif ($text=~/\b1975\b/) {	#:: Faction1975
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1975, $change_amount);
			}
		}
		elsif ($text=~/\b1976\b/) {	#:: Faction1976
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1976, $change_amount);
			}
		}
		elsif ($text=~/\b1977\b/) {	#:: Faction1977
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1977, $change_amount);
			}
		}
		elsif ($text=~/\b1978\b/) {	#:: Faction1978
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1978, $change_amount);
			}
		}
		elsif ($text=~/\b1979\b/) {	#:: Faction1979
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1979, $change_amount);
			}
		}
		elsif ($text=~/\b1980\b/) {	#:: Faction1980
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1980, $change_amount);
			}
		}
		elsif ($text=~/\b1981\b/) {	#:: Faction1981
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1981, $change_amount);
			}
		}
		elsif ($text=~/\b1982\b/) {	#:: Faction1982
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1982, $change_amount);
			}
		}
		elsif ($text=~/\b1983\b/) {	#:: Faction1983
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1983, $change_amount);
			}
		}
		elsif ($text=~/\b1984\b/) {	#:: Faction1984
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1984, $change_amount);
			}
		}
		elsif ($text=~/\b1985\b/) {	#:: Faction1985
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1985, $change_amount);
			}
		}
		elsif ($text=~/\b1986\b/) {	#:: Faction1986
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1986, $change_amount);
			}
		}
		elsif ($text=~/\b1987\b/) {	#:: Faction1987
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1987, $change_amount);
			}
		}
		elsif ($text=~/\b1988\b/) {	#:: Faction1988
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1988, $change_amount);
			}
		}
		elsif ($text=~/\b1989\b/) {	#:: Faction1989
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1989, $change_amount);
			}
		}
		elsif ($text=~/\b1990\b/) {	#:: Faction1990
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1990, $change_amount);
			}
		}
		elsif ($text=~/\b1991\b/) {	#:: Faction1991
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1991, $change_amount);
			}
		}
		elsif ($text=~/\b1992\b/) {	#:: Faction1992
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1992, $change_amount);
			}
		}
		elsif ($text=~/\b1993\b/) {	#:: Faction1993
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1993, $change_amount);
			}
		}
		elsif ($text=~/\b1994\b/) {	#:: Faction1994
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1994, $change_amount);
			}
		}
		elsif ($text=~/\b1995\b/) {	#:: Faction1995
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1995, $change_amount);
			}
		}
		elsif ($text=~/\b1996\b/) {	#:: Faction1996
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1996, $change_amount);
			}
		}
		elsif ($text=~/\b1997\b/) {	#:: Faction1997
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1997, $change_amount);
			}
		}
		elsif ($text=~/\b1998\b/) {	#:: Faction1998
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1998, $change_amount);
			}
		}
		elsif ($text=~/\b1999\b/) {	#:: Faction1999
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1999, $change_amount);
			}
		}
		elsif ($text=~/\b2000\b/) {	#:: Faction2000
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2000, $change_amount);
			}
		}
		elsif ($text=~/\b2001\b/) {	#:: Faction2001
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2001, $change_amount);
			}
		}
		elsif ($text=~/\b2002\b/) {	#:: Faction2002
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2002, $change_amount);
			}
		}
		elsif ($text=~/\b2003\b/) {	#:: Faction2003
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2003, $change_amount);
			}
		}
		elsif ($text=~/\b2004\b/) {	#:: Faction2004
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2004, $change_amount);
			}
		}
		elsif ($text=~/\b2005\b/) {	#:: Faction2005
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2005, $change_amount);
			}
		}
		elsif ($text=~/\b2006\b/) {	#:: Faction2006
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2006, $change_amount);
			}
		}
		elsif ($text=~/\b2007\b/) {	#:: Faction2007
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2007, $change_amount);
			}
		}
		elsif ($text=~/\b2008\b/) {	#:: Faction2008
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2008, $change_amount);
			}
		}
		elsif ($text=~/\b2009\b/) {	#:: Faction2009
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2009, $change_amount);
			}
		}
		elsif ($text=~/\b2010\b/) {	#:: Faction2010
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2010, $change_amount);
			}
		}
		elsif ($text=~/\b2011\b/) {	#:: Faction2011
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2011, $change_amount);
			}
		}
		elsif ($text=~/\b2012\b/) {	#:: Faction2012
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2012, $change_amount);
			}
		}
		elsif ($text=~/\b2013\b/) {	#:: Faction2013
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2013, $change_amount);
			}
		}
		elsif ($text=~/\b2014\b/) {	#:: Faction2014
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2014, $change_amount);
			}
		}
		elsif ($text=~/\b2015\b/) {	#:: Faction2015
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2015, $change_amount);
			}
		}
		elsif ($text=~/\b2016\b/) {	#:: Faction2016
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2016, $change_amount);
			}
		}
		elsif ($text=~/\b2017\b/) {	#:: Faction2017
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2017, $change_amount);
			}
		}
		elsif ($text=~/\b2018\b/) {	#:: Faction2018
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2018, $change_amount);
			}
		}
		elsif ($text=~/\b2019\b/) {	#:: Faction2019
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2019, $change_amount);
			}
		}
		elsif ($text=~/\b2020\b/) {	#:: Faction2020
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2020, $change_amount);
			}
		}
		elsif ($text=~/\b2021\b/) {	#:: Faction2021
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2021, $change_amount);
			}
		}
		elsif ($text=~/\b2022\b/) {	#:: Faction2022
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2022, $change_amount);
			}
		}
		elsif ($text=~/\b2023\b/) {	#:: Faction2023
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2023, $change_amount);
			}
		}
		elsif ($text=~/\b2024\b/) {	#:: Faction2024
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2024, $change_amount);
			}
		}
		elsif ($text=~/\b2025\b/) {	#:: Faction2025
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2025, $change_amount);
			}
		}
		elsif ($text=~/\b2026\b/) {	#:: Faction2026
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2026, $change_amount);
			}
		}
		elsif ($text=~/\b2027\b/) {	#:: Faction2027
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2027, $change_amount);
			}
		}
		elsif ($text=~/\b2028\b/) {	#:: Faction2028
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2028, $change_amount);
			}
		}
		elsif ($text=~/\b2029\b/) {	#:: Faction2029
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2029, $change_amount);
			}
		}
		elsif ($text=~/\b2030\b/) {	#:: Faction2030
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2030, $change_amount);
			}
		}
		elsif ($text=~/\b2031\b/) {	#:: Faction2031
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2031, $change_amount);
			}
		}
		elsif ($text=~/\b2032\b/) {	#:: Faction2032
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2032, $change_amount);
			}
		}
		elsif ($text=~/\b2033\b/) {	#:: Faction2033
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2033, $change_amount);
			}
		}
		elsif ($text=~/\b2034\b/) {	#:: Faction2034
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2034, $change_amount);
			}
		}
		elsif ($text=~/\b2035\b/) {	#:: Faction2035
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2035, $change_amount);
			}
		}
		elsif ($text=~/\b2036\b/) {	#:: Faction2036
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2036, $change_amount);
			}
		}
		elsif ($text=~/\b2037\b/) {	#:: Faction2037
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2037, $change_amount);
			}
		}
		elsif ($text=~/\b2038\b/) {	#:: Faction2038
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2038, $change_amount);
			}
		}
		elsif ($text=~/\b2039\b/) {	#:: Faction2039
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2039, $change_amount);
			}
		}
		elsif ($text=~/\b2040\b/) {	#:: Faction2040
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2040, $change_amount);
			}
		}
		elsif ($text=~/\b2041\b/) {	#:: Faction2041
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2041, $change_amount);
			}
		}
		elsif ($text=~/\b2042\b/) {	#:: Faction2042
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2042, $change_amount);
			}
		}
		elsif ($text=~/\b2043\b/) {	#:: Faction2043
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2043, $change_amount);
			}
		}
		elsif ($text=~/\b2044\b/) {	#:: Faction2044
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2044, $change_amount);
			}
		}
		elsif ($text=~/\b2045\b/) {	#:: Faction2045
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2045, $change_amount);
			}
		}
		elsif ($text=~/\b2046\b/) {	#:: Faction2046
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2046, $change_amount);
			}
		}
		elsif ($text=~/\b2047\b/) {	#:: Faction2047
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2047, $change_amount);
			}
		}
	}
	else {
		quest::say("You lack sufficient status to use these commands");
	}
}

sub EVENT_ITEM {
	#:: Match 1 platinum
	if (plugin::takeCoin(0, 0, 0, 1)) {
		$change_amount = 500;
		quest::say("Now your faction will be adjusted by $change_amount points.");
	}
	#:: Match 1 gold
	if (plugin::takeCoin(0, 0, 1, 0)) {
		$change_amount = 100;
		quest::say("Now your faction will be adjusted by $change_amount points.");
	}
	#:: Match 1 silver
	if (plugin::takeCoin(0, 1, 0, 0)) {
		$change_amount = -100;
		quest::say("Now your faction will be adjusted by $change_amount points.");
	}
	#:: Match 1 copper
	if (plugin::takeCoin(1, 0, 0, 0)) {
		$change_amount = -500;
		quest::say("Now your faction will be adjusted by $change_amount points.");
	}
	#:: Match a 66615 - Gold Ticket
	if (plugin::takeItems(66615 => 1)) {
		my @prizes = (11668, 59509);
		foreach $prizes (@prizes) {
			next if (plugin::check_hasitem($client, $prizes));
			quest::summonitem($prizes);
			last;
		}
	}
}

sub Train {
	$client->Message( 15, "Your experiences across the realm have infused you with increased power and knowledge..." );
	#:: Set all available skills to maximum for race/class at current level
	foreach my $skill ( 0 .. 74 ) {
		next unless $client->CanHaveSkill($skill);
		my $maxSkill = $client->MaxSkill( $skill, $client->GetClass(), $ulevel );
		next unless $maxSkill > $client->GetRawSkill($skill);
		$client->SetSkill( $skill, $maxSkill );
	}
	#:: Clear out all old spells just in case
	quest::unscribespells();
	#:: Scribe all spells up to current level
	quest::scribespells($ulevel,1);
}
