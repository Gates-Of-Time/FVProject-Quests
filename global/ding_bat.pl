my $InstanceID = 0;
my @Data = undef;
my @ZoneArray =
	(
		"The Warrens",
		"Kurns Tower",
		"Paludal Caverns",
		"Permafrost",
		"Crystal Caverns",
		"Gulf of Gunthak",
		"Dulak Harbor",
		"Velketor's Labyrinth",
		"The Deep",
		"Acrylia Caverns",
		"Veksar",
		"Splitpaw",
		"Vex Thal"
	);

sub EVENT_SAY {
	my $NPCName = $npc->GetCleanName();
	if ($text=~/hail/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			#:: Match if the person talking is the focus of our attention
			if (quest::get_data($key) eq "$name") {
				$client->Message(315, "$NPCName says, 'Hello, $name.  Are you interested in a [" . quest::saylink("teleport") . "]?'");
			}
			#:: Match if the person talking rudely interrupted
			else {
				$Name = quest::get_data($key);
				quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
			}
		}
		else {
			#:: Set the data bucket
			quest::set_data($key, $name);
			$client->Message(315, "$NPCName says, 'Hello, $name.  Are you interested in a [" . quest::saylink("teleport") . "]?'");
		}
	}
	elsif ($text=~/gone/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "cool-down";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Give me a minute, $name.  I seem to keep losing people.");
		}
		else {
			#:: Protect gone from switching for 60 seconds
			quest::set_data($key, 1, 60);
			#:: Key a data bucket to protect functions
			$key = $npc->GetCleanName() . "current-name";
			#:: Set the data bucket
			quest::set_data($key, $name);
			$client->Message(315, "$NPCName says, 'Well then, $name...are you interested in a [" . quest::saylink("teleport") . "]?'");
		}
	}
	elsif ($text=~/teleport/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			#:: Speak the elements of the zone array
			my $count = 1;
			my $n = 0;
			while ($ZoneArray[$n]) {
				if ($ZoneArray[$n]) {
					my $ZoneName = quest::saylink($ZoneArray[$n]);
					$client->Message(315, "$NPCName says, 'Would you like to go to $ZoneName?'");
				}
				$n++;
				$count++;
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bThe Warrens\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("warrens", 101, -920, 745, -38);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bKurns Tower\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("kurns", 97, 73.50, -275.55, 2.19);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bPaludal Caverns\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("paludal", 156, 1178.15, -1512.58, -364.15);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bPermafrost\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("permafrost", 73, 61.00, -121.00, 3.75);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bCrystal Caverns\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("crystal", 121, 461.43, 232.03, -77.77);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bGulf of Gunthak\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("gunthak", 224, -938.00, 1461.00, 15.03);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bDulak Harbor\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("dulak", 225, 434.22, 540.98, 3.75);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bVelketor's Labyrinth\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("velketor", 112, -124.21, 533.44, -162.81);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bThe Deep\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("deep", 164, -655.54, -384.20, -60.25);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bAcrylia Caverns\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("acrylia", 154, -666.21, 9.01, 3.75);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bVeksar\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("veksar", 109, 1.00, -486.00, -27.87);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif($text=~/\bSplitpaw\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("paw", 18, -60.61, -8.70, -2.18);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/\bVex Thal\b/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			@Data = undef;  
			@Data = ("vexthal", 158, -1198.57, 382.99,-41.62);
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket does not exist
			if (!quest::get_data($key)) {
				#:: Set a data bucket to track player instance
				quest::set_data($key, "$Data[0]", 86400);
				#:: Update the InstanceID variable
				$InstanceID = $charid;
				#:: Create the Instance
				quest::CreateInstance("$Data[0]", $InstanceID, 86400);
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if the data bucket exists for this zone shortname
			elsif (quest::get_data($key) eq "$Data[0]") {
				$client->Message(315, "$NPCName says, 'Alright, $name.  Please tell me when you are ready to [" . quest::saylink("go") . "].'");
			}
			#:: Match if no data bucket exists
			else {
				$CharInstance = quest::get_data($key);
				$client->Message(315, "$NPCName says, 'Sorry $name, but it looks like you already have an instance for" . $CharInstance . ". Would you like to [" . quest::saylink("delete") . "] it for 500 AAs?'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
	elsif ($text=~/go/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket exists and matches zone data
			if (quest::get_data($key) eq "$Data[0]") {
				DoTeleport();
			}
			else {
				$client->Message(315, "$NPCName says, 'I am sorry, $name...I seem to have lost my train of thought.  Where did you want to go again?");
				#:: Speak the elements of the zone array
				my $count = 1;
				my $n = 0;
				while ($ZoneArray[$n]) {
					if ($ZoneArray[$n]) {
						my $ZoneName = quest::saylink($ZoneArray[$n]);
						$client->Message(315, "$NPCName says, 'Would you like to go to $ZoneName?'");
					}
					$n++;
					$count++;
				}
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}

	}
	elsif ($text=~/delete/i) {
		#:: Key a data bucket to protect functions
		$key = $npc->GetCleanName() . "current-name";
		#:: Match if the person talking is the focus of our attention
		if (quest::get_data($key) eq "$name") {
			#:: Key a data bucket to check for existing instances
			$key = $client->CharacterID() . "-active-instance";
			#:: Match if the data bucket exists
			if (quest::get_data($key)) {
				#:: Destroy the data bucket
				quest::delete_data($key);
				$client->Message(315, "$NPCName says, 'Easy come, easy go, right $name?  You are now free to [" . quest::saylink("teleport") . "] wherever you would like to go.'");
			}
			else {
				$client->Message(315, "$NPCName says, 'You have no instances, $name.  You are free to [" . quest::saylink("teleport") . "] wherever you would like to go.'");
			}
		}
		#:: Match if the person talking rudely interrupted
		else {
			$Name = quest::get_data($key);
			quest::say("I am sorry, $name, but I was right in the middle of speaking with " . $Name . ".  Is " . $Name . " [" . quest::saylink("gone") . "]?");
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub DoTeleport {
	quest::say("Zone: " . $Data[0] . ", Instance ID: $InstanceID, Zone ID: " . $Data[1] . ", X: " . $Data[2] . ", Y: " . $Data[3] . ", Z: " . $Data[4] . ".");
	#:: Assign to an instance
	quest::AssignToInstance($InstanceID);
	#:: Create a scalar variable to store client Raid information
	$raid = $entity_list->GetRaidByClient($client);
	#:: Create a scalar variable to store client Group information
	$group = $entity_list->GetGroupByClient($client);
	#:: Match if the player is in a Raid
	if ($raid) {
		#:: Loop through each member of the Raid
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			#:: Create a scalar variable to store the Raid's member count
			$pc = $raid->GetMember($count);
			#:: Match if the Raid member is near the client who triggered the event
			if ($pc->CalculateDistance($x,$y,$z) <= 150) {
				#:: Assign to the instance
				quest::AssignToInstance($InstanceID);
				#:: Move the Raid member to the specified location
				$pc->MovePCInstance($Data[1], $InstanceID, $Data[2], $Data[3], $Data[4], 0);
			}
		}
	}
	#:: Match if the player is in a Group
	elsif ($group) {
		#:: Loop through each member of the Group
		for ($count = 0; $count < $group->GroupCount(); $count++) {
			#:: Create a scalar variable to store the Group's member count
			$pc = $group->GetMember($count);
			#:: Match if the Group member is near the client who triggered the event
			if ($pc->CalculateDistance($x,$y,$z) <= 150) {
				#:: Assign to the instance
				quest::AssignToInstance($InstanceID);
				#:: Move the Group member to the specified location
				$pc->MovePCInstance($Data[1], $InstanceID, $Data[2], $Data[3], $Data[4], 0);
			}
		}
	}
	#:: Move the client who triggered the event to the specified location
	$client->MovePCInstance($Data[1], $InstanceID, $Data[2], $Data[3], $Data[4], 0);
	#:: Key a data bucket to protect functions
	$key = $npc->GetCleanName() . "current-name";
	#:: Destroy the data bucket
	quest::delete_data($key);
}
