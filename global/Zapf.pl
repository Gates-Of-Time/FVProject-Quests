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
	if ($text=~/train/i) {
		Train();
	}
	if ($text=~/faction/i) {
		quest::say("I can adjust your faction.  Hand me 1 copper to lose 500, 1 silver to lose 100, 1 gold to gain 100, and 1 platinum to gain 500--then speak the faction number.");
	}
	if ($text=~/1/i) {	#:: Agents of Mistmoore
		quest::faction(1, $change_amount);
	}
	if ($text=~/2/i) {	#:: Agnarr
		quest::faction(2, $change_amount);
	}
	if ($text=~/3/i) {	#:: Akheva
		quest::faction(3, $change_amount);
	}
	if ($text=~/4/i) {	#:: Allize Taeew
		quest::faction(4, $change_amount);
	}
	if ($text=~/5/i) {	#:: Allize Volew
		quest::faction(5, $change_amount);
	}
	if ($text=~/6/i) {	#:: Anchorites of Brell Serilis
		quest::faction(6, $change_amount);
	}
	if ($text=~/8/i) {	#:: Anti-mage
		quest::faction(8, $change_amount);
	}
	if ($text=~/9/i) {	#:: Antonius Bayle
		quest::faction(9, $change_amount);
	}
	if ($text=~/10/i) {	#:: Arboreans of Faydark
		quest::faction(10, $change_amount);
	}
	if ($text=~/11/i) {	#:: Arcane Scientists
		quest::faction(11, $change_amount);
	}
	if ($text=~/12/i) {	#:: Ashen Order
		quest::faction(12, $change_amount);
	}
	if ($text=~/13/i) {	#:: Askr the Lost
		quest::faction(13, $change_amount);
	}
	if ($text=~/14/i) {	#:: Aviak
		quest::faction(14, $change_amount);
	}
	if ($text=~/15/i) {	#:: Banker
		quest::faction(15, $change_amount);
	}
	if ($text=~/16/i) {	#:: Battalion of Marr
		quest::faction(16, $change_amount);
	}
	if ($text=~/17/i) {	#:: Befallen Inhabitants
		quest::faction(17, $change_amount);
	}
	if ($text=~/18/i) {	#:: Beta Neutral
		quest::faction(18, $change_amount);
	}
	if ($text=~/19/i) {	#:: Betrayers of Di`Zok
		quest::faction(19, $change_amount);
	}
	if ($text=~/20/i) {	#:: Bloodgills
		quest::faction(20, $change_amount);
	}
	if ($text=~/21/i) {	#:: Bloodsabers
		quest::faction(21, $change_amount);
	}
	if ($text=~/22/i) {	#:: Broken Skull Clan
		quest::faction(22, $change_amount);
	}
	if ($text=~/23/i) {	#:: Brood of Di`Zok
		quest::faction(23, $change_amount);
	}
	if ($text=~/24/i) {	#:: Brood of Kotiz
		quest::faction(24, $change_amount);
	}
	if ($text=~/25/i) {	#:: Brood of Ssraeshza
		quest::faction(25, $change_amount);
	}
	if ($text=~/26/i) {	#:: Brownie
		quest::faction(26, $change_amount);
	}
	if ($text=~/27/i) {	#:: Burning Dead
		quest::faction(27, $change_amount);
	}
	if ($text=~/28/i) {	#:: Burynai Legion
		quest::faction(28, $change_amount);
	}
	if ($text=~/29/i) {	#:: Butcherblock Bandits
		quest::faction(29, $change_amount);
	}
	if ($text=~/30/i) {	#:: Cabilis Residents
		quest::faction(30, $change_amount);
	}
	if ($text=~/31/i) {	#:: Carson McCabe
		quest::faction(31, $change_amount);
	}
	if ($text=~/32/i) {	#:: Chetari
		quest::faction(32, $change_amount);
	}
	if ($text=~/33/i) {	#:: Circle of Unseen Hands
		quest::faction(33, $change_amount);
	}
	if ($text=~/35/i) {	#:: Citizens of Gukta
		quest::faction(35, $change_amount);
	}
	if ($text=~/36/i) {	#:: Citizens of Qeynos
		quest::faction(36, $change_amount);
	}
	if ($text=~/37/i) {	#:: Citizens of Seru
		quest::faction(37, $change_amount);
	}
	if ($text=~/38/i) {	#:: Citizens of Takish-Hiz
		quest::faction(38, $change_amount);
	}
	if ($text=~/39/i) {	#:: Clan Grikbar
		quest::faction(39, $change_amount);
	}
	if ($text=~/40/i) {	#:: Clan Kolbok
		quest::faction(40, $change_amount);
	}
	if ($text=~/41/i) {	#:: Clan RunnyEye
		quest::faction(41, $change_amount);
	}
	if ($text=~/42/i) {	#:: Claws of Veeshan
		quest::faction(42, $change_amount);
	}
	if ($text=~/43/i) {	#:: Clerics of Tunare
		quest::faction(43, $change_amount);
	}
	if ($text=~/44/i) {	#:: Clerics of Underfoot
		quest::faction(44, $change_amount);
	}
	if ($text=~/45/i) {	#:: Clockwork Gnome
		quest::faction(45, $change_amount);
	}
	if ($text=~/46/i) {	#:: Clurg
		quest::faction(46, $change_amount);
	}
	if ($text=~/47/i) {	#:: Coalition of Trade Folk
		quest::faction(47, $change_amount);
	}
	if ($text=~/48/i) {	#:: Coalition of Tradefolk Underground
		quest::faction(48, $change_amount);
	}
	if ($text=~/49/i) {	#:: Coldain
		quest::faction(49, $change_amount);
	}
	if ($text=~/50/i) {	#:: Combine Empire
		quest::faction(50, $change_amount);
	}
	if ($text=~/51/i) {	#:: Commons Residents
		quest::faction(51, $change_amount);
	}
	if ($text=~/52/i) {	#:: Concillium Universus
		quest::faction(52, $change_amount);
	}
	if ($text=~/53/i) {	#:: Corrupt Qeynos Guards
		quest::faction(53, $change_amount);
	}
	if ($text=~/54/i) {	#:: Coterie Elite
		quest::faction(54, $change_amount);
	}
	if ($text=~/55/i) {	#:: Coterie of the Eternal Night
		quest::faction(55, $change_amount);
	}
	if ($text=~/56/i) {	#:: Craftkeepers
		quest::faction(56, $change_amount);
	}
	if ($text=~/57/i) {	#:: Craknek Warriors
		quest::faction(57, $change_amount);
	}
	if ($text=~/58/i) {	#:: Creatures of Justice
		quest::faction(58, $change_amount);
	}
	if ($text=~/59/i) {	#:: Creatures of Taelosia
		quest::faction(59, $change_amount);
	}
	if ($text=~/60/i) {	#:: Crimson Hands
		quest::faction(60, $change_amount);
	}
	if ($text=~/61/i) {	#:: Critters of Jaggedpine
		quest::faction(61, $change_amount);
	}
	if ($text=~/62/i) {	#:: Crusaders of Greenmist
		quest::faction(62, $change_amount);
	}
	if ($text=~/63/i) {	#:: Crushbone Orcs
		quest::faction(63, $change_amount);
	}
	if ($text=~/64/i) {	#:: Cult of the Arisen
		quest::faction(64, $change_amount);
	}
	if ($text=~/65/i) {	#:: Cult of the Great Saprophyte
		quest::faction(65, $change_amount);
	}
	if ($text=~/66/i) {	#:: Da Bashers
		quest::faction(66, $change_amount);
	}
	if ($text=~/67/i) {	#:: Dain Frostreaver IV
		quest::faction(67, $change_amount);
	}
	if ($text=~/68/i) {	#:: Dar Khura
		quest::faction(68, $change_amount);
	}
	if ($text=~/69/i) {	#:: Dark Bargainers
		quest::faction(69, $change_amount);
	}
	if ($text=~/70/i) {	#:: Dark Ones
		quest::faction(70, $change_amount);
	}
	if ($text=~/71/i) {	#:: Dark Reflection
		quest::faction(71, $change_amount);
	}
	if ($text=~/72/i) {	#:: Dark Sendings
		quest::faction(72, $change_amount);
	}
	if ($text=~/73/i) {	#:: Darkpaws of Jaggedpine
		quest::faction(73, $change_amount);
	}
	if ($text=~/74/i) {	#:: Dawnhoppers
		quest::faction(74, $change_amount);
	}
	if ($text=~/75/i) {	#:: Deathfist Orcs
		quest::faction(75, $change_amount);
	}
	if ($text=~/76/i) {	#:: Deep Muses
		quest::faction(76, $change_amount);
	}
	if ($text=~/77/i) {	#:: Deeppockets
		quest::faction(77, $change_amount);
	}
	if ($text=~/78/i) {	#:: Deepshade Collective
		quest::faction(78, $change_amount);
	}
	if ($text=~/79/i) {	#:: Deepwater Knights
		quest::faction(79, $change_amount);
	}
	if ($text=~/80/i) {	#:: Defective Clockwork
		quest::faction(80, $change_amount);
	}
	if ($text=~/81/i) {	#:: Defenders of the Haven
		quest::faction(81, $change_amount);
	}
	if ($text=~/82/i) {	#:: Denizens of Fear
		quest::faction(82, $change_amount);
	}
	if ($text=~/83/i) {	#:: Dervish Cutthroats
		quest::faction(83, $change_amount);
	}
	if ($text=~/84/i) {	#:: Disciples of Kerafyrm
		quest::faction(84, $change_amount);
	}
	if ($text=~/85/i) {	#:: Disciples of Rhag`Zadune
		quest::faction(85, $change_amount);
	}
	if ($text=~/86/i) {	#:: Dismal Rage
		quest::faction(86, $change_amount);
	}
	if ($text=~/87/i) {	#:: Dreadguard Inner
		quest::faction(87, $change_amount);
	}
	if ($text=~/88/i) {	#:: Dreadguard Outer
		quest::faction(88, $change_amount);
	}
	if ($text=~/89/i) {	#:: Drusella Sathir
		quest::faction(89, $change_amount);
	}
	if ($text=~/90/i) {	#:: Ebon Mask
		quest::faction(90, $change_amount);
	}
	if ($text=~/91/i) {	#:: Eldritch Collective
		quest::faction(91, $change_amount);
	}
	if ($text=~/92/i) {	#:: Emerald Warriors
		quest::faction(92, $change_amount);
	}
	if ($text=~/93/i) {	#:: Emperor Ssraeshza
		quest::faction(93, $change_amount);
	}
	if ($text=~/94/i) {	#:: Evil Eye
		quest::faction(94, $change_amount);
	}
	if ($text=~/95/i) {	#:: Exiled Frogloks
		quest::faction(95, $change_amount);
	}
	if ($text=~/96/i) {	#:: Eye of Seru
		quest::faction(96, $change_amount);
	}
	if ($text=~/97/i) {	#:: Faerie
		quest::faction(97, $change_amount);
	}
	if ($text=~/98/i) {	#:: Fallen of Bloody Kithicor
		quest::faction(98, $change_amount);
	}
	if ($text=~/99/i) {	#:: Faydark's Champions
		quest::faction(99, $change_amount);
	}
	if ($text=~/100/i) {	#:: FelGuard
		quest::faction(100, $change_amount);
	}
	if ($text=~/101/i) {	#:: Firiona Vie
		quest::faction(101, $change_amount);
	}
	if ($text=~/102/i) {	#:: Fizzlethorpe
		quest::faction(102, $change_amount);
	}
	if ($text=~/103/i) {	#:: Followers of Korucust
		quest::faction(103, $change_amount);
	}
	if ($text=~/104/i) {	#:: Forgotten Guktan Spirits
		quest::faction(104, $change_amount);
	}
	if ($text=~/105/i) {	#:: Freeport Militia
		quest::faction(105, $change_amount);
	}
	if ($text=~/106/i) {	#:: Frogloks of Guk
		quest::faction(106, $change_amount);
	}
	if ($text=~/107/i) {	#:: Frogloks of Krup
		quest::faction(107, $change_amount);
	}
	if ($text=~/108/i) {	#:: Frogloks of Kunark
		quest::faction(108, $change_amount);
	}
	if ($text=~/109/i) {	#:: Frogloks of Sebilis
		quest::faction(109, $change_amount);
	}
	if ($text=~/110/i) {	#:: Frostfoot Goblins
		quest::faction(110, $change_amount);
	}
	if ($text=~/111/i) {	#:: Fungus Man
		quest::faction(111, $change_amount);
	}
	if ($text=~/112/i) {	#:: Gate Callers
		quest::faction(112, $change_amount);
	}
	if ($text=~/113/i) {	#:: Gate Keepers
		quest::faction(113, $change_amount);
	}
	if ($text=~/114/i) {	#:: Gelistial
		quest::faction(114, $change_amount);
	}
	if ($text=~/115/i) {	#:: Gem Choppers
		quest::faction(115, $change_amount);
	}
	if ($text=~/116/i) {	#:: Geonid Collective
		quest::faction(116, $change_amount);
	}
	if ($text=~/117/i) {	#:: Ghouls of Neriak
		quest::faction(117, $change_amount);
	}
	if ($text=~/118/i) {	#:: Goblin
		quest::faction(118, $change_amount);
	}
	if ($text=~/119/i) {	#:: Goblins of Cleaving Tooth
		quest::faction(119, $change_amount);
	}
	if ($text=~/120/i) {	#:: Goblins of Fire Peak
		quest::faction(120, $change_amount);
	}
	if ($text=~/121/i) {	#:: Goblins of Mountain Death
		quest::faction(121, $change_amount);
	}
	if ($text=~/122/i) {	#:: Gor Taku
		quest::faction(122, $change_amount);
	}
	if ($text=~/123/i) {	#:: Gralloks
		quest::faction(123, $change_amount);
	}
	if ($text=~/124/i) {	#:: Greater Brann Giants
		quest::faction(124, $change_amount);
	}
	if ($text=~/125/i) {	#:: Greater Jord Giants
		quest::faction(125, $change_amount);
	}
	if ($text=~/126/i) {	#:: Greater Vann Giants
		quest::faction(126, $change_amount);
	}
	if ($text=~/127/i) {	#:: Greater Vind Giants
		quest::faction(127, $change_amount);
	}
	if ($text=~/128/i) {	#:: Green Blood Knights
		quest::faction(128, $change_amount);
	}
	if ($text=~/129/i) {	#:: Grieg
		quest::faction(129, $change_amount);
	}
	if ($text=~/130/i) {	#:: Grimlings of the Moor
		quest::faction(130, $change_amount);
	}
	if ($text=~/131/i) {	#:: Grobb Merchants
		quest::faction(131, $change_amount);
	}
	if ($text=~/132/i) {	#:: Guardians of Shar Vahl
		quest::faction(132, $change_amount);
	}
	if ($text=~/133/i) {	#:: Guardians of the Vale
		quest::faction(133, $change_amount);
	}
	if ($text=~/134/i) {	#:: Guardians of Veeshan
		quest::faction(134, $change_amount);
	}
	if ($text=~/135/i) {	#:: Guards of Qeynos
		quest::faction(135, $change_amount);
	}
	if ($text=~/136/i) {	#:: Guktan Elders
		quest::faction(136, $change_amount);
	}
	if ($text=~/137/i) {	#:: Hall of the Ebon Mask
		quest::faction(137, $change_amount);
	}
	if ($text=~/138/i) {	#:: Hand Legionnaries
		quest::faction(138, $change_amount);
	}
	if ($text=~/139/i) {	#:: Hand of Seru
		quest::faction(139, $change_amount);
	}
	if ($text=~/140/i) {	#:: Haven Defenders
		quest::faction(140, $change_amount);
	}
	if ($text=~/141/i) {	#:: Haven Smugglers
		quest::faction(141, $change_amount);
	}
	if ($text=~/142/i) {	#:: Heart of Seru
		quest::faction(142, $change_amount);
	}
	if ($text=~/143/i) {	#:: Heretics
		quest::faction(143, $change_amount);
	}
	if ($text=~/144/i) {	#:: Hexxt
		quest::faction(144, $change_amount);
	}
	if ($text=~/145/i) {	#:: High Council of Erudin
		quest::faction(145, $change_amount);
	}
	if ($text=~/146/i) {	#:: High Council of Gukta
		quest::faction(146, $change_amount);
	}
	if ($text=~/147/i) {	#:: High Guard of Erudin
		quest::faction(147, $change_amount);
	}
	if ($text=~/148/i) {	#:: HighHold Citizens
		quest::faction(148, $change_amount);
	}
	if ($text=~/149/i) {	#:: Highpass Guards
		quest::faction(149, $change_amount);
	}
	if ($text=~/150/i) {	#:: Holgresh
		quest::faction(150, $change_amount);
	}
	if ($text=~/151/i) {	#:: Horde of Xalgoz
		quest::faction(151, $change_amount);
	}
	if ($text=~/152/i) {	#:: House of Fordel
		quest::faction(152, $change_amount);
	}
	if ($text=~/153/i) {	#:: House of Midst
		quest::faction(153, $change_amount);
	}
	if ($text=~/154/i) {	#:: House of Stout
		quest::faction(154, $change_amount);
	}
	if ($text=~/155/i) {	#:: Indigo Brotherhood
		quest::faction(155, $change_amount);
	}
	if ($text=~/156/i) {	#:: Inhabitants of Hate
		quest::faction(156, $change_amount);
	}
	if ($text=~/157/i) {	#:: Inhabitants of Tanaan
		quest::faction(157, $change_amount);
	}
	if ($text=~/158/i) {	#:: Innoruuk's Curse of the Cauldron
		quest::faction(158, $change_amount);
	}
	if ($text=~/159/i) {	#:: Jaggedpine Treefolk
		quest::faction(159, $change_amount);
	}
	if ($text=~/160/i) {	#:: Jaled-Dar
		quest::faction(160, $change_amount);
	}
	if ($text=~/161/i) {	#:: Johanius Barleou
		quest::faction(161, $change_amount);
	}
	if ($text=~/162/i) {	#:: Kaladim Citizens
		quest::faction(162, $change_amount);
	}
	if ($text=~/164/i) {	#:: Kane Bayle
		quest::faction(164, $change_amount);
	}
	if ($text=~/165/i) {	#:: Karana
		quest::faction(165, $change_amount);
	}
	if ($text=~/166/i) {	#:: Karana Bandits
		quest::faction(166, $change_amount);
	}
	if ($text=~/167/i) {	#:: Karana Residents
		quest::faction(167, $change_amount);
	}
	if ($text=~/168/i) {	#:: Katta Castellum Citizens
		quest::faction(168, $change_amount);
	}
	if ($text=~/169/i) {	#:: Kazon Stormhammer
		quest::faction(169, $change_amount);
	}
	if ($text=~/170/i) {	#:: Keepers of the Art
		quest::faction(170, $change_amount);
	}
	if ($text=~/171/i) {	#:: Keepers of the Claw
		quest::faction(171, $change_amount);
	}
	if ($text=~/172/i) {	#:: Kejek Village
		quest::faction(172, $change_amount);
	}
	if ($text=~/173/i) {	#:: Kejekan
		quest::faction(173, $change_amount);
	}
	if ($text=~/174/i) {	#:: Kelethin Merchants
		quest::faction(174, $change_amount);
	}
	if ($text=~/175/i) {	#:: Kerra Isle
		quest::faction(175, $change_amount);
	}
	if ($text=~/176/i) {	#:: King Ak'Anon
		quest::faction(176, $change_amount);
	}
	if ($text=~/177/i) {	#:: King Naythox Thex
		quest::faction(177, $change_amount);
	}
	if ($text=~/178/i) {	#:: King Tearis Thex
		quest::faction(178, $change_amount);
	}
	if ($text=~/179/i) {	#:: King Tormax
		quest::faction(179, $change_amount);
	}
	if ($text=~/180/i) {	#:: King Xorbb
		quest::faction(180, $change_amount);
	}
	if ($text=~/181/i) {	#:: Kingdom of Above and Below
		quest::faction(181, $change_amount);
	}
	if ($text=~/182/i) {	#:: Kithicor Residents
		quest::faction(182, $change_amount);
	}
	if ($text=~/183/i) {	#:: Knights of Thunder
		quest::faction(183, $change_amount);
	}
	if ($text=~/184/i) {	#:: Knights of Truth
		quest::faction(184, $change_amount);
	}
	if ($text=~/185/i) {	#:: Kobold
		quest::faction(185, $change_amount);
	}
	if ($text=~/186/i) {	#:: Kobolds of Fire Pit
		quest::faction(186, $change_amount);
	}
	if ($text=~/187/i) {	#:: Krag
		quest::faction(187, $change_amount);
	}
	if ($text=~/188/i) {	#:: Kromrif
		quest::faction(188, $change_amount);
	}
	if ($text=~/189/i) {	#:: Kromzek
		quest::faction(189, $change_amount);
	}
	if ($text=~/190/i) {	#:: Kunark Fire Giants
		quest::faction(190, $change_amount);
	}
	if ($text=~/191/i) {	#:: Lake Recondite Bandits
		quest::faction(191, $change_amount);
	}
	if ($text=~/192/i) {	#:: League of Antonican Bards
		quest::faction(192, $change_amount);
	}
	if ($text=~/193/i) {	#:: Legion of Cabilis
		quest::faction(193, $change_amount);
	}
	if ($text=~/194/i) {	#:: Legion of Mata Muram
		quest::faction(194, $change_amount);
	}
	if ($text=~/195/i) {	#:: Lesser Brann Giants
		quest::faction(195, $change_amount);
	}
	if ($text=~/196/i) {	#:: Lesser Jord Giants
		quest::faction(196, $change_amount);
	}
	if ($text=~/197/i) {	#:: Lesser Vann Giants
		quest::faction(197, $change_amount);
	}
	if ($text=~/198/i) {	#:: Lesser Vind Giants
		quest::faction(198, $change_amount);
	}
	if ($text=~/199/i) {	#:: Lithiniath
		quest::faction(199, $change_amount);
	}
	if ($text=~/200/i) {	#:: Lizard Man
		quest::faction(200, $change_amount);
	}
	if ($text=~/201/i) {	#:: Lodikai
		quest::faction(201, $change_amount);
	}
	if ($text=~/202/i) {	#:: Lorekeepers of Gukta
		quest::faction(202, $change_amount);
	}
	if ($text=~/203/i) {	#:: Lost Kingdom of Lok
		quest::faction(203, $change_amount);
	}
	if ($text=~/204/i) {	#:: Lost Minions of Miragul
		quest::faction(204, $change_amount);
	}
	if ($text=~/205/i) {	#:: Luclin
		quest::faction(205, $change_amount);
	}
	if ($text=~/206/i) {	#:: Magus Conlegium
		quest::faction(206, $change_amount);
	}
	if ($text=~/207/i) {	#:: Mayong Mistmoore
		quest::faction(207, $change_amount);
	}
	if ($text=~/208/i) {	#:: Mayor Gubbin
		quest::faction(208, $change_amount);
	}
	if ($text=~/209/i) {	#:: Meldrath
		quest::faction(209, $change_amount);
	}
	if ($text=~/210/i) {	#:: Merchants of Ak'Anon
		quest::faction(210, $change_amount);
	}
	if ($text=~/211/i) {	#:: Merchants of Erudin
		quest::faction(211, $change_amount);
	}
	if ($text=~/212/i) {	#:: Merchants of Felwithe
		quest::faction(212, $change_amount);
	}
	if ($text=~/213/i) {	#:: Merchants of Halas
		quest::faction(213, $change_amount);
	}
	if ($text=~/214/i) {	#:: Merchants of Highpass
		quest::faction(214, $change_amount);
	}
	if ($text=~/215/i) {	#:: Merchants of Kaladim
		quest::faction(215, $change_amount);
	}
	if ($text=~/216/i) {	#:: Merchants of Ogguk
		quest::faction(216, $change_amount);
	}
	if ($text=~/217/i) {	#:: Merchants of Qeynos
		quest::faction(217, $change_amount);
	}
	if ($text=~/218/i) {	#:: Merchants of Rivervale
		quest::faction(218, $change_amount);
	}
	if ($text=~/219/i) {	#:: Miners Guild 249
		quest::faction(219, $change_amount);
	}
	if ($text=~/220/i) {	#:: Miners Guild 628
		quest::faction(220, $change_amount);
	}
	if ($text=~/221/i) {	#:: Minions of Scale
		quest::faction(221, $change_amount);
	}
	if ($text=~/222/i) {	#:: Minions of the Sunlord
		quest::faction(222, $change_amount);
	}
	if ($text=~/223/i) {	#:: Minions of Underfoot
		quest::faction(223, $change_amount);
	}
	if ($text=~/224/i) {	#:: Mucktail Gnolls
		quest::faction(224, $change_amount);
	}
	if ($text=~/225/i) {	#:: Nadox Initiate
		quest::faction(225, $change_amount);
	}
	if ($text=~/226/i) {	#:: Nagafen
		quest::faction(226, $change_amount);
	}
	if ($text=~/227/i) {	#:: Najena
		quest::faction(227, $change_amount);
	}
	if ($text=~/228/i) {	#:: Nathyn Illuminious
		quest::faction(228, $change_amount);
	}
	if ($text=~/229/i) {	#:: Neriak Trolls
		quest::faction(229, $change_amount);
	}
	if ($text=~/230/i) {	#:: New Alliance of Stone
		quest::faction(230, $change_amount);
	}
	if ($text=~/231/i) {	#:: Nihil
		quest::faction(231, $change_amount);
	}
	if ($text=~/232/i) {	#:: Oggok Guards
		quest::faction(232, $change_amount);
	}
	if ($text=~/233/i) {	#:: Oggok Citizens
		quest::faction(233, $change_amount);
	}
	if ($text=~/234/i) {	#:: Ogre Warriors
		quest::faction(234, $change_amount);
	}
	if ($text=~/235/i) {	#:: Opal Dark Briar
		quest::faction(235, $change_amount);
	}
	if ($text=~/236/i) {	#:: Oracle of Karnon
		quest::faction(236, $change_amount);
	}
	if ($text=~/237/i) {	#:: Oracle of Marud
		quest::faction(237, $change_amount);
	}
	if ($text=~/238/i) {	#:: Orc
		quest::faction(238, $change_amount);
	}
	if ($text=~/239/i) {	#:: Order of Autarkic Umbrage
		quest::faction(239, $change_amount);
	}
	if ($text=~/240/i) {	#:: Order of Three
		quest::faction(240, $change_amount);
	}
	if ($text=~/241/i) {	#:: Othmir
		quest::faction(241, $change_amount);
	}
	if ($text=~/242/i) {	#:: Outcasts and Mutants
		quest::faction(242, $change_amount);
	}
	if ($text=~/243/i) {	#:: Pack of Tomar
		quest::faction(243, $change_amount);
	}
	if ($text=~/244/i) {	#:: Paebala
		quest::faction(244, $change_amount);
	}
	if ($text=~/245/i) {	#:: Paladins of Gukta
		quest::faction(245, $change_amount);
	}
	if ($text=~/246/i) {	#:: Paladins of Underfoot
		quest::faction(246, $change_amount);
	}
	if ($text=~/247/i) {	#:: Peace Keepers
		quest::faction(247, $change_amount);
	}
	if ($text=~/248/i) {	#:: Phinigel Autropos
		quest::faction(248, $change_amount);
	}
	if ($text=~/249/i) {	#:: Pickclaw Goblins
		quest::faction(249, $change_amount);
	}
	if ($text=~/250/i) {	#:: Pirates of Gunthak
		quest::faction(250, $change_amount);
	}
	if ($text=~/251/i) {	#:: Pirates of Iceclad
		quest::faction(251, $change_amount);
	}
	if ($text=~/252/i) {	#:: Pirates of the Pine
		quest::faction(252, $change_amount);
	}
	if ($text=~/253/i) {	#:: Pixie
		quest::faction(253, $change_amount);
	}
	if ($text=~/254/i) {	#:: Pixtt
		quest::faction(254, $change_amount);
	}
	if ($text=~/255/i) {	#:: Prexuz
		quest::faction(255, $change_amount);
	}
	if ($text=~/256/i) {	#:: Priests of Innoruuk
		quest::faction(256, $change_amount);
	}
	if ($text=~/257/i) {	#:: Priests of Life
		quest::faction(257, $change_amount);
	}
	if ($text=~/258/i) {	#:: Priests of Marr
		quest::faction(258, $change_amount);
	}
	if ($text=~/259/i) {	#:: Priests of Mischief
		quest::faction(259, $change_amount);
	}
	if ($text=~/260/i) {	#:: Primordial Malice
		quest::faction(260, $change_amount);
	}
	if ($text=~/261/i) {	#:: Prisoners of Justice
		quest::faction(261, $change_amount);
	}
	if ($text=~/262/i) {	#:: Progeny
		quest::faction(262, $change_amount);
	}
	if ($text=~/263/i) {	#:: Protectors of Growth
		quest::faction(263, $change_amount);
	}
	if ($text=~/264/i) {	#:: Protectors of Gukta
		quest::faction(264, $change_amount);
	}
	if ($text=~/265/i) {	#:: Protectors of Pine
		quest::faction(265, $change_amount);
	}
	if ($text=~/267/i) {	#:: QRG Protected Animals
		quest::faction(267, $change_amount);
	}
	if ($text=~/268/i) {	#:: Queen Cristanos Thex
		quest::faction(268, $change_amount);
	}
	if ($text=~/269/i) {	#:: Rallos Zek
		quest::faction(269, $change_amount);
	}
	if ($text=~/270/i) {	#:: Rav
		quest::faction(270, $change_amount);
	}
	if ($text=~/271/i) {	#:: Residents of Jaggedpine
		quest::faction(271, $change_amount);
	}
	if ($text=~/272/i) {	#:: Residents of Karanas
		quest::faction(272, $change_amount);
	}
	if ($text=~/273/i) {	#:: Ring of Scale
		quest::faction(273, $change_amount);
	}
	if ($text=~/274/i) {	#:: Riptide Goblins
		quest::faction(274, $change_amount);
	}
	if ($text=~/275/i) {	#:: Rogues of the White Rose
		quest::faction(275, $change_amount);
	}
	if ($text=~/276/i) {	#:: Root of Innuruuk
		quest::faction(276, $change_amount);
	}
	if ($text=~/277/i) {	#:: Rujarkian Slavers
		quest::faction(277, $change_amount);
	}
	if ($text=~/278/i) {	#:: Rygorr Clan Snow Orcs
		quest::faction(278, $change_amount);
	}
	if ($text=~/279/i) {	#:: Sabertooths of Blackburrow
		quest::faction(279, $change_amount);
	}
	if ($text=~/280/i) {	#:: Sandworkers
		quest::faction(280, $change_amount);
	}
	if ($text=~/281/i) {	#:: Sarnak Collective
		quest::faction(281, $change_amount);
	}
	if ($text=~/282/i) {	#:: Scaled Mystics
		quest::faction(282, $change_amount);
	}
	if ($text=~/283/i) {	#:: Tunare's Scouts
		quest::faction(283, $change_amount);
	}
	if ($text=~/284/i) {	#:: Seru
		quest::faction(284, $change_amount);
	}
	if ($text=~/285/i) {	#:: Servants of Aero
		quest::faction(285, $change_amount);
	}
	if ($text=~/286/i) {	#:: Servants of Hydro
		quest::faction(286, $change_amount);
	}
	if ($text=~/287/i) {	#:: Servants of Inferno
		quest::faction(287, $change_amount);
	}
	if ($text=~/288/i) {	#:: Servants of Saryrn
		quest::faction(288, $change_amount);
	}
	if ($text=~/289/i) {	#:: Servants of Terra
		quest::faction(289, $change_amount);
	}
	if ($text=~/290/i) {	#:: Servants of Tunare
		quest::faction(290, $change_amount);
	}
	if ($text=~/291/i) {	#:: Shadowed Men
		quest::faction(291, $change_amount);
	}
	if ($text=~/292/i) {	#:: Shadowknights of Night Keep
		quest::faction(292, $change_amount);
	}
	if ($text=~/293/i) {	#:: Shak Dratha
		quest::faction(293, $change_amount);
	}
	if ($text=~/294/i) {	#:: Shamen of Justice
		quest::faction(294, $change_amount);
	}
	if ($text=~/295/i) {	#:: Shamen of War
		quest::faction(295, $change_amount);
	}
	if ($text=~/296/i) {	#:: Shei Vinitras
		quest::faction(296, $change_amount);
	}
	if ($text=~/297/i) {	#:: Shik Nar
		quest::faction(297, $change_amount);
	}
	if ($text=~/298/i) {	#:: Shoulders of Seru
		quest::faction(298, $change_amount);
	}
	if ($text=~/299/i) {	#:: Shralock Orcs
		quest::faction(299, $change_amount);
	}
	if ($text=~/300/i) {	#:: Silent Fist Clan
		quest::faction(300, $change_amount);
	}
	if ($text=~/301/i) {	#:: Sirens of the Grotto
		quest::faction(301, $change_amount);
	}
	if ($text=~/302/i) {	#:: Skytalons
		quest::faction(302, $change_amount);
	}
	if ($text=~/303/i) {	#:: Snowfang Gnolls
		quest::faction(303, $change_amount);
	}
	if ($text=~/304/i) {	#:: Soldiers of Tunare
		quest::faction(304, $change_amount);
	}
	if ($text=~/305/i) {	#:: Solusek Mining Co
		quest::faction(305, $change_amount);
	}
	if ($text=~/306/i) {	#:: Song Weavers
		quest::faction(306, $change_amount);
	}
	if ($text=~/307/i) {	#:: Spirits of Katta Castellum
		quest::faction(307, $change_amount);
	}
	if ($text=~/308/i) {	#:: Spirocs of Timorous
		quest::faction(308, $change_amount);
	}
	if ($text=~/309/i) {	#:: Splitpaw Clan
		quest::faction(309, $change_amount);
	}
	if ($text=~/310/i) {	#:: Sporali
		quest::faction(310, $change_amount);
	}
	if ($text=~/311/i) {	#:: Steel Warriors
		quest::faction(311, $change_amount);
	}
	if ($text=~/312/i) {	#:: Steelslaves
		quest::faction(312, $change_amount);
	}
	if ($text=~/313/i) {	#:: Stone Hive Bixies
		quest::faction(313, $change_amount);
	}
	if ($text=~/314/i) {	#:: Storm Guard
		quest::faction(314, $change_amount);
	}
	if ($text=~/315/i) {	#:: Storm Guardians
		quest::faction(315, $change_amount);
	}
	if ($text=~/316/i) {	#:: Storm Reapers
		quest::faction(316, $change_amount);
	}
	if ($text=~/317/i) {	#:: Swift Tails
		quest::faction(317, $change_amount);
	}
	if ($text=~/318/i) {	#:: Syrik Iceblood
		quest::faction(318, $change_amount);
	}
	if ($text=~/319/i) {	#:: Taruun
		quest::faction(319, $change_amount);
	}
	if ($text=~/320/i) {	#:: Temple of Solusek Ro
		quest::faction(320, $change_amount);
	}
	if ($text=~/321/i) {	#:: The Cral Ligi Clan
		quest::faction(321, $change_amount);
	}
	if ($text=~/322/i) {	#:: The Dead
		quest::faction(322, $change_amount);
	}
	if ($text=~/323/i) {	#:: The Forsaken
		quest::faction(323, $change_amount);
	}
	if ($text=~/324/i) {	#:: The Grol Baku Clan
		quest::faction(324, $change_amount);
	}
	if ($text=~/325/i) {	#:: The HotWingz
		quest::faction(325, $change_amount);
	}
	if ($text=~/326/i) {	#:: The Kromdek
		quest::faction(326, $change_amount);
	}
	if ($text=~/327/i) {	#:: The Kromdul
		quest::faction(327, $change_amount);
	}
	if ($text=~/328/i) {	#:: The Rainkeeper
		quest::faction(328, $change_amount);
	}
	if ($text=~/329/i) {	#:: The Recuso
		quest::faction(329, $change_amount);
	}
	if ($text=~/330/i) {	#:: The Sambata Tribe
		quest::faction(330, $change_amount);
	}
	if ($text=~/331/i) {	#:: The Spurned
		quest::faction(331, $change_amount);
	}
	if ($text=~/332/i) {	#:: The Tro Jeg Clan
		quest::faction(332, $change_amount);
	}
	if ($text=~/333/i) {	#:: The Truth
		quest::faction(333, $change_amount);
	}
	if ($text=~/334/i) {	#:: The Vas Ren Clan
		quest::faction(334, $change_amount);
	}
	if ($text=~/335/i) {	#:: Thought Leeches
		quest::faction(335, $change_amount);
	}
	if ($text=~/336/i) {	#:: Thrall of Kly
		quest::faction(336, $change_amount);
	}
	if ($text=~/337/i) {	#:: TizmakClan
		quest::faction(337, $change_amount);
	}
	if ($text=~/338/i) {	#:: Traders of the Haven
		quest::faction(338, $change_amount);
	}
	if ($text=~/339/i) {	#:: Trakanon
		quest::faction(339, $change_amount);
	}
	if ($text=~/340/i) {	#:: Treants of Jaggedpine
		quest::faction(340, $change_amount);
	}
	if ($text=~/341/i) {	#:: Tribe Vrodak
		quest::faction(341, $change_amount);
	}
	if ($text=~/342/i) {	#:: True Spirit
		quest::faction(342, $change_amount);
	}
	if ($text=~/343/i) {	#:: Tserrina Syl'Tor
		quest::faction(343, $change_amount);
	}
	if ($text=~/344/i) {	#:: Tunarean Court
		quest::faction(344, $change_amount);
	}
	if ($text=~/345/i) {	#:: Ulthork
		quest::faction(345, $change_amount);
	}
	if ($text=~/346/i) {	#:: Undead Frogloks of Guk
		quest::faction(346, $change_amount);
	}
	if ($text=~/347/i) {	#:: Unkempt Druids
		quest::faction(347, $change_amount);
	}
	if ($text=~/348/i) {	#:: VahShir Crusaders
		quest::faction(348, $change_amount);
	}
	if ($text=~/349/i) {	#:: Valdanov Zevfeer
		quest::faction(349, $change_amount);
	}
	if ($text=~/350/i) {	#:: Validus Custodus
		quest::faction(350, $change_amount);
	}
	if ($text=~/351/i) {	#:: Veeshan
		quest::faction(351, $change_amount);
	}
	if ($text=~/352/i) {	#:: Velketor
		quest::faction(352, $change_amount);
	}
	if ($text=~/353/i) {	#:: Venril Sathir
		quest::faction(353, $change_amount);
	}
	if ($text=~/354/i) {	#:: Vornol Transon
		quest::faction(354, $change_amount);
	}
	if ($text=~/355/i) {	#:: Vox
		quest::faction(355, $change_amount);
	}
	if ($text=~/356/i) {	#:: Wayfarers Brotherhood
		quest::faction(356, $change_amount);
	}
	if ($text=~/357/i) {	#:: Werewolf
		quest::faction(357, $change_amount);
	}
	if ($text=~/358/i) {	#:: Whisperling
		quest::faction(358, $change_amount);
	}
	if ($text=~/359/i) {	#:: Whistling Fist Brotherhood
		quest::faction(359, $change_amount);
	}
	if ($text=~/360/i) {	#:: Wizards of Gukta
		quest::faction(360, $change_amount);
	}
	if ($text=~/361/i) {	#:: Wolves of the North
		quest::faction(361, $change_amount);
	}
	if ($text=~/362/i) {	#:: Yelinak
		quest::faction(362, $change_amount);
	}
	if ($text=~/363/i) {	#:: Yunjo Slave Resistance
		quest::faction(363, $change_amount);
	}
	if ($text=~/364/i) {	#:: Zazamoukh
		quest::faction(364, $change_amount);
	}
	if ($text=~/365/i) {	#:: Zlandicar
		quest::faction(365, $change_amount);
	}
	if ($text=~/366/i) {	#:: KOS
		quest::faction(366, $change_amount);
	}
	if ($text=~/367/i) {	#:: KOS_animal
		quest::faction(367, $change_amount);
	}
	if ($text=~/368/i) {	#:: Cazic Thule
		quest::faction(368, $change_amount);
	}
	if ($text=~/369/i) {	#:: Coalition of TradeFolk III
		quest::faction(369, $change_amount);
	}
	if ($text=~/370/i) {	#:: Swamp Giants of Kunark
		quest::faction(370, $change_amount);
	}
	if ($text=~/371/i) {	#:: Iksar
		quest::faction(371, $change_amount);
	}
	if ($text=~/372/i) {	#:: Murrissa Sandwhisper
		quest::faction(372, $change_amount);
	}
	if ($text=~/373/i) {	#:: Harbingers Clan
		quest::faction(373, $change_amount);
	}
	if ($text=~/374/i) {	#:: Elementals
		quest::faction(374, $change_amount);
	}
	if ($text=~/375/i) {	#:: Mermaids
		quest::faction(375, $change_amount);
	}
	if ($text=~/376/i) {	#:: Unrest Inhabitants
		quest::faction(376, $change_amount);
	}
	if ($text=~/377/i) {	#:: Class 41
		quest::faction(377, $change_amount);
	}
	if ($text=~/378/i) {	#:: Neriak Ogre
		quest::faction(378, $change_amount);
	}
	if ($text=~/379/i) {	#:: King Aythox Thex
		quest::faction(379, $change_amount);
	}
	if ($text=~/380/i) {	#:: Erudite Citizen
		quest::faction(380, $change_amount);
	}
	if ($text=~/381/i) {	#:: Undead Residents of Kithicor
		quest::faction(381, $change_amount);
	}
	if ($text=~/382/i) {	#:: Bertoxxulous
		quest::faction(382, $change_amount);
	}
	if ($text=~/383/i) {	#:: Cleaving Tooth Clan
		quest::faction(383, $change_amount);
	}
	if ($text=~/384/i) {	#:: Mountain Death Clan
		quest::faction(384, $change_amount);
	}
	if ($text=~/385/i) {	#:: Zordakalicus Ragefire
		quest::faction(385, $change_amount);
	}
	if ($text=~/386/i) {	#:: Giant Spider
		quest::faction(386, $change_amount);
	}
	if ($text=~/388/i) {	#:: Spire Spirits
		quest::faction(388, $change_amount);
	}
	if ($text=~/389/i) {	#:: The Bloodtribe
		quest::faction(389, $change_amount);
	}
	if ($text=~/390/i) {	#:: Tarmok Tribe
		quest::faction(390, $change_amount);
	}
	if ($text=~/391/i) {	#:: Denizens of Mischief
		quest::faction(391, $change_amount);
	}
	if ($text=~/392/i) {	#:: Grimlings of the Forest
		quest::faction(392, $change_amount);
	}
	if ($text=~/393/i) {	#:: Witnesses of Hate
		quest::faction(393, $change_amount);
	}
	if ($text=~/394/i) {	#:: Noobie Monsters KOS to Guards
		quest::faction(394, $change_amount);
	}
	if ($text=~/395/i) {	#:: Crystal Caverns Terrors/Spiders/Crawlers
		quest::faction(395, $change_amount);
	}
	if ($text=~/396/i) {	#:: Agents of Dreadspire
		quest::faction(396, $change_amount);
	}
	if ($text=~/397/i) {	#:: Ankhefenmut
		quest::faction(397, $change_amount);
	}
	if ($text=~/398/i) {	#:: Children of Dranik
		quest::faction(398, $change_amount);
	}
	if ($text=~/399/i) {	#:: Citizens of Froststone
		quest::faction(399, $change_amount);
	}
	if ($text=~/400/i) {	#:: Creatures of Darkhollow
		quest::faction(400, $change_amount);
	}
	if ($text=~/401/i) {	#:: Creatures of Gloomingdeep
		quest::faction(401, $change_amount);
	}
	if ($text=~/402/i) {	#:: Creep Reapers
		quest::faction(402, $change_amount);
	}
	if ($text=~/403/i) {	#:: Cursed Drakes
		quest::faction(403, $change_amount);
	}
	if ($text=~/404/i) {	#:: Dark Reign
		quest::faction(404, $change_amount);
	}
	if ($text=~/405/i) {	#:: Death Fist Orcs
		quest::faction(405, $change_amount);
	}
	if ($text=~/406/i) {	#:: Deep Sporali
		quest::faction(406, $change_amount);
	}
	if ($text=~/407/i) {	#:: Defenders of the Broodlands
		quest::faction(407, $change_amount);
	}
	if ($text=~/408/i) {	#:: Deklean Korgad
		quest::faction(408, $change_amount);
	}
	if ($text=~/409/i) {	#:: Denizens of Discord
		quest::faction(409, $change_amount);
	}
	if ($text=~/410/i) {	#:: Dranik Loyalists
		quest::faction(410, $change_amount);
	}
	if ($text=~/411/i) {	#:: Expedition 328
		quest::faction(411, $change_amount);
	}
	if ($text=~/412/i) {	#:: Fallen Guard of Illsalin
		quest::faction(412, $change_amount);
	}
	if ($text=~/414/i) {	#:: Fizzlethorp
		quest::faction(414, $change_amount);
	}
	if ($text=~/415/i) {	#:: Free Traders of Malgrinnor
		quest::faction(415, $change_amount);
	}
	if ($text=~/416/i) {	#:: Gladiators of Mata Muram
		quest::faction(416, $change_amount);
	}
	if ($text=~/417/i) {	#:: Greenfoot Goblins
		quest::faction(417, $change_amount);
	}
	if ($text=~/418/i) {	#:: Inhabitants of Firiona Vie
		quest::faction(418, $change_amount);
	}
	if ($text=~/419/i) {	#:: Kaladim Merchants
		quest::faction(419, $change_amount);
	}
	if ($text=~/420/i) {	#:: Kedge
		quest::faction(420, $change_amount);
	}
	if ($text=~/421/i) {	#:: Kerra
		quest::faction(421, $change_amount);
	}
	if ($text=~/422/i) {	#:: Kessdona
		quest::faction(422, $change_amount);
	}
	if ($text=~/423/i) {	#:: Khati Sha
		quest::faction(423, $change_amount);
	}
	if ($text=~/424/i) {	#:: Kobolds of Gloomingdeep
		quest::faction(424, $change_amount);
	}
	if ($text=~/425/i) {	#:: Lanys T`Vyl
		quest::faction(425, $change_amount);
	}
	if ($text=~/426/i) {	#:: Mermaid
		quest::faction(426, $change_amount);
	}
	if ($text=~/427/i) {	#:: Minions of Tirranun
		quest::faction(427, $change_amount);
	}
	if ($text=~/428/i) {	#:: Nest Guardians
		quest::faction(428, $change_amount);
	}
	if ($text=~/429/i) {	#:: Norrath's Keepers
		quest::faction(429, $change_amount);
	}
	if ($text=~/430/i) {	#:: Ogguk Residents
		quest::faction(430, $change_amount);
	}
	if ($text=~/431/i) {	#:: Ogre
		quest::faction(431, $change_amount);
	}
	if ($text=~/432/i) {	#:: Overlord Mata Muram
		quest::faction(432, $change_amount);
	}
	if ($text=~/433/i) {	#:: Phingel Autropos
		quest::faction(433, $change_amount);
	}
	if ($text=~/434/i) {	#:: Qeynos Citizens
		quest::faction(434, $change_amount);
	}
	if ($text=~/435/i) {	#:: Riftseekers
		quest::faction(435, $change_amount);
	}
	if ($text=~/436/i) {	#:: Rikkukin
		quest::faction(436, $change_amount);
	}
	if ($text=~/437/i) {	#:: Scions of Dreadspire
		quest::faction(437, $change_amount);
	}
	if ($text=~/438/i) {	#:: Scorchclaw Goblins
		quest::faction(438, $change_amount);
	}
	if ($text=~/439/i) {	#:: Sky Talons
		quest::faction(439, $change_amount);
	}
	if ($text=~/440/i) {	#:: Sporali Collective
		quest::faction(440, $change_amount);
	}
	if ($text=~/441/i) {	#:: Stillmoon Acolytes
		quest::faction(441, $change_amount);
	}
	if ($text=~/442/i) {	#:: Temple Of Sol Ro
		quest::faction(442, $change_amount);
	}
	if ($text=~/443/i) {	#:: The Dark Alliance
		quest::faction(443, $change_amount);
	}
	if ($text=~/444/i) {	#:: The Guardians
		quest::faction(444, $change_amount);
	}
	if ($text=~/445/i) {	#:: Thunder Guardians
		quest::faction(445, $change_amount);
	}
	if ($text=~/446/i) {	#:: Tirranun
		quest::faction(446, $change_amount);
	}
	if ($text=~/447/i) {	#:: Trusik Tribe
		quest::faction(447, $change_amount);
	}
	if ($text=~/448/i) {	#:: Vishimtar
		quest::faction(448, $change_amount);
	}
	if ($text=~/449/i) {	#:: Volkara
		quest::faction(449, $change_amount);
	}
	if ($text=~/450/i) {	#:: Volkara's Brood
		quest::faction(450, $change_amount);
	}
	if ($text=~/451/i) {	#:: Yar`lir
		quest::faction(451, $change_amount);
	}
	if ($text=~/452/i) {	#:: Orphans
		quest::faction(452, $change_amount);
	}
	if ($text=~/453/i) {	#:: Sustainers
		quest::faction(453, $change_amount);
	}
	if ($text=~/454/i) {	#:: Loyals
		quest::faction(454, $change_amount);
	}
	if ($text=~/455/i) {	#:: Planar Collective
		quest::faction(455, $change_amount);
	}
	if ($text=~/456/i) {	#:: Verish Mal
		quest::faction(456, $change_amount);
	}
	if ($text=~/457/i) {	#:: Beetle
		quest::faction(457, $change_amount);
	}
	if ($text=~/458/i) {	#:: Gunthaks Clan
		quest::faction(458, $change_amount);
	}
	if ($text=~/459/i) {	#:: Dulaks Clan
		quest::faction(459, $change_amount);
	}
	if ($text=~/460/i) {	#:: Needlite
		quest::faction(460, $change_amount);
	}
	if ($text=~/461/i) {	#:: Underbulks
		quest::faction(461, $change_amount);
	}
	if ($text=~/462/i) {	#:: Wisps
		quest::faction(462, $change_amount);
	}
	if ($text=~/463/i) {	#:: Indifferent
		quest::faction(463, $change_amount);
	}
	if ($text=~/464/i) {	#:: Inhabitants of Air
		quest::faction(464, $change_amount);
	}
	if ($text=~/465/i) {	#:: KOS Inhabitants of Air
		quest::faction(465, $change_amount);
	}
	if ($text=~/466/i) {	#:: KOS Plane of Disease
		quest::faction(466, $change_amount);
	}
	if ($text=~/467/i) {	#:: KOS Plane of Nightmare
		quest::faction(467, $change_amount);
	}
	if ($text=~/468/i) {	#:: KOS Plane of Innovation
		quest::faction(468, $change_amount);
	}
	if ($text=~/469/i) {	#:: KOS Plane of Time
		quest::faction(469, $change_amount);
	}
	if ($text=~/470/i) {	#:: WehateThelin
		quest::faction(470, $change_amount);
	}
	if ($text=~/471/i) {	#:: HoHMaiden
		quest::faction(471, $change_amount);
	}
	if ($text=~/472/i) {	#:: Nadox Clan
		quest::faction(472, $change_amount);
	}
	if ($text=~/473/i) {	#:: Warlord Ngrub
		quest::faction(473, $change_amount);
	}
	if ($text=~/474/i) {	#:: Nitram
		quest::faction(474, $change_amount);
	}
	if ($text=~/475/i) {	#:: Guards of Gloomingdeep
		quest::faction(475, $change_amount);
	}
	if ($text=~/476/i) {	#:: Residents of Gloomingdeep
		quest::faction(476, $change_amount);
	}
	if ($text=~/480/i) {	#:: Madmen
		quest::faction(480, $change_amount);
	}
	if ($text=~/481/i) {	#:: Ancient Cyclops
		quest::faction(481, $change_amount);
	}
	if ($text=~/482/i) {	#:: VillagerRoom
		quest::faction(482, $change_amount);
	}
	if ($text=~/483/i) {	#:: Citizens of Sharvahl
		quest::faction(483, $change_amount);
	}
	if ($text=~/484/i) {	#:: Guktan Suppliers
		quest::faction(484, $change_amount);
	}
	if ($text=~/485/i) {	#:: OmensBatRat
		quest::faction(485, $change_amount);
	}
	if ($text=~/486/i) {	#:: Neriak Merchants
		quest::faction(486, $change_amount);
	}
	if ($text=~/487/i) {	#:: OmensMurks
		quest::faction(487, $change_amount);
	}
	if ($text=~/488/i) {	#:: Planes_Neutral
		quest::faction(488, $change_amount);
	}
	if ($text=~/489/i) {	#:: KOS Plane of Storms
		quest::faction(489, $change_amount);
	}
	if ($text=~/490/i) {	#:: Paludal_Mushrooms
		quest::faction(490, $change_amount);
	}
	if ($text=~/491/i) {	#:: Paludal_Underbulk
		quest::faction(491, $change_amount);
	}
	if ($text=~/492/i) {	#:: The_Angry_Sambata
		quest::faction(492, $change_amount);
	}
	if ($text=~/493/i) {	#:: Crescent Guards
		quest::faction(493, $change_amount);
	}
	if ($text=~/494/i) {	#:: Army of Light
		quest::faction(494, $change_amount);
	}
	if ($text=~/496/i) {	#:: Silla Herald
		quest::faction(496, $change_amount);
	}
	if ($text=~/497/i) {	#:: Ak'Anon Strike Force V
		quest::faction(497, $change_amount);
	}
	if ($text=~/498/i) {	#:: Ancestors of Valdeholm
		quest::faction(498, $change_amount);
	}
	if ($text=~/499/i) {	#:: Ancestors of the Crypt
		quest::faction(499, $change_amount);
	}
	if ($text=~/500/i) {	#:: Spider
		quest::faction(500, $change_amount);
	}
	if ($text=~/501/i) {	#:: Koka'Vor Tribe
		quest::faction(501, $change_amount);
	}
	if ($text=~/502/i) {	#:: Zun'Muram
		quest::faction(502, $change_amount);
	}
	if ($text=~/503/i) {	#:: Invaders of the Moor
		quest::faction(503, $change_amount);
	}
	if ($text=~/504/i) {	#:: Wolves of the Moor
		quest::faction(504, $change_amount);
	}
	if ($text=~/505/i) {	#:: Owlbears of the Moor
		quest::faction(505, $change_amount);
	}
	if ($text=~/506/i) {	#:: Human
		quest::faction(506, $change_amount);
	}
	if ($text=~/507/i) {	#:: Donovon
		quest::faction(507, $change_amount);
	}
	if ($text=~/508/i) {	#:: Servants of the First Witness
		quest::faction(508, $change_amount);
	}
	if ($text=~/509/i) {	#:: Asylum of Anguish
		quest::faction(509, $change_amount);
	}
	if ($text=~/510/i) {	#:: dubious
		quest::faction(510, $change_amount);
	}
	if ($text=~/511/i) {	#:: dubious-storms
		quest::faction(511, $change_amount);
	}
	if ($text=~/512/i) {	#:: Fishlord_KoS
		quest::faction(512, $change_amount);
	}
	if ($text=~/513/i) {	#:: Scout_Guke
		quest::faction(513, $change_amount);
	}
	if ($text=~/514/i) {	#:: Dark_Reign_Guard
		quest::faction(514, $change_amount);
	}
	if ($text=~/515/i) {	#:: Dirtdigger Goblins
		quest::faction(515, $change_amount);
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
