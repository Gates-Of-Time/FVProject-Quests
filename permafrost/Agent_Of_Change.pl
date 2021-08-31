my $LockoutTime = 604800;

sub EVENT_SAY {
        if ($text=~/hail/i) {
                $raid = $client->GetRaid();
		if ($raid > 0) {
                        $key = $name . "-permafrost-instance";
                        if (!quest::get_data($key)) {
                                $key = $name . "-permafrost-raid";
                                if (!quest::get_data($key)) {
                                        $key = $raid->GetID() . "-permafrost-raid";
                                        if (!quest::get_data($key)) {
                                                if ($raid->IsLeader($name)) {
                                                        $client->Message(15, "Agent of Change says, 'Hello, $name.  Would you like to [create] a raid instance?'");
                                                }
                                                else {
                                                      	$client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid leader needs to create a raid instance.'");
                                                }
                                        }
                                        else {
                                              	$client->Message(15, "Agent of Change says, 'Hello, $name. Let me know when you are [ready] to join the raid instance.'");
                                        }
                                }
                                else {
					my $LockoutTime = quest::get_data_expires($key) - time();
                                        $key = $raid->GetID() . "-permafrost-raid";
                                        if (!quest::get_data($key)) {
						$client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid instance expired.  You can rejoin another in $LockoutTime seconds.'");
	                                }
					else {
	                                      	$client->Message(15, "Agent of Change says, 'Hello, $name.  Let me know when you are [ready] to join the raid instance.'");
					}
                                }
                        }
                        else {
                              	my $LockoutTime = quest::get_data_expires($key) - time();
                                $key = $name . "-permafrost-raid";
                                if (!quest::get_data($key)) {
                                        $client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid instance expired.  You can rejoin another in $LockoutTime seconds.'");
                                }
                                else {
					$value = quest::get_data($key);
					$key = $raid->GetID() . "-permafrost-raid";
					if (!quest::get_data($key)) {
                                                if ($raid->IsLeader($name)) {
                                                        $client->Message(15, "Agent of Change says, 'Hello, $name.  Would you like to [create] a raid instance?'");
                                                }
                                                else {
                                                      	$client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid leader needs to create a raid instance.'");
                                                }
					}
					elsif ($value == quest::get_data($key)) {
	                                      	$client->Message(15, "Agent of Change says, 'Hello, $name.  Let me know when you are [ready] to join the raid.'");
					}
					else {
						$client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid instance expired.  You can rejoin another in $LockoutTime seconds.'");
					}
                                }
                        }
                }
                else {
                      	$client->Message(15, "Agent of Change says, 'You must be in a raid before you can join a raid instance.'");
                }
        }
	elsif ($text=~/create/i) {
                $raid = $client->GetRaid();
		if ($raid > 0) {
                        if ($raid->IsLeader($name)) {
                                $key = $name . "-permafrost-instance";
                                if (!quest::get_data($key)) {
                                        $key = $name . "-permafrost-raid";
                                        if (!quest::get_data($key)) {
                                                $key = $raid->GetID() . "-permafrost-raid";
                                                if (!quest::get_data($key)) {
                                                        $Instance = quest::CreateInstance("permafrost", 0, 345600);
                                                        quest::set_data($key, $Instance, 43200);
                                                        $client->Message(15, "Agent of Change says, 'Your instance ( $Instance ) has been created. Let me know when you are [ready] to go to the Permafrost Caverns.'");
                                                }
                                        }
                                        else {
                                              	$client->Message(15, "Agent of Change says, 'You already have instance. Let me know when you are [ready] to go to the Permafrost Caverns.'");
                                        }
                                }
                                else {
                                      	$client->Message(15, "Agent of Change says, 'You already have instance. Let me know when you are [ready] to go to the Permafrost Caverns.'");
                                }
                        }
                        else {
                              	$client->Message(15, "Agent of Change says, 'Sorry $name, but only a raid leader can create an instance.'");
                        }
                }
                else {
                      	$client->Message(15, "Agent of Change says, 'You must be in a raid before you can join a raid instance.'");
                }
        }
	elsif ($text=~/ready/i) {
                $raid = $client->GetRaid();
		if ($raid > 0) {
                        $key = $raid->GetID() . "-permafrost-raid";
                        if (!quest::get_data($key)) {
                                $client->Message(15, "Agent of Change says, 'Sorry, but your raid does not have an instance.  Ask your raid leader to make one.'");
                        }
                        else {
                              	$InstanceTime = quest::get_data_expires($key) - time();
                                $Instance = quest::get_data($key);
                                $key = $name . "-permafrost-raid";
                                if (!quest::get_data($key)) {
                                        quest::set_data($key, $raid->GetID(), $InstanceTime);
                                }
                                $key = $name . "-permafrost-instance";
                                if (!quest::get_data($key)) {
                                        quest::set_data($key, $Instance, $LockoutTime);
                                }
                                $client->AssignToInstance($Instance);
                                $client->MovePCInstance(73, $Instance, 100, -60, 4, 0);
                                plugin::RandomSay(100, "Have an ice day!", "Variety is the ice of life.", "Once bitten, ice shy!", "Icy what you did there.", "Many are called but few are frozen.", "Are we friends or froze?", "Coughs and freezes spread diseases.", "Money doesn’t grow on freeze.", "Head for the chills!", "Ask a chilly question, get a chilly answer.");
                        }
                }
                else {
                        $client->Message(15, "Agent of Change says, 'You must be in a raid before you can join a raid instance.'");
                }
        }
}
