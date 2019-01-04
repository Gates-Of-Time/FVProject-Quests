sub EVENT_ZONE {
	#:: Figure out if the player has a pet and blow it up when they leave a zone
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		$PetID->Kill();
	}	
}

sub EVENT_ENTERZONE {
	#:: Set common tongue to 1 for any new player that is not human
	if ($race ne "Human") {
		if (!defined $qglobals{"newbiecommon"}) {
			$client->SetLanguageSkill(0, 1);
			quest::setglobal("newbiecommon", 1, 5, "F");
		}
	}
	#:: Figure out if the player has a pet and blow it up when they enter a zone
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		$PetID->Kill();
	}
}

sub EVENT_CONNECT {
	my %clientverhash = (
		1	=>	"P99",
		2	=>	"Ti",
		4	=>	"SoF",
		8	=>	"SoD",
		16	=>	"UF",
		32	=>	"RoF",
		64	=>	"RoF2",
	);
	#:: Post new account data
	if (!defined $qglobals{"firstwelcome"}) {
		quest::setglobal("firstwelcome",1,5,"F");
		if ($status < 255) {
			quest::gmsay ("-----------------------------------------------------------------------------------------------", 257, 1);
			quest::gmsay ("[GM:] <$name> newly created toon, checking IP linked characters:", 11, 1);
			quest::gmsay ("-----------------------------------------------------------------------------------------------", 11, 1);
			my $dbh = plugin::LoadMysql();
			my $sth = $dbh->prepare("
				SELECT accid, name
				FROM account_ip
				INNER JOIN character_data
				ON account_ip.accid = character_data.account_id
				WHERE account_ip.ip = ?
			");
			$sth->bind_param(1,ConvertIP($client->GetIP()));
			$sth->execute();
			while (my @row = $sth->fetchrow_array()) {
				my ($account_id, $playername ) = @row;
				quest::gmsay ("    Account ID: ".$account_id." --- Name: ".$playername."", 11, 1);
			}
			$sth->finish();
			$dbh->disconnect();
			quest::gmsay ("-----------------------------------------------------------------------------------------------", 257, 1);
		}
	}
	#:: Post connection info
	else {
		quest::gmsay ("-----------------------------------------------------------------------------------------------", 14, 1);
		quest::gmsay ("[GM:] New Connection [IP:".ConvertIP($client->GetIP())."]:", 11, 1);
		if ($uguild_id > 0) {
			my $guildname = quest::getguildnamebyid($uguild_id);
			quest::gmsay("($ulevel $class) $name ($race) <$guildname> ZONE: $zonesn", 11, 1);
		}
		else {
			quest::gmsay("($ulevel $class) $name ($race) <UNGUILDED> ZONE: $zonesn", 11, 1);
		}
		quest::gmsay ("Account Name :: [".$client->AccountName()."] --- Status :: [".$status."] --- Client :: [".$clientverhash{$client->GetClientVersionBit()}."]", 11, 1);
		quest::gmsay ("-----------------------------------------------------------------------------------------------", 14, 1);
	}
}


sub EVENT_SAY {
	if ($text=~/hail/i && $faction <= 4 && $combat == 0 ) {
		my %classInsults = (
			"Enchanter" => [ "Your spells are as bad as your breath!", "Learn all the magic you want, not even a Charm spell could get YOU laid.", "I can see why you chose to be an enchanter--you wouldn't make a single copper as a prostitute." ],
			"Necromancer" => [ "So are you the victim of some cruel curse or have you always looked like that?", 'zombie groper', "I'd like to say I'm glad you’re here; I'd like to say it." ],
			"Paladin" => [ "Hey, it's Sir Clanksalot!", "Are you compensating for something with that big weapon?", "What are you, Paladin of the god of ugliness?" ],
			"Ranger" => [ "It is good to see a willing sacrifice walking freely.", "I am sure you'll be fine for ressurection practice.", "Someday you'll find yourself, and will you be disappointed."],
			"Rogue" => [ "Oh look--your weapons are so tiny!", "Oh, I'm sorry, with all your backstabbing I mistook you for a rogue.", "Why don't you hide and sneak away from me?" ],
			"Shadowknight" => [ "That's a pretty big weapon! Are you compensating for something?", "Oh, that's your face? I mistook it for a gangrenous wound.", "Were you born or defecated?" ],
			"Warrior" => [ "I see that your reservoir of courage is fed by the tributary running down your leg!", "I think you owe the blacksmith who made your weapon an apology!", "I wish we were better strangers." ],
			"Wizard" => [ "Your spells are as bad as your breath!", "Someone should have given you a few more intelligence points!", "Someday you'll go far, and I hope you stay there." ]
		);
		my $insult;
		if (exists($classInsults{$class}[0])) {
			$insult = $classInsults{$class}[int(rand 3)];
		}
		else {
			$insult = "Your mother is so fat she absorbed a gelatinous cube";
		}
		quest::say($insult);
	}	
	if ($status >= 80) {
		plugin::Doors_Manipulation_EVENT_SAY();
		if ($text=~/#linked/i) {
			if ($client->GetTarget()->IsClient()) {
				$client->Message(11, "-------------------------------------------------------------------------");
				$client->Message(11, "[GM:] Showing Linked Accounts for Targetted Player");
				$client->Message(11, "-------------------------------------------------------------------------");
				my $dbh = plugin::LoadMysql();
				my $sth = $dbh->prepare("
					SELECT accid, name
					FROM account_ip
					INNER JOIN character_data
					ON account_ip.accid = character_data.account_id
					WHERE account_ip.ip = ?
				");
				$sth->bind_param(1,ConvertIP($client->GetTarget()->CastToClient->GetIP()));
				$sth->execute();
				while (my @row = $sth->fetchrow_array()) {
					my ($account_id, $playername ) = @row;
					quest::gmsay ("    Account ID: ".$account_id." --- Name: ".$playername."", 11, 1);
				}
				$sth->finish();
				$dbh->disconnect();
			}
			else {
				$client->Message(15, "[GM:] You MUST target a PLAYER to use this command!");
			}
		}
		elsif ($text=~/#getaway/i) {
			@zoneclients = $entity_list->GetClientList();
			foreach $singleclient (@zoneclients) {
				if (($singleclient->AccountID() != $client->AccountID()) && (not $singleclient->GetGM())) {
					$singleclient->BuffFadeBySlot($singleclient->GetBuffSlotFromType(57), 1);
					$singleclient->BuffFadeBySlot($singleclient->GetBuffSlotFromType(58), 1);
					if ($client->CalculateDistance($singleclient->GetX(),$singleclient->GetY(),$singleclient->GetZ()) <= 30) {
						$singleclient->DoKnockback($client, 7, 5);
					}
				}
			}
		}
		elsif ($text=~/#gmwho/i) {
			my %classhash = (
				1 	=> "Warrior",
				2 	=> "Cleric",
				3 	=> "Paladin",
				4 	=> "Ranger",
				5 	=> "Shadow Knight",
				6 	=> "Druid",
				7 	=> "Monk",
				8 	=> "Bard",
				9 	=> "Rogue",
				10	=> "Shaman",
				11	=> "Necromancer",
				12	=> "Wizard",
				13	=> "Magician",
				14	=> "Enchanter",
				15	=> "Beastlord",
				16	=> "Berserker",
			);
			my %racehash = (
				1	=>	"Human",
				2	=>	"Babarian",
				3	=>	"Erudite",
				4	=>	"Wood Elf",
				5	=>	"High Elf",
				6	=>	"Dark Elf",
				7	=>	"Half Elf",
				8	=>	"Dwarf",
				9	=>	"Troll",
				10	=>	"Ogre",
				11	=>	"Halfling",
				12	=>	"Gnome",
				128	=>	"Iksar",
				130	=>	"Vah Shir",
				330	=>	"Froglok",
			);
			my %clientversionhash = (
				1	=>	"P99",
				2	=>	"Tit",
				4	=>	"SoF",
				8	=>	"SoD",
				16	=>	"UF",
				32	=>	"RoF",
				64	=>	"RoF2",
			);
			$client->Message (11, "----------------------------------------");
			$client->Message (11, "[GM:] Players in Zone:");
			$client->Message (11, "----------------------------------------");
			my @clientsarray = $entity_list->GetClientList();
			foreach my $singleclient (@clientsarray) {
				my $clientguildname;
				if (quest::getguildnamebyid($singleclient->GuildID())) {
					$clientguildname = "".quest::getguildnamebyid($singleclient->GuildID())."";
				} 
				else { 
					$clientguildname = "NG"; 
				}
				my $wholist =	"[".$singleclient->GetLevel()." ".plugin::customclass($singleclient->GetClass(),$singleclient->GetDeity()).
								"] ".$singleclient->GetName()." (".$classhash{$singleclient->GetClass()}.") (".
								$racehash{$singleclient->GetRace()}.") <".$clientguildname."> [IP: ".ConvertIP($singleclient->GetIP())."] ".
								"[Client: ".$clientversionhash{$client->GetClientVersionBit()}."]";
				$client->Message (11, "".$wholist."");
			}
			$client->Message (11, "-------------------------------------------------------------------");
			$client->Message (11, "There are ".scalar (@clientsarray)." players in zone!");
		}
	}
}

sub ConvertIP {
	my $longip = $_[0];
	$firstoctet = $longip % 256;
	$longip -= $firstoctet;
	$longip /= 256;
	$secondoctet = $longip % 256;
	$longip -= $secondoctet;
	$longip /= 256;
	$thirdoctet = $longip % 256;
	$longip -= $thirdoctet;
	$longip /= 256;
	my $convertedip = "$firstoctet.$secondoctet.$thirdoctet.$longip";
	return $convertedip;
}
