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
	if ($text=~/\b1\b/) {	#:: Agents of Mistmoore
		quest::faction(1, $change_amount);
	}
	if ($text=~/\b2\b/) {	#:: Agnarr
		quest::faction(2, $change_amount);
	}
	if ($text=~/\b3\b/) {	#:: Akheva
		quest::faction(3, $change_amount);
	}
	if ($text=~/\b4\b/) {	#:: Allize Taeew
		quest::faction(4, $change_amount);
	}
	if ($text=~/\b5\b/) {	#:: Allize Volew
		quest::faction(5, $change_amount);
	}
	if ($text=~/\b6\b/) {	#:: Anchorites of Brell Serilis
		quest::faction(6, $change_amount);
	}
	if ($text=~/\b8\b/) {	#:: Anti-mage
		quest::faction(8, $change_amount);
	}
	if ($text=~/\b9\b/) {	#:: Antonius Bayle
		quest::faction(9, $change_amount);
	}
	if ($text=~/\b10\b/) {	#:: Arboreans of Faydark
		quest::faction(10, $change_amount);
	}
	if ($text=~/\b11\b/) {	#:: Arcane Scientists
		quest::faction(11, $change_amount);
	}
	if ($text=~/\b12\b/) {	#:: Ashen Order
		quest::faction(12, $change_amount);
	}
	if ($text=~/\b13\b/) {	#:: Askr the Lost
		quest::faction(13, $change_amount);
	}
	if ($text=~/\b14\b/) {	#:: Aviak
		quest::faction(14, $change_amount);
	}
	if ($text=~/\b15\b/) {	#:: Banker
		quest::faction(15, $change_amount);
	}
	if ($text=~/\b16\b/) {	#:: Battalion of Marr
		quest::faction(16, $change_amount);
	}
	if ($text=~/\b17\b/) {	#:: Befallen Inhabitants
		quest::faction(17, $change_amount);
	}
	if ($text=~/\b18\b/) {	#:: Beta Neutral
		quest::faction(18, $change_amount);
	}
	if ($text=~/\b19\b/) {	#:: Betrayers of Di`Zok
		quest::faction(19, $change_amount);
	}
	if ($text=~/\b20\b/) {	#:: Bloodgills
		quest::faction(20, $change_amount);
	}
	if ($text=~/\b21\b/) {	#:: Bloodsabers
		quest::faction(21, $change_amount);
	}
	if ($text=~/\b22\b/) {	#:: Broken Skull Clan
		quest::faction(22, $change_amount);
	}
	if ($text=~/\b23\b/) {	#:: Brood of Di`Zok
		quest::faction(23, $change_amount);
	}
	if ($text=~/\b24\b/) {	#:: Brood of Kotiz
		quest::faction(24, $change_amount);
	}
	if ($text=~/\b25\b/) {	#:: Brood of Ssraeshza
		quest::faction(25, $change_amount);
	}
	if ($text=~/\b26\b/) {	#:: Brownie
		quest::faction(26, $change_amount);
	}
	if ($text=~/\b27\b/) {	#:: Burning Dead
		quest::faction(27, $change_amount);
	}
	if ($text=~/\b28\b/) {	#:: Burynai Legion
		quest::faction(28, $change_amount);
	}
	if ($text=~/\b29\b/) {	#:: Butcherblock Bandits
		quest::faction(29, $change_amount);
	}
	if ($text=~/\b30\b/) {	#:: Cabilis Residents
		quest::faction(30, $change_amount);
	}
	if ($text=~/\b31\b/) {	#:: Carson McCabe
		quest::faction(31, $change_amount);
	}
	if ($text=~/\b32\b/) {	#:: Chetari
		quest::faction(32, $change_amount);
	}
	if ($text=~/\b33\b/) {	#:: Circle of Unseen Hands
		quest::faction(33, $change_amount);
	}
	if ($text=~/\b35\b/) {	#:: Citizens of Gukta
		quest::faction(35, $change_amount);
	}
	if ($text=~/\b36\b/) {	#:: Citizens of Qeynos
		quest::faction(36, $change_amount);
	}
	if ($text=~/\b37\b/) {	#:: Citizens of Seru
		quest::faction(37, $change_amount);
	}
	if ($text=~/\b38\b/) {	#:: Citizens of Takish-Hiz
		quest::faction(38, $change_amount);
	}
	if ($text=~/\b39\b/) {	#:: Clan Grikbar
		quest::faction(39, $change_amount);
	}
	if ($text=~/\b40\b/) {	#:: Clan Kolbok
		quest::faction(40, $change_amount);
	}
	if ($text=~/\b41\b/) {	#:: Clan RunnyEye
		quest::faction(41, $change_amount);
	}
	if ($text=~/\b42\b/) {	#:: Claws of Veeshan
		quest::faction(42, $change_amount);
	}
	if ($text=~/\b43\b/) {	#:: Clerics of Tunare
		quest::faction(43, $change_amount);
	}
	if ($text=~/\b44\b/) {	#:: Clerics of Underfoot
		quest::faction(44, $change_amount);
	}
	if ($text=~/\b45\b/) {	#:: Clockwork Gnome
		quest::faction(45, $change_amount);
	}
	if ($text=~/\b46\b/) {	#:: Clurg
		quest::faction(46, $change_amount);
	}
	if ($text=~/\b47\b/) {	#:: Coalition of Trade Folk
		quest::faction(47, $change_amount);
	}
	if ($text=~/\b48\b/) {	#:: Coalition of Tradefolk Underground
		quest::faction(48, $change_amount);
	}
	if ($text=~/\b49\b/) {	#:: Coldain
		quest::faction(49, $change_amount);
	}
	if ($text=~/\b50\b/) {	#:: Combine Empire
		quest::faction(50, $change_amount);
	}
	if ($text=~/\b51\b/) {	#:: Commons Residents
		quest::faction(51, $change_amount);
	}
	if ($text=~/\b52\b/) {	#:: Concillium Universus
		quest::faction(52, $change_amount);
	}
	if ($text=~/\b53\b/) {	#:: Corrupt Qeynos Guards
		quest::faction(53, $change_amount);
	}
	if ($text=~/\b54\b/) {	#:: Coterie Elite
		quest::faction(54, $change_amount);
	}
	if ($text=~/\b55\b/) {	#:: Coterie of the Eternal Night
		quest::faction(55, $change_amount);
	}
	if ($text=~/\b56\b/) {	#:: Craftkeepers
		quest::faction(56, $change_amount);
	}
	if ($text=~/\b57\b/) {	#:: Craknek Warriors
		quest::faction(57, $change_amount);
	}
	if ($text=~/\b58\b/) {	#:: Creatures of Justice
		quest::faction(58, $change_amount);
	}
	if ($text=~/\b59\b/) {	#:: Creatures of Taelosia
		quest::faction(59, $change_amount);
	}
	if ($text=~/\b60\b/) {	#:: Crimson Hands
		quest::faction(60, $change_amount);
	}
	if ($text=~/\b61\b/) {	#:: Critters of Jaggedpine
		quest::faction(61, $change_amount);
	}
	if ($text=~/\b62\b/) {	#:: Crusaders of Greenmist
		quest::faction(62, $change_amount);
	}
	if ($text=~/\b63\b/) {	#:: Crushbone Orcs
		quest::faction(63, $change_amount);
	}
	if ($text=~/\b64\b/) {	#:: Cult of the Arisen
		quest::faction(64, $change_amount);
	}
	if ($text=~/\b65\b/) {	#:: Cult of the Great Saprophyte
		quest::faction(65, $change_amount);
	}
	if ($text=~/\b66\b/) {	#:: Da Bashers
		quest::faction(66, $change_amount);
	}
	if ($text=~/\b67\b/) {	#:: Dain Frostreaver IV
		quest::faction(67, $change_amount);
	}
	if ($text=~/\b68\b/) {	#:: Dar Khura
		quest::faction(68, $change_amount);
	}
	if ($text=~/\b69\b/) {	#:: Dark Bargainers
		quest::faction(69, $change_amount);
	}
	if ($text=~/\b70\b/) {	#:: Dark Ones
		quest::faction(70, $change_amount);
	}
	if ($text=~/\b71\b/) {	#:: Dark Reflection
		quest::faction(71, $change_amount);
	}
	if ($text=~/\b72\b/) {	#:: Dark Sendings
		quest::faction(72, $change_amount);
	}
	if ($text=~/\b73\b/) {	#:: Darkpaws of Jaggedpine
		quest::faction(73, $change_amount);
	}
	if ($text=~/\b74\b/) {	#:: Dawnhoppers
		quest::faction(74, $change_amount);
	}
	if ($text=~/\b75\b/) {	#:: Deathfist Orcs
		quest::faction(75, $change_amount);
	}
	if ($text=~/\b76\b/) {	#:: Deep Muses
		quest::faction(76, $change_amount);
	}
	if ($text=~/\b77\b/) {	#:: Deeppockets
		quest::faction(77, $change_amount);
	}
	if ($text=~/\b78\b/) {	#:: Deepshade Collective
		quest::faction(78, $change_amount);
	}
	if ($text=~/\b79\b/) {	#:: Deepwater Knights
		quest::faction(79, $change_amount);
	}
	if ($text=~/\b80\b/) {	#:: Defective Clockwork
		quest::faction(80, $change_amount);
	}
	if ($text=~/\b81\b/) {	#:: Defenders of the Haven
		quest::faction(81, $change_amount);
	}
	if ($text=~/\b82\b/) {	#:: Denizens of Fear
		quest::faction(82, $change_amount);
	}
	if ($text=~/\b83\b/) {	#:: Dervish Cutthroats
		quest::faction(83, $change_amount);
	}
	if ($text=~/\b84\b/) {	#:: Disciples of Kerafyrm
		quest::faction(84, $change_amount);
	}
	if ($text=~/\b85\b/) {	#:: Disciples of Rhag`Zadune
		quest::faction(85, $change_amount);
	}
	if ($text=~/\b86\b/) {	#:: Dismal Rage
		quest::faction(86, $change_amount);
	}
	if ($text=~/\b87\b/) {	#:: Dreadguard Inner
		quest::faction(87, $change_amount);
	}
	if ($text=~/\b88\b/) {	#:: Dreadguard Outer
		quest::faction(88, $change_amount);
	}
	if ($text=~/\b89\b/) {	#:: Drusella Sathir
		quest::faction(89, $change_amount);
	}
	if ($text=~/\b90\b/) {	#:: Ebon Mask
		quest::faction(90, $change_amount);
	}
	if ($text=~/\b91\b/) {	#:: Eldritch Collective
		quest::faction(91, $change_amount);
	}
	if ($text=~/\b92\b/) {	#:: Emerald Warriors
		quest::faction(92, $change_amount);
	}
	if ($text=~/\b93\b/) {	#:: Emperor Ssraeshza
		quest::faction(93, $change_amount);
	}
	if ($text=~/\b94\b/) {	#:: Evil Eye
		quest::faction(94, $change_amount);
	}
	if ($text=~/\b95\b/) {	#:: Exiled Frogloks
		quest::faction(95, $change_amount);
	}
	if ($text=~/\b96\b/) {	#:: Eye of Seru
		quest::faction(96, $change_amount);
	}
	if ($text=~/\b97\b/) {	#:: Faerie
		quest::faction(97, $change_amount);
	}
	if ($text=~/\b98\b/) {	#:: Fallen of Bloody Kithicor
		quest::faction(98, $change_amount);
	}
	if ($text=~/\b99\b/) {	#:: Faydark's Champions
		quest::faction(99, $change_amount);
	}
	if ($text=~/\b100\b/) {	#:: FelGuard
		quest::faction(100, $change_amount);
	}
	if ($text=~/\b101\b/) {	#:: Firiona Vie
		quest::faction(101, $change_amount);
	}
	if ($text=~/\b102\b/) {	#:: Fizzlethorpe
		quest::faction(102, $change_amount);
	}
	if ($text=~/\b103\b/) {	#:: Followers of Korucust
		quest::faction(103, $change_amount);
	}
	if ($text=~/\b104\b/) {	#:: Forgotten Guktan Spirits
		quest::faction(104, $change_amount);
	}
	if ($text=~/\b105\b/) {	#:: Freeport Militia
		quest::faction(105, $change_amount);
	}
	if ($text=~/\b106\b/) {	#:: Frogloks of Guk
		quest::faction(106, $change_amount);
	}
	if ($text=~/\b107\b/) {	#:: Frogloks of Krup
		quest::faction(107, $change_amount);
	}
	if ($text=~/\b108\b/) {	#:: Frogloks of Kunark
		quest::faction(108, $change_amount);
	}
	if ($text=~/\b109\b/) {	#:: Frogloks of Sebilis
		quest::faction(109, $change_amount);
	}
	if ($text=~/\b110\b/) {	#:: Frostfoot Goblins
		quest::faction(110, $change_amount);
	}
	if ($text=~/\b111\b/) {	#:: Fungus Man
		quest::faction(111, $change_amount);
	}
	if ($text=~/\b112\b/) {	#:: Gate Callers
		quest::faction(112, $change_amount);
	}
	if ($text=~/\b113\b/) {	#:: Gate Keepers
		quest::faction(113, $change_amount);
	}
	if ($text=~/\b114\b/) {	#:: Gelistial
		quest::faction(114, $change_amount);
	}
	if ($text=~/\b115\b/) {	#:: Gem Choppers
		quest::faction(115, $change_amount);
	}
	if ($text=~/\b116\b/) {	#:: Geonid Collective
		quest::faction(116, $change_amount);
	}
	if ($text=~/\b117\b/) {	#:: Ghouls of Neriak
		quest::faction(117, $change_amount);
	}
	if ($text=~/\b118\b/) {	#:: Goblin
		quest::faction(118, $change_amount);
	}
	if ($text=~/\b119\b/) {	#:: Goblins of Cleaving Tooth
		quest::faction(119, $change_amount);
	}
	if ($text=~/\b120\b/) {	#:: Goblins of Fire Peak
		quest::faction(120, $change_amount);
	}
	if ($text=~/\b121\b/) {	#:: Goblins of Mountain Death
		quest::faction(121, $change_amount);
	}
	if ($text=~/\b122\b/) {	#:: Gor Taku
		quest::faction(122, $change_amount);
	}
	if ($text=~/\b123\b/) {	#:: Gralloks
		quest::faction(123, $change_amount);
	}
	if ($text=~/\b124\b/) {	#:: Greater Brann Giants
		quest::faction(124, $change_amount);
	}
	if ($text=~/\b125\b/) {	#:: Greater Jord Giants
		quest::faction(125, $change_amount);
	}
	if ($text=~/\b126\b/) {	#:: Greater Vann Giants
		quest::faction(126, $change_amount);
	}
	if ($text=~/\b127\b/) {	#:: Greater Vind Giants
		quest::faction(127, $change_amount);
	}
	if ($text=~/\b128\b/) {	#:: Green Blood Knights
		quest::faction(128, $change_amount);
	}
	if ($text=~/\b129\b/) {	#:: Grieg
		quest::faction(129, $change_amount);
	}
	if ($text=~/\b130\b/) {	#:: Grimlings of the Moor
		quest::faction(130, $change_amount);
	}
	if ($text=~/\b131\b/) {	#:: Grobb Merchants
		quest::faction(131, $change_amount);
	}
	if ($text=~/\b132\b/) {	#:: Guardians of Shar Vahl
		quest::faction(132, $change_amount);
	}
	if ($text=~/\b133\b/) {	#:: Guardians of the Vale
		quest::faction(133, $change_amount);
	}
	if ($text=~/\b134\b/) {	#:: Guardians of Veeshan
		quest::faction(134, $change_amount);
	}
	if ($text=~/\b135\b/) {	#:: Guards of Qeynos
		quest::faction(135, $change_amount);
	}
	if ($text=~/\b136\b/) {	#:: Guktan Elders
		quest::faction(136, $change_amount);
	}
	if ($text=~/\b137\b/) {	#:: Hall of the Ebon Mask
		quest::faction(137, $change_amount);
	}
	if ($text=~/\b138\b/) {	#:: Hand Legionnaries
		quest::faction(138, $change_amount);
	}
	if ($text=~/\b139\b/) {	#:: Hand of Seru
		quest::faction(139, $change_amount);
	}
	if ($text=~/\b140\b/) {	#:: Haven Defenders
		quest::faction(140, $change_amount);
	}
	if ($text=~/\b141\b/) {	#:: Haven Smugglers
		quest::faction(141, $change_amount);
	}
	if ($text=~/\b142\b/) {	#:: Heart of Seru
		quest::faction(142, $change_amount);
	}
	if ($text=~/\b143\b/) {	#:: Heretics
		quest::faction(143, $change_amount);
	}
	if ($text=~/\b144\b/) {	#:: Hexxt
		quest::faction(144, $change_amount);
	}
	if ($text=~/\b145\b/) {	#:: High Council of Erudin
		quest::faction(145, $change_amount);
	}
	if ($text=~/\b146\b/) {	#:: High Council of Gukta
		quest::faction(146, $change_amount);
	}
	if ($text=~/\b147\b/) {	#:: High Guard of Erudin
		quest::faction(147, $change_amount);
	}
	if ($text=~/\b148\b/) {	#:: HighHold Citizens
		quest::faction(148, $change_amount);
	}
	if ($text=~/\b149\b/) {	#:: Highpass Guards
		quest::faction(149, $change_amount);
	}
	if ($text=~/\b150\b/) {	#:: Holgresh
		quest::faction(150, $change_amount);
	}
	if ($text=~/\b151\b/) {	#:: Horde of Xalgoz
		quest::faction(151, $change_amount);
	}
	if ($text=~/\b152\b/) {	#:: House of Fordel
		quest::faction(152, $change_amount);
	}
	if ($text=~/\b153\b/) {	#:: House of Midst
		quest::faction(153, $change_amount);
	}
	if ($text=~/\b154\b/) {	#:: House of Stout
		quest::faction(154, $change_amount);
	}
	if ($text=~/\b155\b/) {	#:: Indigo Brotherhood
		quest::faction(155, $change_amount);
	}
	if ($text=~/\b156\b/) {	#:: Inhabitants of Hate
		quest::faction(156, $change_amount);
	}
	if ($text=~/\b157\b/) {	#:: Inhabitants of Tanaan
		quest::faction(157, $change_amount);
	}
	if ($text=~/\b158\b/) {	#:: Innoruuk's Curse of the Cauldron
		quest::faction(158, $change_amount);
	}
	if ($text=~/\b159\b/) {	#:: Jaggedpine Treefolk
		quest::faction(159, $change_amount);
	}
	if ($text=~/\b160\b/) {	#:: Jaled-Dar
		quest::faction(160, $change_amount);
	}
	if ($text=~/\b161\b/) {	#:: Johanius Barleou
		quest::faction(161, $change_amount);
	}
	if ($text=~/\b162\b/) {	#:: Kaladim Citizens
		quest::faction(162, $change_amount);
	}
	if ($text=~/\b164\b/) {	#:: Kane Bayle
		quest::faction(164, $change_amount);
	}
	if ($text=~/\b165\b/) {	#:: Karana
		quest::faction(165, $change_amount);
	}
	if ($text=~/\b166\b/) {	#:: Karana Bandits
		quest::faction(166, $change_amount);
	}
	if ($text=~/\b167\b/) {	#:: Karana Residents
		quest::faction(167, $change_amount);
	}
	if ($text=~/\b168\b/) {	#:: Katta Castellum Citizens
		quest::faction(168, $change_amount);
	}
	if ($text=~/\b169\b/) {	#:: Kazon Stormhammer
		quest::faction(169, $change_amount);
	}
	if ($text=~/\b170\b/) {	#:: Keepers of the Art
		quest::faction(170, $change_amount);
	}
	if ($text=~/\b171\b/) {	#:: Keepers of the Claw
		quest::faction(171, $change_amount);
	}
	if ($text=~/\b172\b/) {	#:: Kejek Village
		quest::faction(172, $change_amount);
	}
	if ($text=~/\b173\b/) {	#:: Kejekan
		quest::faction(173, $change_amount);
	}
	if ($text=~/\b174\b/) {	#:: Kelethin Merchants
		quest::faction(174, $change_amount);
	}
	if ($text=~/\b175\b/) {	#:: Kerra Isle
		quest::faction(175, $change_amount);
	}
	if ($text=~/\b176\b/) {	#:: King Ak'Anon
		quest::faction(176, $change_amount);
	}
	if ($text=~/\b177\b/) {	#:: King Naythox Thex
		quest::faction(177, $change_amount);
	}
	if ($text=~/\b178\b/) {	#:: King Tearis Thex
		quest::faction(178, $change_amount);
	}
	if ($text=~/\b179\b/) {	#:: King Tormax
		quest::faction(179, $change_amount);
	}
	if ($text=~/\b180\b/) {	#:: King Xorbb
		quest::faction(180, $change_amount);
	}
	if ($text=~/\b181\b/) {	#:: Kingdom of Above and Below
		quest::faction(181, $change_amount);
	}
	if ($text=~/\b182\b/) {	#:: Kithicor Residents
		quest::faction(182, $change_amount);
	}
	if ($text=~/\b183\b/) {	#:: Knights of Thunder
		quest::faction(183, $change_amount);
	}
	if ($text=~/\b184\b/) {	#:: Knights of Truth
		quest::faction(184, $change_amount);
	}
	if ($text=~/\b185\b/) {	#:: Kobold
		quest::faction(185, $change_amount);
	}
	if ($text=~/\b186\b/) {	#:: Kobolds of Fire Pit
		quest::faction(186, $change_amount);
	}
	if ($text=~/\b187\b/) {	#:: Krag
		quest::faction(187, $change_amount);
	}
	if ($text=~/\b188\b/) {	#:: Kromrif
		quest::faction(188, $change_amount);
	}
	if ($text=~/\b189\b/) {	#:: Kromzek
		quest::faction(189, $change_amount);
	}
	if ($text=~/\b190\b/) {	#:: Kunark Fire Giants
		quest::faction(190, $change_amount);
	}
	if ($text=~/\b191\b/) {	#:: Lake Recondite Bandits
		quest::faction(191, $change_amount);
	}
	if ($text=~/\b192\b/) {	#:: League of Antonican Bards
		quest::faction(192, $change_amount);
	}
	if ($text=~/\b193\b/) {	#:: Legion of Cabilis
		quest::faction(193, $change_amount);
	}
	if ($text=~/\b194\b/) {	#:: Legion of Mata Muram
		quest::faction(194, $change_amount);
	}
	if ($text=~/\b195\b/) {	#:: Lesser Brann Giants
		quest::faction(195, $change_amount);
	}
	if ($text=~/\b196\b/) {	#:: Lesser Jord Giants
		quest::faction(196, $change_amount);
	}
	if ($text=~/\b197\b/) {	#:: Lesser Vann Giants
		quest::faction(197, $change_amount);
	}
	if ($text=~/\b198\b/) {	#:: Lesser Vind Giants
		quest::faction(198, $change_amount);
	}
	if ($text=~/\b199\b/) {	#:: Lithiniath
		quest::faction(199, $change_amount);
	}
	if ($text=~/\b200\b/) {	#:: Lizard Man
		quest::faction(200, $change_amount);
	}
	if ($text=~/\b201\b/) {	#:: Lodikai
		quest::faction(201, $change_amount);
	}
	if ($text=~/\b202\b/) {	#:: Lorekeepers of Gukta
		quest::faction(202, $change_amount);
	}
	if ($text=~/\b203\b/) {	#:: Lost Kingdom of Lok
		quest::faction(203, $change_amount);
	}
	if ($text=~/\b204\b/) {	#:: Lost Minions of Miragul
		quest::faction(204, $change_amount);
	}
	if ($text=~/\b205\b/) {	#:: Luclin
		quest::faction(205, $change_amount);
	}
	if ($text=~/\b206\b/) {	#:: Magus Conlegium
		quest::faction(206, $change_amount);
	}
	if ($text=~/\b207\b/) {	#:: Mayong Mistmoore
		quest::faction(207, $change_amount);
	}
	if ($text=~/\b208\b/) {	#:: Mayor Gubbin
		quest::faction(208, $change_amount);
	}
	if ($text=~/\b209\b/) {	#:: Meldrath
		quest::faction(209, $change_amount);
	}
	if ($text=~/\b210\b/) {	#:: Merchants of Ak'Anon
		quest::faction(210, $change_amount);
	}
	if ($text=~/\b211\b/) {	#:: Merchants of Erudin
		quest::faction(211, $change_amount);
	}
	if ($text=~/\b212\b/) {	#:: Merchants of Felwithe
		quest::faction(212, $change_amount);
	}
	if ($text=~/\b213\b/) {	#:: Merchants of Halas
		quest::faction(213, $change_amount);
	}
	if ($text=~/\b214\b/) {	#:: Merchants of Highpass
		quest::faction(214, $change_amount);
	}
	if ($text=~/\b215\b/) {	#:: Merchants of Kaladim
		quest::faction(215, $change_amount);
	}
	if ($text=~/\b216\b/) {	#:: Merchants of Ogguk
		quest::faction(216, $change_amount);
	}
	if ($text=~/\b217\b/) {	#:: Merchants of Qeynos
		quest::faction(217, $change_amount);
	}
	if ($text=~/\b218\b/) {	#:: Merchants of Rivervale
		quest::faction(218, $change_amount);
	}
	if ($text=~/\b219\b/) {	#:: Miners Guild 249
		quest::faction(219, $change_amount);
	}
	if ($text=~/\b220\b/) {	#:: Miners Guild 628
		quest::faction(220, $change_amount);
	}
	if ($text=~/\b221\b/) {	#:: Minions of Scale
		quest::faction(221, $change_amount);
	}
	if ($text=~/\b222\b/) {	#:: Minions of the Sunlord
		quest::faction(222, $change_amount);
	}
	if ($text=~/\b223\b/) {	#:: Minions of Underfoot
		quest::faction(223, $change_amount);
	}
	if ($text=~/\b224\b/) {	#:: Mucktail Gnolls
		quest::faction(224, $change_amount);
	}
	if ($text=~/\b225\b/) {	#:: Nadox Initiate
		quest::faction(225, $change_amount);
	}
	if ($text=~/\b226\b/) {	#:: Nagafen
		quest::faction(226, $change_amount);
	}
	if ($text=~/\b227\b/) {	#:: Najena
		quest::faction(227, $change_amount);
	}
	if ($text=~/\b228\b/) {	#:: Nathyn Illuminious
		quest::faction(228, $change_amount);
	}
	if ($text=~/\b229\b/) {	#:: Neriak Trolls
		quest::faction(229, $change_amount);
	}
	if ($text=~/\b230\b/) {	#:: New Alliance of Stone
		quest::faction(230, $change_amount);
	}
	if ($text=~/\b231\b/) {	#:: Nihil
		quest::faction(231, $change_amount);
	}
	if ($text=~/\b232\b/) {	#:: Oggok Guards
		quest::faction(232, $change_amount);
	}
	if ($text=~/\b233\b/) {	#:: Oggok Citizens
		quest::faction(233, $change_amount);
	}
	if ($text=~/\b234\b/) {	#:: Ogre Warriors
		quest::faction(234, $change_amount);
	}
	if ($text=~/\b235\b/) {	#:: Opal Dark Briar
		quest::faction(235, $change_amount);
	}
	if ($text=~/\b236\b/) {	#:: Oracle of Karnon
		quest::faction(236, $change_amount);
	}
	if ($text=~/\b237\b/) {	#:: Oracle of Marud
		quest::faction(237, $change_amount);
	}
	if ($text=~/\b238\b/) {	#:: Orc
		quest::faction(238, $change_amount);
	}
	if ($text=~/\b239\b/) {	#:: Order of Autarkic Umbrage
		quest::faction(239, $change_amount);
	}
	if ($text=~/\b240\b/) {	#:: Order of Three
		quest::faction(240, $change_amount);
	}
	if ($text=~/\b241\b/) {	#:: Othmir
		quest::faction(241, $change_amount);
	}
	if ($text=~/\b242\b/) {	#:: Outcasts and Mutants
		quest::faction(242, $change_amount);
	}
	if ($text=~/\b243\b/) {	#:: Pack of Tomar
		quest::faction(243, $change_amount);
	}
	if ($text=~/\b244\b/) {	#:: Paebala
		quest::faction(244, $change_amount);
	}
	if ($text=~/\b245\b/) {	#:: Paladins of Gukta
		quest::faction(245, $change_amount);
	}
	if ($text=~/\b246\b/) {	#:: Paladins of Underfoot
		quest::faction(246, $change_amount);
	}
	if ($text=~/\b247\b/) {	#:: Peace Keepers
		quest::faction(247, $change_amount);
	}
	if ($text=~/\b248\b/) {	#:: Phinigel Autropos
		quest::faction(248, $change_amount);
	}
	if ($text=~/\b249\b/) {	#:: Pickclaw Goblins
		quest::faction(249, $change_amount);
	}
	if ($text=~/\b250\b/) {	#:: Pirates of Gunthak
		quest::faction(250, $change_amount);
	}
	if ($text=~/\b251\b/) {	#:: Pirates of Iceclad
		quest::faction(251, $change_amount);
	}
	if ($text=~/\b252\b/) {	#:: Pirates of the Pine
		quest::faction(252, $change_amount);
	}
	if ($text=~/\b253\b/) {	#:: Pixie
		quest::faction(253, $change_amount);
	}
	if ($text=~/\b254\b/) {	#:: Pixtt
		quest::faction(254, $change_amount);
	}
	if ($text=~/\b255\b/) {	#:: Prexuz
		quest::faction(255, $change_amount);
	}
	if ($text=~/\b256\b/) {	#:: Priests of Innoruuk
		quest::faction(256, $change_amount);
	}
	if ($text=~/\b257\b/) {	#:: Priests of Life
		quest::faction(257, $change_amount);
	}
	if ($text=~/\b258\b/) {	#:: Priests of Marr
		quest::faction(258, $change_amount);
	}
	if ($text=~/\b259\b/) {	#:: Priests of Mischief
		quest::faction(259, $change_amount);
	}
	if ($text=~/\b260\b/) {	#:: Primordial Malice
		quest::faction(260, $change_amount);
	}
	if ($text=~/\b261\b/) {	#:: Prisoners of Justice
		quest::faction(261, $change_amount);
	}
	if ($text=~/\b262\b/) {	#:: Progeny
		quest::faction(262, $change_amount);
	}
	if ($text=~/\b263\b/) {	#:: Protectors of Growth
		quest::faction(263, $change_amount);
	}
	if ($text=~/\b264\b/) {	#:: Protectors of Gukta
		quest::faction(264, $change_amount);
	}
	if ($text=~/\b265\b/) {	#:: Protectors of Pine
		quest::faction(265, $change_amount);
	}
	if ($text=~/\b267\b/) {	#:: QRG Protected Animals
		quest::faction(267, $change_amount);
	}
	if ($text=~/\b268\b/) {	#:: Queen Cristanos Thex
		quest::faction(268, $change_amount);
	}
	if ($text=~/\b269\b/) {	#:: Rallos Zek
		quest::faction(269, $change_amount);
	}
	if ($text=~/\b270\b/) {	#:: Rav
		quest::faction(270, $change_amount);
	}
	if ($text=~/\b271\b/) {	#:: Residents of Jaggedpine
		quest::faction(271, $change_amount);
	}
	if ($text=~/\b272\b/) {	#:: Residents of Karanas
		quest::faction(272, $change_amount);
	}
	if ($text=~/\b273\b/) {	#:: Ring of Scale
		quest::faction(273, $change_amount);
	}
	if ($text=~/\b274\b/) {	#:: Riptide Goblins
		quest::faction(274, $change_amount);
	}
	if ($text=~/\b275\b/) {	#:: Rogues of the White Rose
		quest::faction(275, $change_amount);
	}
	if ($text=~/\b276\b/) {	#:: Root of Innuruuk
		quest::faction(276, $change_amount);
	}
	if ($text=~/\b277\b/) {	#:: Rujarkian Slavers
		quest::faction(277, $change_amount);
	}
	if ($text=~/\b278\b/) {	#:: Rygorr Clan Snow Orcs
		quest::faction(278, $change_amount);
	}
	if ($text=~/\b279\b/) {	#:: Sabertooths of Blackburrow
		quest::faction(279, $change_amount);
	}
	if ($text=~/\b280\b/) {	#:: Sandworkers
		quest::faction(280, $change_amount);
	}
	if ($text=~/\b281\b/) {	#:: Sarnak Collective
		quest::faction(281, $change_amount);
	}
	if ($text=~/\b282\b/) {	#:: Scaled Mystics
		quest::faction(282, $change_amount);
	}
	if ($text=~/\b283\b/) {	#:: Tunare's Scouts
		quest::faction(283, $change_amount);
	}
	if ($text=~/\b284\b/) {	#:: Seru
		quest::faction(284, $change_amount);
	}
	if ($text=~/\b285\b/) {	#:: Servants of Aero
		quest::faction(285, $change_amount);
	}
	if ($text=~/\b286\b/) {	#:: Servants of Hydro
		quest::faction(286, $change_amount);
	}
	if ($text=~/\b287\b/) {	#:: Servants of Inferno
		quest::faction(287, $change_amount);
	}
	if ($text=~/\b288\b/) {	#:: Servants of Saryrn
		quest::faction(288, $change_amount);
	}
	if ($text=~/\b289\b/) {	#:: Servants of Terra
		quest::faction(289, $change_amount);
	}
	if ($text=~/\b290\b/) {	#:: Servants of Tunare
		quest::faction(290, $change_amount);
	}
	if ($text=~/\b291\b/) {	#:: Shadowed Men
		quest::faction(291, $change_amount);
	}
	if ($text=~/\b292\b/) {	#:: Shadowknights of Night Keep
		quest::faction(292, $change_amount);
	}
	if ($text=~/\b293\b/) {	#:: Shak Dratha
		quest::faction(293, $change_amount);
	}
	if ($text=~/\b294\b/) {	#:: Shamen of Justice
		quest::faction(294, $change_amount);
	}
	if ($text=~/\b295\b/) {	#:: Shamen of War
		quest::faction(295, $change_amount);
	}
	if ($text=~/\b296\b/) {	#:: Shei Vinitras
		quest::faction(296, $change_amount);
	}
	if ($text=~/\b297\b/) {	#:: Shik Nar
		quest::faction(297, $change_amount);
	}
	if ($text=~/\b298\b/) {	#:: Shoulders of Seru
		quest::faction(298, $change_amount);
	}
	if ($text=~/\b299\b/) {	#:: Shralock Orcs
		quest::faction(299, $change_amount);
	}
	if ($text=~/\b300\b/) {	#:: Silent Fist Clan
		quest::faction(300, $change_amount);
	}
	if ($text=~/\b301\b/) {	#:: Sirens of the Grotto
		quest::faction(301, $change_amount);
	}
	if ($text=~/\b302\b/) {	#:: Skytalons
		quest::faction(302, $change_amount);
	}
	if ($text=~/\b303\b/) {	#:: Snowfang Gnolls
		quest::faction(303, $change_amount);
	}
	if ($text=~/\b304\b/) {	#:: Soldiers of Tunare
		quest::faction(304, $change_amount);
	}
	if ($text=~/\b305\b/) {	#:: Solusek Mining Co
		quest::faction(305, $change_amount);
	}
	if ($text=~/\b306\b/) {	#:: Song Weavers
		quest::faction(306, $change_amount);
	}
	if ($text=~/\b307\b/) {	#:: Spirits of Katta Castellum
		quest::faction(307, $change_amount);
	}
	if ($text=~/\b308\b/) {	#:: Spirocs of Timorous
		quest::faction(308, $change_amount);
	}
	if ($text=~/\b309\b/) {	#:: Splitpaw Clan
		quest::faction(309, $change_amount);
	}
	if ($text=~/\b310\b/) {	#:: Sporali
		quest::faction(310, $change_amount);
	}
	if ($text=~/\b311\b/) {	#:: Steel Warriors
		quest::faction(311, $change_amount);
	}
	if ($text=~/\b312\b/) {	#:: Steelslaves
		quest::faction(312, $change_amount);
	}
	if ($text=~/\b313\b/) {	#:: Stone Hive Bixies
		quest::faction(313, $change_amount);
	}
	if ($text=~/\b314\b/) {	#:: Storm Guard
		quest::faction(314, $change_amount);
	}
	if ($text=~/\b315\b/) {	#:: Storm Guardians
		quest::faction(315, $change_amount);
	}
	if ($text=~/\b316\b/) {	#:: Storm Reapers
		quest::faction(316, $change_amount);
	}
	if ($text=~/\b317\b/) {	#:: Swift Tails
		quest::faction(317, $change_amount);
	}
	if ($text=~/\b318\b/) {	#:: Syrik Iceblood
		quest::faction(318, $change_amount);
	}
	if ($text=~/\b319\b/) {	#:: Taruun
		quest::faction(319, $change_amount);
	}
	if ($text=~/\b320\b/) {	#:: Temple of Solusek Ro
		quest::faction(320, $change_amount);
	}
	if ($text=~/\b321\b/) {	#:: The Cral Ligi Clan
		quest::faction(321, $change_amount);
	}
	if ($text=~/\b322\b/) {	#:: The Dead
		quest::faction(322, $change_amount);
	}
	if ($text=~/\b323\b/) {	#:: The Forsaken
		quest::faction(323, $change_amount);
	}
	if ($text=~/\b324\b/) {	#:: The Grol Baku Clan
		quest::faction(324, $change_amount);
	}
	if ($text=~/\b325\b/) {	#:: The HotWingz
		quest::faction(325, $change_amount);
	}
	if ($text=~/\b326\b/) {	#:: The Kromdek
		quest::faction(326, $change_amount);
	}
	if ($text=~/\b327\b/) {	#:: The Kromdul
		quest::faction(327, $change_amount);
	}
	if ($text=~/\b328\b/) {	#:: The Rainkeeper
		quest::faction(328, $change_amount);
	}
	if ($text=~/\b329\b/) {	#:: The Recuso
		quest::faction(329, $change_amount);
	}
	if ($text=~/\b330\b/) {	#:: The Sambata Tribe
		quest::faction(330, $change_amount);
	}
	if ($text=~/\b331\b/) {	#:: The Spurned
		quest::faction(331, $change_amount);
	}
	if ($text=~/\b332\b/) {	#:: The Tro Jeg Clan
		quest::faction(332, $change_amount);
	}
	if ($text=~/\b333\b/) {	#:: The Truth
		quest::faction(333, $change_amount);
	}
	if ($text=~/\b334\b/) {	#:: The Vas Ren Clan
		quest::faction(334, $change_amount);
	}
	if ($text=~/\b335\b/) {	#:: Thought Leeches
		quest::faction(335, $change_amount);
	}
	if ($text=~/\b336\b/) {	#:: Thrall of Kly
		quest::faction(336, $change_amount);
	}
	if ($text=~/\b337\b/) {	#:: TizmakClan
		quest::faction(337, $change_amount);
	}
	if ($text=~/\b338\b/) {	#:: Traders of the Haven
		quest::faction(338, $change_amount);
	}
	if ($text=~/\b339\b/) {	#:: Trakanon
		quest::faction(339, $change_amount);
	}
	if ($text=~/\b340\b/) {	#:: Treants of Jaggedpine
		quest::faction(340, $change_amount);
	}
	if ($text=~/\b341\b/) {	#:: Tribe Vrodak
		quest::faction(341, $change_amount);
	}
	if ($text=~/\b342\b/) {	#:: True Spirit
		quest::faction(342, $change_amount);
	}
	if ($text=~/\b343\b/) {	#:: Tserrina Syl'Tor
		quest::faction(343, $change_amount);
	}
	if ($text=~/\b344\b/) {	#:: Tunarean Court
		quest::faction(344, $change_amount);
	}
	if ($text=~/\b345\b/) {	#:: Ulthork
		quest::faction(345, $change_amount);
	}
	if ($text=~/\b346\b/) {	#:: Undead Frogloks of Guk
		quest::faction(346, $change_amount);
	}
	if ($text=~/\b347\b/) {	#:: Unkempt Druids
		quest::faction(347, $change_amount);
	}
	if ($text=~/\b348\b/) {	#:: VahShir Crusaders
		quest::faction(348, $change_amount);
	}
	if ($text=~/\b349\b/) {	#:: Valdanov Zevfeer
		quest::faction(349, $change_amount);
	}
	if ($text=~/\b350\b/) {	#:: Validus Custodus
		quest::faction(350, $change_amount);
	}
	if ($text=~/\b351\b/) {	#:: Veeshan
		quest::faction(351, $change_amount);
	}
	if ($text=~/\b352\b/) {	#:: Velketor
		quest::faction(352, $change_amount);
	}
	if ($text=~/\b353\b/) {	#:: Venril Sathir
		quest::faction(353, $change_amount);
	}
	if ($text=~/\b354\b/) {	#:: Vornol Transon
		quest::faction(354, $change_amount);
	}
	if ($text=~/\b355\b/) {	#:: Vox
		quest::faction(355, $change_amount);
	}
	if ($text=~/\b356\b/) {	#:: Wayfarers Brotherhood
		quest::faction(356, $change_amount);
	}
	if ($text=~/\b357\b/) {	#:: Werewolf
		quest::faction(357, $change_amount);
	}
	if ($text=~/\b358\b/) {	#:: Whisperling
		quest::faction(358, $change_amount);
	}
	if ($text=~/\b359\b/) {	#:: Whistling Fist Brotherhood
		quest::faction(359, $change_amount);
	}
	if ($text=~/\b360\b/) {	#:: Wizards of Gukta
		quest::faction(360, $change_amount);
	}
	if ($text=~/\b361\b/) {	#:: Wolves of the North
		quest::faction(361, $change_amount);
	}
	if ($text=~/\b362\b/) {	#:: Yelinak
		quest::faction(362, $change_amount);
	}
	if ($text=~/\b363\b/) {	#:: Yunjo Slave Resistance
		quest::faction(363, $change_amount);
	}
	if ($text=~/\b364\b/) {	#:: Zazamoukh
		quest::faction(364, $change_amount);
	}
	if ($text=~/\b365\b/) {	#:: Zlandicar
		quest::faction(365, $change_amount);
	}
	if ($text=~/\b366\b/) {	#:: KOS
		quest::faction(366, $change_amount);
	}
	if ($text=~/\b367\b/) {	#:: KOS_animal
		quest::faction(367, $change_amount);
	}
	if ($text=~/\b368\b/) {	#:: Cazic Thule
		quest::faction(368, $change_amount);
	}
	if ($text=~/\b369\b/) {	#:: Coalition of TradeFolk III
		quest::faction(369, $change_amount);
	}
	if ($text=~/\b370\b/) {	#:: Swamp Giants of Kunark
		quest::faction(370, $change_amount);
	}
	if ($text=~/\b371\b/) {	#:: Iksar
		quest::faction(371, $change_amount);
	}
	if ($text=~/\b372\b/) {	#:: Murrissa Sandwhisper
		quest::faction(372, $change_amount);
	}
	if ($text=~/\b373\b/) {	#:: Harbingers Clan
		quest::faction(373, $change_amount);
	}
	if ($text=~/\b374\b/) {	#:: Elementals
		quest::faction(374, $change_amount);
	}
	if ($text=~/\b375\b/) {	#:: Mermaids
		quest::faction(375, $change_amount);
	}
	if ($text=~/\b376\b/) {	#:: Unrest Inhabitants
		quest::faction(376, $change_amount);
	}
	if ($text=~/\b377\b/) {	#:: Class 41
		quest::faction(377, $change_amount);
	}
	if ($text=~/\b378\b/) {	#:: Neriak Ogre
		quest::faction(378, $change_amount);
	}
	if ($text=~/\b379\b/) {	#:: King Aythox Thex
		quest::faction(379, $change_amount);
	}
	if ($text=~/\b380\b/) {	#:: Erudite Citizen
		quest::faction(380, $change_amount);
	}
	if ($text=~/\b381\b/) {	#:: Undead Residents of Kithicor
		quest::faction(381, $change_amount);
	}
	if ($text=~/\b382\b/) {	#:: Bertoxxulous
		quest::faction(382, $change_amount);
	}
	if ($text=~/\b383\b/) {	#:: Cleaving Tooth Clan
		quest::faction(383, $change_amount);
	}
	if ($text=~/\b384\b/) {	#:: Mountain Death Clan
		quest::faction(384, $change_amount);
	}
	if ($text=~/\b385\b/) {	#:: Zordakalicus Ragefire
		quest::faction(385, $change_amount);
	}
	if ($text=~/\b386\b/) {	#:: Giant Spider
		quest::faction(386, $change_amount);
	}
	if ($text=~/\b388\b/) {	#:: Spire Spirits
		quest::faction(388, $change_amount);
	}
	if ($text=~/\b389\b/) {	#:: The Bloodtribe
		quest::faction(389, $change_amount);
	}
	if ($text=~/\b390\b/) {	#:: Tarmok Tribe
		quest::faction(390, $change_amount);
	}
	if ($text=~/\b391\b/) {	#:: Denizens of Mischief
		quest::faction(391, $change_amount);
	}
	if ($text=~/\b392\b/) {	#:: Grimlings of the Forest
		quest::faction(392, $change_amount);
	}
	if ($text=~/\b393\b/) {	#:: Witnesses of Hate
		quest::faction(393, $change_amount);
	}
	if ($text=~/\b394\b/) {	#:: Noobie Monsters KOS to Guards
		quest::faction(394, $change_amount);
	}
	if ($text=~/\b395\b/) {	#:: Crystal Caverns Terrors/Spiders/Crawlers
		quest::faction(395, $change_amount);
	}
	if ($text=~/\b396\b/) {	#:: Agents of Dreadspire
		quest::faction(396, $change_amount);
	}
	if ($text=~/\b397\b/) {	#:: Ankhefenmut
		quest::faction(397, $change_amount);
	}
	if ($text=~/\b398\b/) {	#:: Children of Dranik
		quest::faction(398, $change_amount);
	}
	if ($text=~/\b399\b/) {	#:: Citizens of Froststone
		quest::faction(399, $change_amount);
	}
	if ($text=~/\b400\b/) {	#:: Creatures of Darkhollow
		quest::faction(400, $change_amount);
	}
	if ($text=~/\b401\b/) {	#:: Creatures of Gloomingdeep
		quest::faction(401, $change_amount);
	}
	if ($text=~/\b402\b/) {	#:: Creep Reapers
		quest::faction(402, $change_amount);
	}
	if ($text=~/\b403\b/) {	#:: Cursed Drakes
		quest::faction(403, $change_amount);
	}
	if ($text=~/\b404\b/) {	#:: Dark Reign
		quest::faction(404, $change_amount);
	}
	if ($text=~/\b405\b/) {	#:: Death Fist Orcs
		quest::faction(405, $change_amount);
	}
	if ($text=~/\b406\b/) {	#:: Deep Sporali
		quest::faction(406, $change_amount);
	}
	if ($text=~/\b407\b/) {	#:: Defenders of the Broodlands
		quest::faction(407, $change_amount);
	}
	if ($text=~/\b408\b/) {	#:: Deklean Korgad
		quest::faction(408, $change_amount);
	}
	if ($text=~/\b409\b/) {	#:: Denizens of Discord
		quest::faction(409, $change_amount);
	}
	if ($text=~/\b410\b/) {	#:: Dranik Loyalists
		quest::faction(410, $change_amount);
	}
	if ($text=~/\b411\b/) {	#:: Expedition 328
		quest::faction(411, $change_amount);
	}
	if ($text=~/\b412\b/) {	#:: Fallen Guard of Illsalin
		quest::faction(412, $change_amount);
	}
	if ($text=~/\b414\b/) {	#:: Fizzlethorp
		quest::faction(414, $change_amount);
	}
	if ($text=~/\b415\b/) {	#:: Free Traders of Malgrinnor
		quest::faction(415, $change_amount);
	}
	if ($text=~/\b416\b/) {	#:: Gladiators of Mata Muram
		quest::faction(416, $change_amount);
	}
	if ($text=~/\b417\b/) {	#:: Greenfoot Goblins
		quest::faction(417, $change_amount);
	}
	if ($text=~/\b418\b/) {	#:: Inhabitants of Firiona Vie
		quest::faction(418, $change_amount);
	}
	if ($text=~/\b419\b/) {	#:: Kaladim Merchants
		quest::faction(419, $change_amount);
	}
	if ($text=~/\b420\b/) {	#:: Kedge
		quest::faction(420, $change_amount);
	}
	if ($text=~/\b421\b/) {	#:: Kerra
		quest::faction(421, $change_amount);
	}
	if ($text=~/\b422\b/) {	#:: Kessdona
		quest::faction(422, $change_amount);
	}
	if ($text=~/\b423\b/) {	#:: Khati Sha
		quest::faction(423, $change_amount);
	}
	if ($text=~/\b424\b/) {	#:: Kobolds of Gloomingdeep
		quest::faction(424, $change_amount);
	}
	if ($text=~/\b425\b/) {	#:: Lanys T`Vyl
		quest::faction(425, $change_amount);
	}
	if ($text=~/\b426\b/) {	#:: Mermaid
		quest::faction(426, $change_amount);
	}
	if ($text=~/\b427\b/) {	#:: Minions of Tirranun
		quest::faction(427, $change_amount);
	}
	if ($text=~/\b428\b/) {	#:: Nest Guardians
		quest::faction(428, $change_amount);
	}
	if ($text=~/\b429\b/) {	#:: Norrath's Keepers
		quest::faction(429, $change_amount);
	}
	if ($text=~/\b430\b/) {	#:: Ogguk Residents
		quest::faction(430, $change_amount);
	}
	if ($text=~/\b431\b/) {	#:: Ogre
		quest::faction(431, $change_amount);
	}
	if ($text=~/\b432\b/) {	#:: Overlord Mata Muram
		quest::faction(432, $change_amount);
	}
	if ($text=~/\b433\b/) {	#:: Phingel Autropos
		quest::faction(433, $change_amount);
	}
	if ($text=~/\b434\b/) {	#:: Qeynos Citizens
		quest::faction(434, $change_amount);
	}
	if ($text=~/\b435\b/) {	#:: Riftseekers
		quest::faction(435, $change_amount);
	}
	if ($text=~/\b436\b/) {	#:: Rikkukin
		quest::faction(436, $change_amount);
	}
	if ($text=~/\b437\b/) {	#:: Scions of Dreadspire
		quest::faction(437, $change_amount);
	}
	if ($text=~/\b438\b/) {	#:: Scorchclaw Goblins
		quest::faction(438, $change_amount);
	}
	if ($text=~/\b439\b/) {	#:: Sky Talons
		quest::faction(439, $change_amount);
	}
	if ($text=~/\b440\b/) {	#:: Sporali Collective
		quest::faction(440, $change_amount);
	}
	if ($text=~/\b441\b/) {	#:: Stillmoon Acolytes
		quest::faction(441, $change_amount);
	}
	if ($text=~/\b442\b/) {	#:: Temple Of Sol Ro
		quest::faction(442, $change_amount);
	}
	if ($text=~/\b443\b/) {	#:: The Dark Alliance
		quest::faction(443, $change_amount);
	}
	if ($text=~/\b444\b/) {	#:: The Guardians
		quest::faction(444, $change_amount);
	}
	if ($text=~/\b445\b/) {	#:: Thunder Guardians
		quest::faction(445, $change_amount);
	}
	if ($text=~/\b446\b/) {	#:: Tirranun
		quest::faction(446, $change_amount);
	}
	if ($text=~/\b447\b/) {	#:: Trusik Tribe
		quest::faction(447, $change_amount);
	}
	if ($text=~/\b448\b/) {	#:: Vishimtar
		quest::faction(448, $change_amount);
	}
	if ($text=~/\b449\b/) {	#:: Volkara
		quest::faction(449, $change_amount);
	}
	if ($text=~/\b450\b/) {	#:: Volkara's Brood
		quest::faction(450, $change_amount);
	}
	if ($text=~/\b451\b/) {	#:: Yar`lir
		quest::faction(451, $change_amount);
	}
	if ($text=~/\b452\b/) {	#:: Orphans
		quest::faction(452, $change_amount);
	}
	if ($text=~/\b453\b/) {	#:: Sustainers
		quest::faction(453, $change_amount);
	}
	if ($text=~/\b454\b/) {	#:: Loyals
		quest::faction(454, $change_amount);
	}
	if ($text=~/\b455\b/) {	#:: Planar Collective
		quest::faction(455, $change_amount);
	}
	if ($text=~/\b456\b/) {	#:: Verish Mal
		quest::faction(456, $change_amount);
	}
	if ($text=~/\b457\b/) {	#:: Beetle
		quest::faction(457, $change_amount);
	}
	if ($text=~/\b458\b/) {	#:: Gunthaks Clan
		quest::faction(458, $change_amount);
	}
	if ($text=~/\b459\b/) {	#:: Dulaks Clan
		quest::faction(459, $change_amount);
	}
	if ($text=~/\b460\b/) {	#:: Needlite
		quest::faction(460, $change_amount);
	}
	if ($text=~/\b461\b/) {	#:: Underbulks
		quest::faction(461, $change_amount);
	}
	if ($text=~/\b462\b/) {	#:: Wisps
		quest::faction(462, $change_amount);
	}
	if ($text=~/\b463\b/) {	#:: Indifferent
		quest::faction(463, $change_amount);
	}
	if ($text=~/\b464\b/) {	#:: Inhabitants of Air
		quest::faction(464, $change_amount);
	}
	if ($text=~/\b465\b/) {	#:: KOS Inhabitants of Air
		quest::faction(465, $change_amount);
	}
	if ($text=~/\b466\b/) {	#:: KOS Plane of Disease
		quest::faction(466, $change_amount);
	}
	if ($text=~/\b467\b/) {	#:: KOS Plane of Nightmare
		quest::faction(467, $change_amount);
	}
	if ($text=~/\b468\b/) {	#:: KOS Plane of Innovation
		quest::faction(468, $change_amount);
	}
	if ($text=~/\b469\b/) {	#:: KOS Plane of Time
		quest::faction(469, $change_amount);
	}
	if ($text=~/\b470\b/) {	#:: WehateThelin
		quest::faction(470, $change_amount);
	}
	if ($text=~/\b471\b/) {	#:: HoHMaiden
		quest::faction(471, $change_amount);
	}
	if ($text=~/\b472\b/) {	#:: Nadox Clan
		quest::faction(472, $change_amount);
	}
	if ($text=~/\b473\b/) {	#:: Warlord Ngrub
		quest::faction(473, $change_amount);
	}
	if ($text=~/\b474\b/) {	#:: Nitram
		quest::faction(474, $change_amount);
	}
	if ($text=~/\b475\b/) {	#:: Guards of Gloomingdeep
		quest::faction(475, $change_amount);
	}
	if ($text=~/\b476\b/) {	#:: Residents of Gloomingdeep
		quest::faction(476, $change_amount);
	}
	if ($text=~/\b480\b/) {	#:: Madmen
		quest::faction(480, $change_amount);
	}
	if ($text=~/\b481\b/) {	#:: Ancient Cyclops
		quest::faction(481, $change_amount);
	}
	if ($text=~/\b482\b/) {	#:: VillagerRoom
		quest::faction(482, $change_amount);
	}
	if ($text=~/\b483\b/) {	#:: Citizens of Sharvahl
		quest::faction(483, $change_amount);
	}
	if ($text=~/\b484\b/) {	#:: Guktan Suppliers
		quest::faction(484, $change_amount);
	}
	if ($text=~/\b485\b/) {	#:: OmensBatRat
		quest::faction(485, $change_amount);
	}
	if ($text=~/\b486\b/) {	#:: Neriak Merchants
		quest::faction(486, $change_amount);
	}
	if ($text=~/\b487\b/) {	#:: OmensMurks
		quest::faction(487, $change_amount);
	}
	if ($text=~/\b488\b/) {	#:: Planes_Neutral
		quest::faction(488, $change_amount);
	}
	if ($text=~/\b489\b/) {	#:: KOS Plane of Storms
		quest::faction(489, $change_amount);
	}
	if ($text=~/\b490\b/) {	#:: Paludal_Mushrooms
		quest::faction(490, $change_amount);
	}
	if ($text=~/\b491\b/) {	#:: Paludal_Underbulk
		quest::faction(491, $change_amount);
	}
	if ($text=~/\b492\b/) {	#:: The_Angry_Sambata
		quest::faction(492, $change_amount);
	}
	if ($text=~/\b493\b/) {	#:: Crescent Guards
		quest::faction(493, $change_amount);
	}
	if ($text=~/\b494\b/) {	#:: Army of Light
		quest::faction(494, $change_amount);
	}
	if ($text=~/\b496\b/) {	#:: Silla Herald
		quest::faction(496, $change_amount);
	}
	if ($text=~/\b497\b/) {	#:: Ak'Anon Strike Force V
		quest::faction(497, $change_amount);
	}
	if ($text=~/\b498\b/) {	#:: Ancestors of Valdeholm
		quest::faction(498, $change_amount);
	}
	if ($text=~/\b499\b/) {	#:: Ancestors of the Crypt
		quest::faction(499, $change_amount);
	}
	if ($text=~/\b500\b/) {	#:: Spider
		quest::faction(500, $change_amount);
	}
	if ($text=~/\b501\b/) {	#:: Koka'Vor Tribe
		quest::faction(501, $change_amount);
	}
	if ($text=~/\b502\b/) {	#:: Zun'Muram
		quest::faction(502, $change_amount);
	}
	if ($text=~/\b503\b/) {	#:: Invaders of the Moor
		quest::faction(503, $change_amount);
	}
	if ($text=~/\b504\b/) {	#:: Wolves of the Moor
		quest::faction(504, $change_amount);
	}
	if ($text=~/\b505\b/) {	#:: Owlbears of the Moor
		quest::faction(505, $change_amount);
	}
	if ($text=~/\b506\b/) {	#:: Human
		quest::faction(506, $change_amount);
	}
	if ($text=~/\b507\b/) {	#:: Donovon
		quest::faction(507, $change_amount);
	}
	if ($text=~/\b508\b/) {	#:: Servants of the First Witness
		quest::faction(508, $change_amount);
	}
	if ($text=~/\b509\b/) {	#:: Asylum of Anguish
		quest::faction(509, $change_amount);
	}
	if ($text=~/\b510\b/) {	#:: dubious
		quest::faction(510, $change_amount);
	}
	if ($text=~/\b511\b/) {	#:: dubious-storms
		quest::faction(511, $change_amount);
	}
	if ($text=~/\b512\b/) {	#:: Fishlord_KoS
		quest::faction(512, $change_amount);
	}
	if ($text=~/\b513\b/) {	#:: Scout_Guke
		quest::faction(513, $change_amount);
	}
	if ($text=~/\b514\b/) {	#:: Dark_Reign_Guard
		quest::faction(514, $change_amount);
	}
	if ($text=~/\b515\b/) {	#:: Dirtdigger Goblins
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
