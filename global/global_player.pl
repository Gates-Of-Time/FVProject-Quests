sub EVENT_ZONE {
	#:: Match if the client has a pet when they trigger the event
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		if ($PetID->Charmed()) {
			#:: Do nothing
		}
		else {
			$PetID->Kill();
		}
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
	#:: Match if the client has a pet when they trigger the event
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		$PetID->Kill();
	}
	if ($name eq "TurmoilToad") {
		quest::playerrace(27);
		quest::playersize(4);
	}
	if ($name eq "Fippy") {
		quest::playerrace(39);
		quest::playersize(5);
		quest::playertexture(2);
	}
	if ($name eq "Sergeant") {
		quest::playerrace(44);
		quest::playersize(6);
		quest::playertexture(1);
		quest::playerfeature("helm", 1);
	}
	if ($name eq "Eru") {
		quest::playerrace(118);
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
			quest::we (257, "-----------------------------------------------------------------------------------------------");
			quest::we (11, "Everyone welcome $name, newly created $race $class!");
			quest::we (257, "-----------------------------------------------------------------------------------------------");
		}
	}
	#:: Post connection info
	else {
		#:: Match non-GM accounts
		if ($status < 1) {
			quest::gmsay("-----------------------------------------------------------------------------------------------", 14, 1);
			quest::gmsay("[GM:] New Connection [IP:".ConvertIP($client->GetIP())."]:", 11, 1);
			if ($uguild_id > 0) {
				my $guildname = quest::getguildnamebyid($uguild_id);
				quest::gmsay("($ulevel $class) $name ($race) <$guildname> ZONE: $zonesn", 11, 1);
			}
			else {
				quest::gmsay("($ulevel $class) $name ($race) <UNGUILDED> ZONE: $zonesn", 11, 1);
			}
			quest::gmsay("Account Name :: [".$client->AccountName()."] --- Status :: [".$status."] --- Client :: [".$clientverhash{$client->GetClientVersionBit()}."]", 11, 1);
			quest::gmsay("-----------------------------------------------------------------------------------------------", 14, 1);
			quest::we(14, "-----------------------------------------------------------------------------------------------");
			quest::we(11, "Say hello to $name, the $race $class, who just got on!");
			quest::we(14, "-----------------------------------------------------------------------------------------------");
		}
		else {
			quest::gmsay("-----------------------------------------------------------------------------------------------", 14, 1);
			quest::gmsay("[GM:] New Connection [IP:".ConvertIP($client->GetIP())."]:", 11, 1);
			if ($uguild_id > 0) {
				my $guildname = quest::getguildnamebyid($uguild_id);
				quest::gmsay("($ulevel $class) $name ($race) <$guildname> ZONE: $zonesn", 11, 1);
			}
			else {
				quest::gmsay("($ulevel $class) $name ($race) <UNGUILDED> ZONE: $zonesn", 11, 1);
			}
			quest::gmsay("Account Name :: [".$client->AccountName()."] --- Status :: [".$status."] --- Client :: [".$clientverhash{$client->GetClientVersionBit()}."]", 11, 1);
			quest::gmsay("-----------------------------------------------------------------------------------------------", 14, 1);
		}
	}
}

sub EVENT_WARP {
	quest::unique_spawn(927, 0, 0, $x, $y, $Z);
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

sub EVENT_LEVEL_UP {
    if (!quest::is_current_expansion_classic()) {
        $key = $name . "-discs-original-grant";
        if (!quest::get_data($key)) {
            quest::set_data($key, 1);
            #:: Train all disciplines
            quest::traindiscs($ulevel, 0);
        }
        else {
            #:: Train all disciplines, maximum set to player's level, minimum set to the level prior
            quest::traindiscs($ulevel, $ulevel - 1);
        }
    }
}

# Sub to handle Kunark evac spell limitations untill velious
sub KunarkEvacHandling {
	if (quest::is_current_expansion_the_ruins_of_kunark()) {
		if($zoneid != 105 # charasis 
			&& $zoneid != 103 # chardok 
			&& $zoneid != 90 # cityofmist 
			&& $zoneid != 104 # dalnir 
			&& $zoneid != 81 # droga 
			&& $zoneid != 88 # kaseora 
			&& $zoneid != 102 # karnor 
			&& $zoneid != 97 # kurn 
			&& $zoneid != 107 # nurga 
			&& $zoneid != 89 # sebilis 
			) {
				$client->Message(13,"Your portal is too unstable, and collapses. You sense that this is not the place to cast this spell.");
				# Interrupt manually
				$client->Duck();
				$client->Stand();
				
				#$client->InterruptSpell();
				#$mob->InterruptSpell();
		}
    }
}

sub EVENT_CAST_BEGIN {
	#:: Wind of the North
	if ($spell_id == 1736) {
		KunarkEvacHandling()
	}

	#:: Wind of the South
	if ($spell_id == 1737) {
		KunarkEvacHandling()
	}

	#:: Tishan's Relocation
	if ($spell_id == 1738) {
		KunarkEvacHandling()
	}

	#:: Markar's Relocation
	if ($spell_id == 1739) {
		KunarkEvacHandling()
	}
}
