my $change_amount = 0;

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
		if ($text=~/faction/i) {
			quest::say("I can adjust your faction.  Hand me 1 copper to lose 500, 1 silver to lose 100, 1 gold to gain 100, and 1 platinum to gain 500--then speak the faction number.");
		}
		if ($text=~/\b1\b/) {	#:: Agents of Mistmoore
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(1, $change_amount);
			}
		}
		if ($text=~/\b2\b/) {	#:: Agnarr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(2, $change_amount);
			}
		}
		if ($text=~/\b3\b/) {	#:: Akheva
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(3, $change_amount);
			}
		}
		if ($text=~/\b4\b/) {	#:: Allize Taeew
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(4, $change_amount);
			}
		}
		if ($text=~/\b5\b/) {	#:: Allize Volew
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(5, $change_amount);
			}
		}
		if ($text=~/\b6\b/) {	#:: Anchorites of Brell Serilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(6, $change_amount);
			}
		}
		if ($text=~/\b8\b/) {	#:: Anti-mage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(8, $change_amount);
			}
		}
		if ($text=~/\b9\b/) {	#:: Antonius Bayle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(9, $change_amount);
			}
		}
		if ($text=~/\b10\b/) {	#:: Arboreans of Faydark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(10, $change_amount);
			}
		}
		if ($text=~/\b11\b/) {	#:: Arcane Scientists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(11, $change_amount);
			}
		}
		if ($text=~/\b12\b/) {	#:: Ashen Order
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(12, $change_amount);
			}
		}
		if ($text=~/\b13\b/) {	#:: Askr the Lost
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(13, $change_amount);
			}
		}
		if ($text=~/\b14\b/) {	#:: Aviak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(14, $change_amount);
			}
		}
		if ($text=~/\b15\b/) {	#:: Banker
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(15, $change_amount);
			}
		}
		if ($text=~/\b16\b/) {	#:: Battalion of Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(16, $change_amount);
			}
		}
		if ($text=~/\b17\b/) {	#:: Befallen Inhabitants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(17, $change_amount);
			}
		}
		if ($text=~/\b18\b/) {	#:: Beta Neutral
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(18, $change_amount);
			}
		}
		if ($text=~/\b19\b/) {	#:: Betrayers of Di`Zok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(19, $change_amount);
			}
		}
		if ($text=~/\b20\b/) {	#:: Bloodgills
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(20, $change_amount);
			}
		}
		if ($text=~/\b21\b/) {	#:: Bloodsabers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(21, $change_amount);
			}
		}
		if ($text=~/\b22\b/) {	#:: Broken Skull Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(22, $change_amount);
			}
		}
		if ($text=~/\b23\b/) {	#:: Brood of Di`Zok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(23, $change_amount);
			}
		}
		if ($text=~/\b24\b/) {	#:: Brood of Kotiz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(24, $change_amount);
			}
		}
		if ($text=~/\b25\b/) {	#:: Brood of Ssraeshza
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(25, $change_amount);
			}
		}
		if ($text=~/\b26\b/) {	#:: Brownie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(26, $change_amount);
			}
		}
		if ($text=~/\b27\b/) {	#:: Burning Dead
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(27, $change_amount);
			}
		}
		if ($text=~/\b28\b/) {	#:: Burynai Legion
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(28, $change_amount);
			}
		}
		if ($text=~/\b29\b/) {	#:: Butcherblock Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(29, $change_amount);
			}
		}
		if ($text=~/\b30\b/) {	#:: Cabilis Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(30, $change_amount);
			}
		}
		if ($text=~/\b31\b/) {	#:: Carson McCabe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(31, $change_amount);
			}
		}
		if ($text=~/\b32\b/) {	#:: Chetari
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(32, $change_amount);
			}
		}
		if ($text=~/\b33\b/) {	#:: Circle of Unseen Hands
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(33, $change_amount);
			}
		}
		if ($text=~/\b35\b/) {	#:: Citizens of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(35, $change_amount);
			}
		}
		if ($text=~/\b36\b/) {	#:: Citizens of Qeynos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(36, $change_amount);
			}
		}
		if ($text=~/\b37\b/) {	#:: Citizens of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(37, $change_amount);
			}
		}
		if ($text=~/\b38\b/) {	#:: Citizens of Takish-Hiz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(38, $change_amount);
			}
		}
		if ($text=~/\b39\b/) {	#:: Clan Grikbar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(39, $change_amount);
			}
		}
		if ($text=~/\b40\b/) {	#:: Clan Kolbok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(40, $change_amount);
			}
		}
		if ($text=~/\b41\b/) {	#:: Clan RunnyEye
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(41, $change_amount);
			}
		}
		if ($text=~/\b42\b/) {	#:: Claws of Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(42, $change_amount);
			}
		}
		if ($text=~/\b43\b/) {	#:: Clerics of Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(43, $change_amount);
			}
		}
		if ($text=~/\b44\b/) {	#:: Clerics of Underfoot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(44, $change_amount);
			}
		}
		if ($text=~/\b45\b/) {	#:: Clockwork Gnome
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(45, $change_amount);
			}
		}
		if ($text=~/\b46\b/) {	#:: Clurg
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(46, $change_amount);
			}
		}
		if ($text=~/\b47\b/) {	#:: Coalition of Trade Folk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(47, $change_amount);
			}
		}
		if ($text=~/\b48\b/) {	#:: Coalition of Tradefolk Underground
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(48, $change_amount);
			}
		}
		if ($text=~/\b49\b/) {	#:: Coldain
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(49, $change_amount);
			}
		}
		if ($text=~/\b50\b/) {	#:: Combine Empire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(50, $change_amount);
			}
		}
		if ($text=~/\b51\b/) {	#:: Commons Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(51, $change_amount);
			}
		}
		if ($text=~/\b52\b/) {	#:: Concillium Universus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(52, $change_amount);
			}
		}
		if ($text=~/\b53\b/) {	#:: Corrupt Qeynos Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(53, $change_amount);
			}
		}
		if ($text=~/\b54\b/) {	#:: Coterie Elite
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(54, $change_amount);
			}
		}
		if ($text=~/\b55\b/) {	#:: Coterie of the Eternal Night
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(55, $change_amount);
			}
		}
		if ($text=~/\b56\b/) {	#:: Craftkeepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(56, $change_amount);
			}
		}
		if ($text=~/\b57\b/) {	#:: Craknek Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(57, $change_amount);
			}
		}
		if ($text=~/\b58\b/) {	#:: Creatures of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(58, $change_amount);
			}
		}
		if ($text=~/\b59\b/) {	#:: Creatures of Taelosia
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(59, $change_amount);
			}
		}
		if ($text=~/\b60\b/) {	#:: Crimson Hands
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(60, $change_amount);
			}
		}
		if ($text=~/\b61\b/) {	#:: Critters of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(61, $change_amount);
			}
		}
		if ($text=~/\b62\b/) {	#:: Crusaders of Greenmist
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(62, $change_amount);
			}
		}
		if ($text=~/\b63\b/) {	#:: Crushbone Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(63, $change_amount);
			}
		}
		if ($text=~/\b64\b/) {	#:: Cult of the Arisen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(64, $change_amount);
			}
		}
		if ($text=~/\b65\b/) {	#:: Cult of the Great Saprophyte
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(65, $change_amount);
			}
		}
		if ($text=~/\b66\b/) {	#:: Da Bashers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(66, $change_amount);
			}
		}
		if ($text=~/\b67\b/) {	#:: Dain Frostreaver IV
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(67, $change_amount);
			}
		}
		if ($text=~/\b68\b/) {	#:: Dar Khura
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(68, $change_amount);
			}
		}
		if ($text=~/\b69\b/) {	#:: Dark Bargainers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(69, $change_amount);
			}
		}
		if ($text=~/\b70\b/) {	#:: Dark Ones
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(70, $change_amount);
			}
		}
		if ($text=~/\b71\b/) {	#:: Dark Reflection
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(71, $change_amount);
			}
		}
		if ($text=~/\b72\b/) {	#:: Dark Sendings
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(72, $change_amount);
			}
		}
		if ($text=~/\b73\b/) {	#:: Darkpaws of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(73, $change_amount);
			}
		}
		if ($text=~/\b74\b/) {	#:: Dawnhoppers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(74, $change_amount);
			}
		}
		if ($text=~/\b75\b/) {	#:: Deathfist Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(75, $change_amount);
			}
		}
		if ($text=~/\b76\b/) {	#:: Deep Muses
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(76, $change_amount);
			}
		}
		if ($text=~/\b77\b/) {	#:: Deeppockets
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(77, $change_amount);
			}
		}
		if ($text=~/\b78\b/) {	#:: Deepshade Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(78, $change_amount);
			}
		}
		if ($text=~/\b79\b/) {	#:: Deepwater Knights
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(79, $change_amount);
			}
		}
		if ($text=~/\b80\b/) {	#:: Defective Clockwork
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(80, $change_amount);
			}
		}
		if ($text=~/\b81\b/) {	#:: Defenders of the Haven
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(81, $change_amount);
			}
		}
		if ($text=~/\b82\b/) {	#:: Denizens of Fear
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(82, $change_amount);
			}
		}
		if ($text=~/\b83\b/) {	#:: Dervish Cutthroats
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(83, $change_amount);
			}
		}
		if ($text=~/\b84\b/) {	#:: Disciples of Kerafyrm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(84, $change_amount);
			}
		}
		if ($text=~/\b85\b/) {	#:: Disciples of Rhag`Zadune
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(85, $change_amount);
			}
		}
		if ($text=~/\b86\b/) {	#:: Dismal Rage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(86, $change_amount);
			}
		}
		if ($text=~/\b87\b/) {	#:: Dreadguard Inner
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(87, $change_amount);
			}
		}
		if ($text=~/\b88\b/) {	#:: Dreadguard Outer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(88, $change_amount);
			}
		}
		if ($text=~/\b89\b/) {	#:: Drusella Sathir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(89, $change_amount);
			}
		}
		if ($text=~/\b90\b/) {	#:: Ebon Mask
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(90, $change_amount);
			}
		}
		if ($text=~/\b91\b/) {	#:: Eldritch Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(91, $change_amount);
			}
		}
		if ($text=~/\b92\b/) {	#:: Emerald Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(92, $change_amount);
			}
		}
		if ($text=~/\b93\b/) {	#:: Emperor Ssraeshza
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(93, $change_amount);
			}
		}
		if ($text=~/\b94\b/) {	#:: Evil Eye
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(94, $change_amount);
			}
		}
		if ($text=~/\b95\b/) {	#:: Exiled Frogloks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(95, $change_amount);
			}
		}
		if ($text=~/\b96\b/) {	#:: Eye of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(96, $change_amount);
			}
		}
		if ($text=~/\b97\b/) {	#:: Faerie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(97, $change_amount);
			}
		}
		if ($text=~/\b98\b/) {	#:: Fallen of Bloody Kithicor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(98, $change_amount);
			}
		}
		if ($text=~/\b99\b/) {	#:: Faydark's Champions
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(99, $change_amount);
			}
		}
		if ($text=~/\b100\b/) {	#:: FelGuard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(100, $change_amount);
			}
		}
		if ($text=~/\b101\b/) {	#:: Firiona Vie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(101, $change_amount);
			}
		}
		if ($text=~/\b102\b/) {	#:: Fizzlethorpe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(102, $change_amount);
			}
		}
		if ($text=~/\b103\b/) {	#:: Followers of Korucust
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(103, $change_amount);
			}
		}
		if ($text=~/\b104\b/) {	#:: Forgotten Guktan Spirits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(104, $change_amount);
			}
		}
		if ($text=~/\b105\b/) {	#:: Freeport Militia
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(105, $change_amount);
			}
		}
		if ($text=~/\b106\b/) {	#:: Frogloks of Guk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(106, $change_amount);
			}
		}
		if ($text=~/\b107\b/) {	#:: Frogloks of Krup
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(107, $change_amount);
			}
		}
		if ($text=~/\b108\b/) {	#:: Frogloks of Kunark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(108, $change_amount);
			}
		}
		if ($text=~/\b109\b/) {	#:: Frogloks of Sebilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(109, $change_amount);
			}
		}
		if ($text=~/\b110\b/) {	#:: Frostfoot Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(110, $change_amount);
			}
		}
		if ($text=~/\b111\b/) {	#:: Fungus Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(111, $change_amount);
			}
		}
		if ($text=~/\b112\b/) {	#:: Gate Callers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(112, $change_amount);
			}
		}
		if ($text=~/\b113\b/) {	#:: Gate Keepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(113, $change_amount);
			}
		}
		if ($text=~/\b114\b/) {	#:: Gelistial
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(114, $change_amount);
			}
		}
		if ($text=~/\b115\b/) {	#:: Gem Choppers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(115, $change_amount);
			}
		}
		if ($text=~/\b116\b/) {	#:: Geonid Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(116, $change_amount);
			}
		}
		if ($text=~/\b117\b/) {	#:: Ghouls of Neriak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(117, $change_amount);
			}
		}
		if ($text=~/\b118\b/) {	#:: Goblin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(118, $change_amount);
			}
		}
		if ($text=~/\b119\b/) {	#:: Goblins of Cleaving Tooth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(119, $change_amount);
			}
		}
		if ($text=~/\b120\b/) {	#:: Goblins of Fire Peak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(120, $change_amount);
			}
		}
		if ($text=~/\b121\b/) {	#:: Goblins of Mountain Death
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(121, $change_amount);
			}
		}
		if ($text=~/\b122\b/) {	#:: Gor Taku
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(122, $change_amount);
			}
		}
		if ($text=~/\b123\b/) {	#:: Gralloks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(123, $change_amount);
			}
		}
		if ($text=~/\b124\b/) {	#:: Greater Brann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(124, $change_amount);
			}
		}
		if ($text=~/\b125\b/) {	#:: Greater Jord Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(125, $change_amount);
			}
		}
		if ($text=~/\b126\b/) {	#:: Greater Vann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(126, $change_amount);
			}
		}
		if ($text=~/\b127\b/) {	#:: Greater Vind Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(127, $change_amount);
			}
		}
		if ($text=~/\b128\b/) {	#:: Green Blood Knights
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(128, $change_amount);
			}
		}
		if ($text=~/\b129\b/) {	#:: Grieg
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(129, $change_amount);
			}
		}
		if ($text=~/\b130\b/) {	#:: Grimlings of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(130, $change_amount);
			}
		}
		if ($text=~/\b131\b/) {	#:: Grobb Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(131, $change_amount);
			}
		}
		if ($text=~/\b132\b/) {	#:: Guardians of Shar Vahl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(132, $change_amount);
			}
		}
		if ($text=~/\b133\b/) {	#:: Guardians of the Vale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(133, $change_amount);
			}
		}
		if ($text=~/\b134\b/) {	#:: Guardians of Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(134, $change_amount);
			}
		}
		if ($text=~/\b135\b/) {	#:: Guards of Qeynos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(135, $change_amount);
			}
		}
		if ($text=~/\b136\b/) {	#:: Guktan Elders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(136, $change_amount);
			}
		}
		if ($text=~/\b137\b/) {	#:: Hall of the Ebon Mask
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(137, $change_amount);
			}
		}
		if ($text=~/\b138\b/) {	#:: Hand Legionnaries
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(138, $change_amount);
			}
		}
		if ($text=~/\b139\b/) {	#:: Hand of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(139, $change_amount);
			}
		}
		if ($text=~/\b140\b/) {	#:: Haven Defenders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(140, $change_amount);
			}
		}
		if ($text=~/\b141\b/) {	#:: Haven Smugglers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(141, $change_amount);
			}
		}
		if ($text=~/\b142\b/) {	#:: Heart of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(142, $change_amount);
			}
		}
		if ($text=~/\b143\b/) {	#:: Heretics
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(143, $change_amount);
			}
		}
		if ($text=~/\b144\b/) {	#:: Hexxt
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(144, $change_amount);
			}
		}
		if ($text=~/\b145\b/) {	#:: High Council of Erudin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(145, $change_amount);
			}
		}
		if ($text=~/\b146\b/) {	#:: High Council of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(146, $change_amount);
			}
		}
		if ($text=~/\b147\b/) {	#:: High Guard of Erudin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(147, $change_amount);
			}
		}
		if ($text=~/\b148\b/) {	#:: HighHold Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(148, $change_amount);
			}
		}
		if ($text=~/\b149\b/) {	#:: Highpass Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(149, $change_amount);
			}
		}
		if ($text=~/\b150\b/) {	#:: Holgresh
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(150, $change_amount);
			}
		}
		if ($text=~/\b151\b/) {	#:: Horde of Xalgoz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(151, $change_amount);
			}
		}
		if ($text=~/\b152\b/) {	#:: House of Fordel
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(152, $change_amount);
			}
		}
		if ($text=~/\b153\b/) {	#:: House of Midst
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(153, $change_amount);
			}
		}
		if ($text=~/\b154\b/) {	#:: House of Stout
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(154, $change_amount);
			}
		}
		if ($text=~/\b155\b/) {	#:: Indigo Brotherhood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(155, $change_amount);
			}
		}
		if ($text=~/\b156\b/) {	#:: Inhabitants of Hate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(156, $change_amount);
			}
		}
		if ($text=~/\b157\b/) {	#:: Inhabitants of Tanaan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(157, $change_amount);
			}
		}
		if ($text=~/\b158\b/) {	#:: Innoruuk's Curse of the Cauldron
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(158, $change_amount);
			}
		}
		if ($text=~/\b159\b/) {	#:: Jaggedpine Treefolk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(159, $change_amount);
			}
		}
		if ($text=~/\b160\b/) {	#:: Jaled-Dar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(160, $change_amount);
			}
		}
		if ($text=~/\b161\b/) {	#:: Johanius Barleou
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(161, $change_amount);
			}
		}
		if ($text=~/\b162\b/) {	#:: Kaladim Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(162, $change_amount);
			}
		}
		if ($text=~/\b164\b/) {	#:: Kane Bayle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(164, $change_amount);
			}
		}
		if ($text=~/\b165\b/) {	#:: Karana
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(165, $change_amount);
			}
		}
		if ($text=~/\b166\b/) {	#:: Karana Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(166, $change_amount);
			}
		}
		if ($text=~/\b167\b/) {	#:: Karana Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(167, $change_amount);
			}
		}
		if ($text=~/\b168\b/) {	#:: Katta Castellum Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(168, $change_amount);
			}
		}
		if ($text=~/\b169\b/) {	#:: Kazon Stormhammer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(169, $change_amount);
			}
		}
		if ($text=~/\b170\b/) {	#:: Keepers of the Art
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(170, $change_amount);
			}
		}
		if ($text=~/\b171\b/) {	#:: Keepers of the Claw
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(171, $change_amount);
			}
		}
		if ($text=~/\b172\b/) {	#:: Kejek Village
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(172, $change_amount);
			}
		}
		if ($text=~/\b173\b/) {	#:: Kejekan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(173, $change_amount);
			}
		}
		if ($text=~/\b174\b/) {	#:: Kelethin Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(174, $change_amount);
			}
		}
		if ($text=~/\b175\b/) {	#:: Kerra Isle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(175, $change_amount);
			}
		}
		if ($text=~/\b176\b/) {	#:: King Ak'Anon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(176, $change_amount);
			}
		}
		if ($text=~/\b177\b/) {	#:: King Naythox Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(177, $change_amount);
			}
		}
		if ($text=~/\b178\b/) {	#:: King Tearis Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(178, $change_amount);
			}
		}
		if ($text=~/\b179\b/) {	#:: King Tormax
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(179, $change_amount);
			}
		}
		if ($text=~/\b180\b/) {	#:: King Xorbb
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(180, $change_amount);
			}
		}
		if ($text=~/\b181\b/) {	#:: Kingdom of Above and Below
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(181, $change_amount);
			}
		}
		if ($text=~/\b182\b/) {	#:: Kithicor Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(182, $change_amount);
			}
		}
		if ($text=~/\b183\b/) {	#:: Knights of Thunder
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(183, $change_amount);
			}
		}
		if ($text=~/\b184\b/) {	#:: Knights of Truth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(184, $change_amount);
			}
		}
		if ($text=~/\b185\b/) {	#:: Kobold
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(185, $change_amount);
			}
		}
		if ($text=~/\b186\b/) {	#:: Kobolds of Fire Pit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(186, $change_amount);
			}
		}
		if ($text=~/\b187\b/) {	#:: Krag
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(187, $change_amount);
			}
		}
		if ($text=~/\b188\b/) {	#:: Kromrif
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(188, $change_amount);
			}
		}
		if ($text=~/\b189\b/) {	#:: Kromzek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(189, $change_amount);
			}
		}
		if ($text=~/\b190\b/) {	#:: Kunark Fire Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(190, $change_amount);
			}
		}
		if ($text=~/\b191\b/) {	#:: Lake Recondite Bandits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(191, $change_amount);
			}
		}
		if ($text=~/\b192\b/) {	#:: League of Antonican Bards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(192, $change_amount);
			}
		}
		if ($text=~/\b193\b/) {	#:: Legion of Cabilis
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(193, $change_amount);
			}
		}
		if ($text=~/\b194\b/) {	#:: Legion of Mata Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(194, $change_amount);
			}
		}
		if ($text=~/\b195\b/) {	#:: Lesser Brann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(195, $change_amount);
			}
		}
		if ($text=~/\b196\b/) {	#:: Lesser Jord Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(196, $change_amount);
			}
		}
		if ($text=~/\b197\b/) {	#:: Lesser Vann Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(197, $change_amount);
			}
		}
		if ($text=~/\b198\b/) {	#:: Lesser Vind Giants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(198, $change_amount);
			}
		}
		if ($text=~/\b199\b/) {	#:: Lithiniath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(199, $change_amount);
			}
		}
		if ($text=~/\b200\b/) {	#:: Lizard Man
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(200, $change_amount);
			}
		}
		if ($text=~/\b201\b/) {	#:: Lodikai
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(201, $change_amount);
			}
		}
		if ($text=~/\b202\b/) {	#:: Lorekeepers of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(202, $change_amount);
			}
		}
		if ($text=~/\b203\b/) {	#:: Lost Kingdom of Lok
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(203, $change_amount);
			}
		}
		if ($text=~/\b204\b/) {	#:: Lost Minions of Miragul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(204, $change_amount);
			}
		}
		if ($text=~/\b205\b/) {	#:: Luclin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(205, $change_amount);
			}
		}
		if ($text=~/\b206\b/) {	#:: Magus Conlegium
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(206, $change_amount);
			}
		}
		if ($text=~/\b207\b/) {	#:: Mayong Mistmoore
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(207, $change_amount);
			}
		}
		if ($text=~/\b208\b/) {	#:: Mayor Gubbin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(208, $change_amount);
			}
		}
		if ($text=~/\b209\b/) {	#:: Meldrath
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(209, $change_amount);
			}
		}
		if ($text=~/\b210\b/) {	#:: Merchants of Ak'Anon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(210, $change_amount);
			}
		}
		if ($text=~/\b211\b/) {	#:: Merchants of Erudin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(211, $change_amount);
			}
		}
		if ($text=~/\b212\b/) {	#:: Merchants of Felwithe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(212, $change_amount);
			}
		}
		if ($text=~/\b213\b/) {	#:: Merchants of Halas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(213, $change_amount);
			}
		}
		if ($text=~/\b214\b/) {	#:: Merchants of Highpass
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(214, $change_amount);
			}
		}
		if ($text=~/\b215\b/) {	#:: Merchants of Kaladim
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(215, $change_amount);
			}
		}
		if ($text=~/\b216\b/) {	#:: Merchants of Ogguk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(216, $change_amount);
			}
		}
		if ($text=~/\b217\b/) {	#:: Merchants of Qeynos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(217, $change_amount);
			}
		}
		if ($text=~/\b218\b/) {	#:: Merchants of Rivervale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(218, $change_amount);
			}
		}
		if ($text=~/\b219\b/) {	#:: Miners Guild 249
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(219, $change_amount);
			}
		}
		if ($text=~/\b220\b/) {	#:: Miners Guild 628
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(220, $change_amount);
			}
		}
		if ($text=~/\b221\b/) {	#:: Minions of Scale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(221, $change_amount);
			}
		}
		if ($text=~/\b222\b/) {	#:: Minions of the Sunlord
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(222, $change_amount);
			}
		}
		if ($text=~/\b223\b/) {	#:: Minions of Underfoot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(223, $change_amount);
			}
		}
		if ($text=~/\b224\b/) {	#:: Mucktail Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(224, $change_amount);
			}
		}
		if ($text=~/\b225\b/) {	#:: Nadox Initiate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(225, $change_amount);
			}
		}
		if ($text=~/\b226\b/) {	#:: Nagafen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(226, $change_amount);
			}
		}
		if ($text=~/\b227\b/) {	#:: Najena
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(227, $change_amount);
			}
		}
		if ($text=~/\b228\b/) {	#:: Nathyn Illuminious
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(228, $change_amount);
			}
		}
		if ($text=~/\b229\b/) {	#:: Neriak Trolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(229, $change_amount);
			}
		}
		if ($text=~/\b230\b/) {	#:: New Alliance of Stone
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(230, $change_amount);
			}
		}
		if ($text=~/\b231\b/) {	#:: Nihil
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(231, $change_amount);
			}
		}
		if ($text=~/\b232\b/) {	#:: Oggok Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(232, $change_amount);
			}
		}
		if ($text=~/\b233\b/) {	#:: Oggok Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(233, $change_amount);
			}
		}
		if ($text=~/\b234\b/) {	#:: Ogre Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(234, $change_amount);
			}
		}
		if ($text=~/\b235\b/) {	#:: Opal Dark Briar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(235, $change_amount);
			}
		}
		if ($text=~/\b236\b/) {	#:: Oracle of Karnon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(236, $change_amount);
			}
		}
		if ($text=~/\b237\b/) {	#:: Oracle of Marud
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(237, $change_amount);
			}
		}
		if ($text=~/\b238\b/) {	#:: Orc
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(238, $change_amount);
			}
		}
		if ($text=~/\b239\b/) {	#:: Order of Autarkic Umbrage
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(239, $change_amount);
			}
		}
		if ($text=~/\b240\b/) {	#:: Order of Three
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(240, $change_amount);
			}
		}
		if ($text=~/\b241\b/) {	#:: Othmir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(241, $change_amount);
			}
		}
		if ($text=~/\b242\b/) {	#:: Outcasts and Mutants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(242, $change_amount);
			}
		}
		if ($text=~/\b243\b/) {	#:: Pack of Tomar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(243, $change_amount);
			}
		}
		if ($text=~/\b244\b/) {	#:: Paebala
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(244, $change_amount);
			}
		}
		if ($text=~/\b245\b/) {	#:: Paladins of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(245, $change_amount);
			}
		}
		if ($text=~/\b246\b/) {	#:: Paladins of Underfoot
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(246, $change_amount);
			}
		}
		if ($text=~/\b247\b/) {	#:: Peace Keepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(247, $change_amount);
			}
		}
		if ($text=~/\b248\b/) {	#:: Phinigel Autropos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(248, $change_amount);
			}
		}
		if ($text=~/\b249\b/) {	#:: Pickclaw Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(249, $change_amount);
			}
		}
		if ($text=~/\b250\b/) {	#:: Pirates of Gunthak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(250, $change_amount);
			}
		}
		if ($text=~/\b251\b/) {	#:: Pirates of Iceclad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(251, $change_amount);
			}
		}
		if ($text=~/\b252\b/) {	#:: Pirates of the Pine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(252, $change_amount);
			}
		}
		if ($text=~/\b253\b/) {	#:: Pixie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(253, $change_amount);
			}
		}
		if ($text=~/\b254\b/) {	#:: Pixtt
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(254, $change_amount);
			}
		}
		if ($text=~/\b255\b/) {	#:: Prexuz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(255, $change_amount);
			}
		}
		if ($text=~/\b256\b/) {	#:: Priests of Innoruuk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(256, $change_amount);
			}
		}
		if ($text=~/\b257\b/) {	#:: Priests of Life
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(257, $change_amount);
			}
		}
		if ($text=~/\b258\b/) {	#:: Priests of Marr
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(258, $change_amount);
			}
		}
		if ($text=~/\b259\b/) {	#:: Priests of Mischief
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(259, $change_amount);
			}
		}
		if ($text=~/\b260\b/) {	#:: Primordial Malice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(260, $change_amount);
			}
		}
		if ($text=~/\b261\b/) {	#:: Prisoners of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(261, $change_amount);
			}
		}
		if ($text=~/\b262\b/) {	#:: Progeny
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(262, $change_amount);
			}
		}
		if ($text=~/\b263\b/) {	#:: Protectors of Growth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(263, $change_amount);
			}
		}
		if ($text=~/\b264\b/) {	#:: Protectors of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(264, $change_amount);
			}
		}
		if ($text=~/\b265\b/) {	#:: Protectors of Pine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(265, $change_amount);
			}
		}
		if ($text=~/\b267\b/) {	#:: QRG Protected Animals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(267, $change_amount);
			}
		}
		if ($text=~/\b268\b/) {	#:: Queen Cristanos Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(268, $change_amount);
			}
		}
		if ($text=~/\b269\b/) {	#:: Rallos Zek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(269, $change_amount);
			}
		}
		if ($text=~/\b270\b/) {	#:: Rav
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(270, $change_amount);
			}
		}
		if ($text=~/\b271\b/) {	#:: Residents of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(271, $change_amount);
			}
		}
		if ($text=~/\b272\b/) {	#:: Residents of Karanas
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(272, $change_amount);
			}
		}
		if ($text=~/\b273\b/) {	#:: Ring of Scale
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(273, $change_amount);
			}
		}
		if ($text=~/\b274\b/) {	#:: Riptide Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(274, $change_amount);
			}
		}
		if ($text=~/\b275\b/) {	#:: Rogues of the White Rose
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(275, $change_amount);
			}
		}
		if ($text=~/\b276\b/) {	#:: Root of Innuruuk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(276, $change_amount);
			}
		}
		if ($text=~/\b277\b/) {	#:: Rujarkian Slavers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(277, $change_amount);
			}
		}
		if ($text=~/\b278\b/) {	#:: Rygorr Clan Snow Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(278, $change_amount);
			}
		}
		if ($text=~/\b279\b/) {	#:: Sabertooths of Blackburrow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(279, $change_amount);
			}
		}
		if ($text=~/\b280\b/) {	#:: Sandworkers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(280, $change_amount);
			}
		}
		if ($text=~/\b281\b/) {	#:: Sarnak Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(281, $change_amount);
			}
		}
		if ($text=~/\b282\b/) {	#:: Scaled Mystics
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(282, $change_amount);
			}
		}
		if ($text=~/\b283\b/) {	#:: Tunare's Scouts
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(283, $change_amount);
			}
		}
		if ($text=~/\b284\b/) {	#:: Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(284, $change_amount);
			}
		}
		if ($text=~/\b285\b/) {	#:: Servants of Aero
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(285, $change_amount);
			}
		}
		if ($text=~/\b286\b/) {	#:: Servants of Hydro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(286, $change_amount);
			}
		}
		if ($text=~/\b287\b/) {	#:: Servants of Inferno
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(287, $change_amount);
			}
		}
		if ($text=~/\b288\b/) {	#:: Servants of Saryrn
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(288, $change_amount);
			}
		}
		if ($text=~/\b289\b/) {	#:: Servants of Terra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(289, $change_amount);
			}
		}
		if ($text=~/\b290\b/) {	#:: Servants of Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(290, $change_amount);
			}
		}
		if ($text=~/\b291\b/) {	#:: Shadowed Men
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(291, $change_amount);
			}
		}
		if ($text=~/\b292\b/) {	#:: Shadowknights of Night Keep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(292, $change_amount);
			}
		}
		if ($text=~/\b293\b/) {	#:: Shak Dratha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(293, $change_amount);
			}
		}
		if ($text=~/\b294\b/) {	#:: Shamen of Justice
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(294, $change_amount);
			}
		}
		if ($text=~/\b295\b/) {	#:: Shamen of War
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(295, $change_amount);
			}
		}
		if ($text=~/\b296\b/) {	#:: Shei Vinitras
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(296, $change_amount);
			}
		}
		if ($text=~/\b297\b/) {	#:: Shik Nar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(297, $change_amount);
			}
		}
		if ($text=~/\b298\b/) {	#:: Shoulders of Seru
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(298, $change_amount);
			}
		}
		if ($text=~/\b299\b/) {	#:: Shralock Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(299, $change_amount);
			}
		}
		if ($text=~/\b300\b/) {	#:: Silent Fist Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(300, $change_amount);
			}
		}
		if ($text=~/\b301\b/) {	#:: Sirens of the Grotto
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(301, $change_amount);
			}
		}
		if ($text=~/\b302\b/) {	#:: Skytalons
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(302, $change_amount);
			}
		}
		if ($text=~/\b303\b/) {	#:: Snowfang Gnolls
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(303, $change_amount);
			}
		}
		if ($text=~/\b304\b/) {	#:: Soldiers of Tunare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(304, $change_amount);
			}
		}
		if ($text=~/\b305\b/) {	#:: Solusek Mining Co
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(305, $change_amount);
			}
		}
		if ($text=~/\b306\b/) {	#:: Song Weavers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(306, $change_amount);
			}
		}
		if ($text=~/\b307\b/) {	#:: Spirits of Katta Castellum
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(307, $change_amount);
			}
		}
		if ($text=~/\b308\b/) {	#:: Spirocs of Timorous
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(308, $change_amount);
			}
		}
		if ($text=~/\b309\b/) {	#:: Splitpaw Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(309, $change_amount);
			}
		}
		if ($text=~/\b310\b/) {	#:: Sporali
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(310, $change_amount);
			}
		}
		if ($text=~/\b311\b/) {	#:: Steel Warriors
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(311, $change_amount);
			}
		}
		if ($text=~/\b312\b/) {	#:: Steelslaves
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(312, $change_amount);
			}
		}
		if ($text=~/\b313\b/) {	#:: Stone Hive Bixies
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(313, $change_amount);
			}
		}
		if ($text=~/\b314\b/) {	#:: Storm Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(314, $change_amount);
			}
		}
		if ($text=~/\b315\b/) {	#:: Storm Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(315, $change_amount);
			}
		}
		if ($text=~/\b316\b/) {	#:: Storm Reapers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(316, $change_amount);
			}
		}
		if ($text=~/\b317\b/) {	#:: Swift Tails
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(317, $change_amount);
			}
		}
		if ($text=~/\b318\b/) {	#:: Syrik Iceblood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(318, $change_amount);
			}
		}
		if ($text=~/\b319\b/) {	#:: Taruun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(319, $change_amount);
			}
		}
		if ($text=~/\b320\b/) {	#:: Temple of Solusek Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(320, $change_amount);
			}
		}
		if ($text=~/\b321\b/) {	#:: The Cral Ligi Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(321, $change_amount);
			}
		}
		if ($text=~/\b322\b/) {	#:: The Dead
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(322, $change_amount);
			}
		}
		if ($text=~/\b323\b/) {	#:: The Forsaken
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(323, $change_amount);
			}
		}
		if ($text=~/\b324\b/) {	#:: The Grol Baku Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(324, $change_amount);
			}
		}
		if ($text=~/\b325\b/) {	#:: The HotWingz
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(325, $change_amount);
			}
		}
		if ($text=~/\b326\b/) {	#:: The Kromdek
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(326, $change_amount);
			}
		}
		if ($text=~/\b327\b/) {	#:: The Kromdul
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(327, $change_amount);
			}
		}
		if ($text=~/\b328\b/) {	#:: The Rainkeeper
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(328, $change_amount);
			}
		}
		if ($text=~/\b329\b/) {	#:: The Recuso
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(329, $change_amount);
			}
		}
		if ($text=~/\b330\b/) {	#:: The Sambata Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(330, $change_amount);
			}
		}
		if ($text=~/\b331\b/) {	#:: The Spurned
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(331, $change_amount);
			}
		}
		if ($text=~/\b332\b/) {	#:: The Tro Jeg Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(332, $change_amount);
			}
		}
		if ($text=~/\b333\b/) {	#:: The Truth
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(333, $change_amount);
			}
		}
		if ($text=~/\b334\b/) {	#:: The Vas Ren Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(334, $change_amount);
			}
		}
		if ($text=~/\b335\b/) {	#:: Thought Leeches
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(335, $change_amount);
			}
		}
		if ($text=~/\b336\b/) {	#:: Thrall of Kly
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(336, $change_amount);
			}
		}
		if ($text=~/\b337\b/) {	#:: TizmakClan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(337, $change_amount);
			}
		}
		if ($text=~/\b338\b/) {	#:: Traders of the Haven
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(338, $change_amount);
			}
		}
		if ($text=~/\b339\b/) {	#:: Trakanon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(339, $change_amount);
			}
		}
		if ($text=~/\b340\b/) {	#:: Treants of Jaggedpine
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(340, $change_amount);
			}
		}
		if ($text=~/\b341\b/) {	#:: Tribe Vrodak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(341, $change_amount);
			}
		}
		if ($text=~/\b342\b/) {	#:: True Spirit
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(342, $change_amount);
			}
		}
		if ($text=~/\b343\b/) {	#:: Tserrina Syl'Tor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(343, $change_amount);
			}
		}
		if ($text=~/\b344\b/) {	#:: Tunarean Court
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(344, $change_amount);
			}
		}
		if ($text=~/\b345\b/) {	#:: Ulthork
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(345, $change_amount);
			}
		}
		if ($text=~/\b346\b/) {	#:: Undead Frogloks of Guk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(346, $change_amount);
			}
		}
		if ($text=~/\b347\b/) {	#:: Unkempt Druids
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(347, $change_amount);
			}
		}
		if ($text=~/\b348\b/) {	#:: VahShir Crusaders
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(348, $change_amount);
			}
		}
		if ($text=~/\b349\b/) {	#:: Valdanov Zevfeer
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(349, $change_amount);
			}
		}
		if ($text=~/\b350\b/) {	#:: Validus Custodus
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(350, $change_amount);
			}
		}
		if ($text=~/\b351\b/) {	#:: Veeshan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(351, $change_amount);
			}
		}
		if ($text=~/\b352\b/) {	#:: Velketor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(352, $change_amount);
			}
		}
		if ($text=~/\b353\b/) {	#:: Venril Sathir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(353, $change_amount);
			}
		}
		if ($text=~/\b354\b/) {	#:: Vornol Transon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(354, $change_amount);
			}
		}
		if ($text=~/\b355\b/) {	#:: Vox
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(355, $change_amount);
			}
		}
		if ($text=~/\b356\b/) {	#:: Wayfarers Brotherhood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(356, $change_amount);
			}
		}
		if ($text=~/\b357\b/) {	#:: Werewolf
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(357, $change_amount);
			}
		}
		if ($text=~/\b358\b/) {	#:: Whisperling
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(358, $change_amount);
			}
		}
		if ($text=~/\b359\b/) {	#:: Whistling Fist Brotherhood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(359, $change_amount);
			}
		}
		if ($text=~/\b360\b/) {	#:: Wizards of Gukta
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(360, $change_amount);
			}
		}
		if ($text=~/\b361\b/) {	#:: Wolves of the North
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(361, $change_amount);
			}
		}
		if ($text=~/\b362\b/) {	#:: Yelinak
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(362, $change_amount);
			}
		}
		if ($text=~/\b363\b/) {	#:: Yunjo Slave Resistance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(363, $change_amount);
			}
		}
		if ($text=~/\b364\b/) {	#:: Zazamoukh
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(364, $change_amount);
			}
		}
		if ($text=~/\b365\b/) {	#:: Zlandicar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(365, $change_amount);
			}
		}
		if ($text=~/\b366\b/) {	#:: KOS
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(366, $change_amount);
			}
		}
		if ($text=~/\b367\b/) {	#:: KOS_animal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(367, $change_amount);
			}
		}
		if ($text=~/\b368\b/) {	#:: Cazic Thule
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(368, $change_amount);
			}
		}
		if ($text=~/\b369\b/) {	#:: Coalition of TradeFolk III
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(369, $change_amount);
			}
		}
		if ($text=~/\b370\b/) {	#:: Swamp Giants of Kunark
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(370, $change_amount);
			}
		}
		if ($text=~/\b371\b/) {	#:: Iksar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(371, $change_amount);
			}
		}
		if ($text=~/\b372\b/) {	#:: Murrissa Sandwhisper
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(372, $change_amount);
			}
		}
		if ($text=~/\b373\b/) {	#:: Harbingers Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(373, $change_amount);
			}
		}
		if ($text=~/\b374\b/) {	#:: Elementals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(374, $change_amount);
			}
		}
		if ($text=~/\b375\b/) {	#:: Mermaids
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(375, $change_amount);
			}
		}
		if ($text=~/\b376\b/) {	#:: Unrest Inhabitants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(376, $change_amount);
			}
		}
		if ($text=~/\b377\b/) {	#:: Class 41
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(377, $change_amount);
			}
		}
		if ($text=~/\b378\b/) {	#:: Neriak Ogre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(378, $change_amount);
			}
		}
		if ($text=~/\b379\b/) {	#:: King Aythox Thex
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(379, $change_amount);
			}
		}
		if ($text=~/\b380\b/) {	#:: Erudite Citizen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(380, $change_amount);
			}
		}
		if ($text=~/\b381\b/) {	#:: Undead Residents of Kithicor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(381, $change_amount);
			}
		}
		if ($text=~/\b382\b/) {	#:: Bertoxxulous
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(382, $change_amount);
			}
		}
		if ($text=~/\b383\b/) {	#:: Cleaving Tooth Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(383, $change_amount);
			}
		}
		if ($text=~/\b384\b/) {	#:: Mountain Death Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(384, $change_amount);
			}
		}
		if ($text=~/\b385\b/) {	#:: Zordakalicus Ragefire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(385, $change_amount);
			}
		}
		if ($text=~/\b386\b/) {	#:: Giant Spider
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(386, $change_amount);
			}
		}
		if ($text=~/\b388\b/) {	#:: Spire Spirits
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(388, $change_amount);
			}
		}
		if ($text=~/\b389\b/) {	#:: The Bloodtribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(389, $change_amount);
			}
		}
		if ($text=~/\b390\b/) {	#:: Tarmok Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(390, $change_amount);
			}
		}
		if ($text=~/\b391\b/) {	#:: Denizens of Mischief
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(391, $change_amount);
			}
		}
		if ($text=~/\b392\b/) {	#:: Grimlings of the Forest
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(392, $change_amount);
			}
		}
		if ($text=~/\b393\b/) {	#:: Witnesses of Hate
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(393, $change_amount);
			}
		}
		if ($text=~/\b394\b/) {	#:: Noobie Monsters KOS to Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(394, $change_amount);
			}
		}
		if ($text=~/\b395\b/) {	#:: Crystal Caverns Terrors/Spiders/Crawlers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(395, $change_amount);
			}
		}
		if ($text=~/\b396\b/) {	#:: Agents of Dreadspire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(396, $change_amount);
			}
		}
		if ($text=~/\b397\b/) {	#:: Ankhefenmut
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(397, $change_amount);
			}
		}
		if ($text=~/\b398\b/) {	#:: Children of Dranik
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(398, $change_amount);
			}
		}
		if ($text=~/\b399\b/) {	#:: Citizens of Froststone
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(399, $change_amount);
			}
		}
		if ($text=~/\b400\b/) {	#:: Creatures of Darkhollow
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(400, $change_amount);
			}
		}
		if ($text=~/\b401\b/) {	#:: Creatures of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(401, $change_amount);
			}
		}
		if ($text=~/\b402\b/) {	#:: Creep Reapers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(402, $change_amount);
			}
		}
		if ($text=~/\b403\b/) {	#:: Cursed Drakes
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(403, $change_amount);
			}
		}
		if ($text=~/\b404\b/) {	#:: Dark Reign
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(404, $change_amount);
			}
		}
		if ($text=~/\b405\b/) {	#:: Death Fist Orcs
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(405, $change_amount);
			}
		}
		if ($text=~/\b406\b/) {	#:: Deep Sporali
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(406, $change_amount);
			}
		}
		if ($text=~/\b407\b/) {	#:: Defenders of the Broodlands
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(407, $change_amount);
			}
		}
		if ($text=~/\b408\b/) {	#:: Deklean Korgad
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(408, $change_amount);
			}
		}
		if ($text=~/\b409\b/) {	#:: Denizens of Discord
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(409, $change_amount);
			}
		}
		if ($text=~/\b410\b/) {	#:: Dranik Loyalists
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(410, $change_amount);
			}
		}
		if ($text=~/\b411\b/) {	#:: Expedition 328
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(411, $change_amount);
			}
		}
		if ($text=~/\b412\b/) {	#:: Fallen Guard of Illsalin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(412, $change_amount);
			}
		}
		if ($text=~/\b414\b/) {	#:: Fizzlethorp
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(414, $change_amount);
			}
		}
		if ($text=~/\b415\b/) {	#:: Free Traders of Malgrinnor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(415, $change_amount);
			}
		}
		if ($text=~/\b416\b/) {	#:: Gladiators of Mata Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(416, $change_amount);
			}
		}
		if ($text=~/\b417\b/) {	#:: Greenfoot Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(417, $change_amount);
			}
		}
		if ($text=~/\b418\b/) {	#:: Inhabitants of Firiona Vie
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(418, $change_amount);
			}
		}
		if ($text=~/\b419\b/) {	#:: Kaladim Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(419, $change_amount);
			}
		}
		if ($text=~/\b420\b/) {	#:: Kedge
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(420, $change_amount);
			}
		}
		if ($text=~/\b421\b/) {	#:: Kerra
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(421, $change_amount);
			}
		}
		if ($text=~/\b422\b/) {	#:: Kessdona
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(422, $change_amount);
			}
		}
		if ($text=~/\b423\b/) {	#:: Khati Sha
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(423, $change_amount);
			}
		}
		if ($text=~/\b424\b/) {	#:: Kobolds of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(424, $change_amount);
			}
		}
		if ($text=~/\b425\b/) {	#:: Lanys T`Vyl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(425, $change_amount);
			}
		}
		if ($text=~/\b426\b/) {	#:: Mermaid
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(426, $change_amount);
			}
		}
		if ($text=~/\b427\b/) {	#:: Minions of Tirranun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(427, $change_amount);
			}
		}
		if ($text=~/\b428\b/) {	#:: Nest Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(428, $change_amount);
			}
		}
		if ($text=~/\b429\b/) {	#:: Norrath's Keepers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(429, $change_amount);
			}
		}
		if ($text=~/\b430\b/) {	#:: Ogguk Residents
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(430, $change_amount);
			}
		}
		if ($text=~/\b431\b/) {	#:: Ogre
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(431, $change_amount);
			}
		}
		if ($text=~/\b432\b/) {	#:: Overlord Mata Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(432, $change_amount);
			}
		}
		if ($text=~/\b433\b/) {	#:: Phingel Autropos
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(433, $change_amount);
			}
		}
		if ($text=~/\b434\b/) {	#:: Qeynos Citizens
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(434, $change_amount);
			}
		}
		if ($text=~/\b435\b/) {	#:: Riftseekers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(435, $change_amount);
			}
		}
		if ($text=~/\b436\b/) {	#:: Rikkukin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(436, $change_amount);
			}
		}
		if ($text=~/\b437\b/) {	#:: Scions of Dreadspire
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(437, $change_amount);
			}
		}
		if ($text=~/\b438\b/) {	#:: Scorchclaw Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(438, $change_amount);
			}
		}
		if ($text=~/\b439\b/) {	#:: Sky Talons
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(439, $change_amount);
			}
		}
		if ($text=~/\b440\b/) {	#:: Sporali Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(440, $change_amount);
			}
		}
		if ($text=~/\b441\b/) {	#:: Stillmoon Acolytes
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(441, $change_amount);
			}
		}
		if ($text=~/\b442\b/) {	#:: Temple Of Sol Ro
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(442, $change_amount);
			}
		}
		if ($text=~/\b443\b/) {	#:: The Dark Alliance
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(443, $change_amount);
			}
		}
		if ($text=~/\b444\b/) {	#:: The Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(444, $change_amount);
			}
		}
		if ($text=~/\b445\b/) {	#:: Thunder Guardians
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(445, $change_amount);
			}
		}
		if ($text=~/\b446\b/) {	#:: Tirranun
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(446, $change_amount);
			}
		}
		if ($text=~/\b447\b/) {	#:: Trusik Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(447, $change_amount);
			}
		}
		if ($text=~/\b448\b/) {	#:: Vishimtar
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(448, $change_amount);
			}
		}
		if ($text=~/\b449\b/) {	#:: Volkara
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(449, $change_amount);
			}
		}
		if ($text=~/\b450\b/) {	#:: Volkara's Brood
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(450, $change_amount);
			}
		}
		if ($text=~/\b451\b/) {	#:: Yar`lir
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(451, $change_amount);
			}
		}
		if ($text=~/\b452\b/) {	#:: Orphans
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(452, $change_amount);
			}
		}
		if ($text=~/\b453\b/) {	#:: Sustainers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(453, $change_amount);
			}
		}
		if ($text=~/\b454\b/) {	#:: Loyals
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(454, $change_amount);
			}
		}
		if ($text=~/\b455\b/) {	#:: Planar Collective
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(455, $change_amount);
			}
		}
		if ($text=~/\b456\b/) {	#:: Verish Mal
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(456, $change_amount);
			}
		}
		if ($text=~/\b457\b/) {	#:: Beetle
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(457, $change_amount);
			}
		}
		if ($text=~/\b458\b/) {	#:: Gunthaks Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(458, $change_amount);
			}
		}
		if ($text=~/\b459\b/) {	#:: Dulaks Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(459, $change_amount);
			}
		}
		if ($text=~/\b460\b/) {	#:: Needlite
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(460, $change_amount);
			}
		}
		if ($text=~/\b461\b/) {	#:: Underbulks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(461, $change_amount);
			}
		}
		if ($text=~/\b462\b/) {	#:: Wisps
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(462, $change_amount);
			}
		}
		if ($text=~/\b463\b/) {	#:: Indifferent
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(463, $change_amount);
			}
		}
		if ($text=~/\b464\b/) {	#:: Inhabitants of Air
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(464, $change_amount);
			}
		}
		if ($text=~/\b465\b/) {	#:: KOS Inhabitants of Air
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(465, $change_amount);
			}
		}
		if ($text=~/\b466\b/) {	#:: KOS Plane of Disease
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(466, $change_amount);
			}
		}
		if ($text=~/\b467\b/) {	#:: KOS Plane of Nightmare
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(467, $change_amount);
			}
		}
		if ($text=~/\b468\b/) {	#:: KOS Plane of Innovation
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(468, $change_amount);
			}
		}
		if ($text=~/\b469\b/) {	#:: KOS Plane of Time
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(469, $change_amount);
			}
		}
		if ($text=~/\b470\b/) {	#:: WehateThelin
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(470, $change_amount);
			}
		}
		if ($text=~/\b471\b/) {	#:: HoHMaiden
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(471, $change_amount);
			}
		}
		if ($text=~/\b472\b/) {	#:: Nadox Clan
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(472, $change_amount);
			}
		}
		if ($text=~/\b473\b/) {	#:: Warlord Ngrub
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(473, $change_amount);
			}
		}
		if ($text=~/\b474\b/) {	#:: Nitram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(474, $change_amount);
			}
		}
		if ($text=~/\b475\b/) {	#:: Guards of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(475, $change_amount);
			}
		}
		if ($text=~/\b476\b/) {	#:: Residents of Gloomingdeep
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(476, $change_amount);
			}
		}
		if ($text=~/\b480\b/) {	#:: Madmen
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(480, $change_amount);
			}
		}
		if ($text=~/\b481\b/) {	#:: Ancient Cyclops
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(481, $change_amount);
			}
		}
		if ($text=~/\b482\b/) {	#:: VillagerRoom
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(482, $change_amount);
			}
		}
		if ($text=~/\b483\b/) {	#:: Citizens of Sharvahl
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(483, $change_amount);
			}
		}
		if ($text=~/\b484\b/) {	#:: Guktan Suppliers
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(484, $change_amount);
			}
		}
		if ($text=~/\b485\b/) {	#:: OmensBatRat
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(485, $change_amount);
			}
		}
		if ($text=~/\b486\b/) {	#:: Neriak Merchants
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(486, $change_amount);
			}
		}
		if ($text=~/\b487\b/) {	#:: OmensMurks
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(487, $change_amount);
			}
		}
		if ($text=~/\b488\b/) {	#:: Planes_Neutral
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(488, $change_amount);
			}
		}
		if ($text=~/\b489\b/) {	#:: KOS Plane of Storms
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(489, $change_amount);
			}
		}
		if ($text=~/\b490\b/) {	#:: Paludal_Mushrooms
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(490, $change_amount);
			}
		}
		if ($text=~/\b491\b/) {	#:: Paludal_Underbulk
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(491, $change_amount);
			}
		}
		if ($text=~/\b492\b/) {	#:: The_Angry_Sambata
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(492, $change_amount);
			}
		}
		if ($text=~/\b493\b/) {	#:: Crescent Guards
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(493, $change_amount);
			}
		}
		if ($text=~/\b494\b/) {	#:: Army of Light
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(494, $change_amount);
			}
		}
		if ($text=~/\b496\b/) {	#:: Silla Herald
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(496, $change_amount);
			}
		}
		if ($text=~/\b497\b/) {	#:: Ak'Anon Strike Force V
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(497, $change_amount);
			}
		}
		if ($text=~/\b498\b/) {	#:: Ancestors of Valdeholm
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(498, $change_amount);
			}
		}
		if ($text=~/\b499\b/) {	#:: Ancestors of the Crypt
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(499, $change_amount);
			}
		}
		if ($text=~/\b500\b/) {	#:: Spider
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(500, $change_amount);
			}
		}
		if ($text=~/\b501\b/) {	#:: Koka'Vor Tribe
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(501, $change_amount);
			}
		}
		if ($text=~/\b502\b/) {	#:: Zun'Muram
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(502, $change_amount);
			}
		}
		if ($text=~/\b503\b/) {	#:: Invaders of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(503, $change_amount);
			}
		}
		if ($text=~/\b504\b/) {	#:: Wolves of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(504, $change_amount);
			}
		}
		if ($text=~/\b505\b/) {	#:: Owlbears of the Moor
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(505, $change_amount);
			}
		}
		if ($text=~/\b506\b/) {	#:: Human
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(506, $change_amount);
			}
		}
		if ($text=~/\b507\b/) {	#:: Donovon
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(507, $change_amount);
			}
		}
		if ($text=~/\b508\b/) {	#:: Servants of the First Witness
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(508, $change_amount);
			}
		}
		if ($text=~/\b509\b/) {	#:: Asylum of Anguish
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(509, $change_amount);
			}
		}
		if ($text=~/\b510\b/) {	#:: dubious
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(510, $change_amount);
			}
		}
		if ($text=~/\b511\b/) {	#:: dubious-storms
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(511, $change_amount);
			}
		}
		if ($text=~/\b512\b/) {	#:: Fishlord_KoS
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(512, $change_amount);
			}
		}
		if ($text=~/\b513\b/) {	#:: Scout_Guke
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(513, $change_amount);
			}
		}
		if ($text=~/\b514\b/) {	#:: Dark_Reign_Guard
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(514, $change_amount);
			}
		}
		if ($text=~/\b515\b/) {	#:: Dirtdigger Goblins
			if ($client->GetGM()) {
				quest::say("Turn off your GM flag for faction changes to occur.");
			}
			else {
				quest::faction(515, $change_amount);
			}
		}
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
}

sub Train {
	$client->Message( 15, "Your experiences across the realm have infused you with increased power and knowledge..." );
	# set all available skills to maximum for race/class at current level
	foreach my $skill ( 0 .. 74 ) {
		next unless $client->CanHaveSkill($skill);
		my $maxSkill = $client->MaxSkill( $skill, $client->GetClass(), $ulevel );
		next unless $maxSkill > $client->GetRawSkill($skill);
		$client->SetSkill( $skill, $maxSkill );
	}
	# scribe all spells for current level
	quest::scribespells( $ulevel);
}
