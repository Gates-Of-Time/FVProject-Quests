my $LockoutTime = 604800;

sub EVENT_SAY {
        if ($text=~/hail/i) {
                $raid = $client->GetRaid();
		if ($raid > 0) {
                        $key = $name . "-soldungb-instance";
                        if (!quest::get_data($key)) {
                                $key = $name . "-soldungb-raid";
                                if (!quest::get_data($key)) {
                                        $key = $raid->GetID() . "-soldungb-raid";
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
                                        $key = $raid->GetID() . "-soldungb-raid";
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
                                $key = $name . "-soldungb-raid";
                                if (!quest::get_data($key)) {
                                        $client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid instance expired.  You can rejoin another in $LockoutTime seconds.'");
                                }
                                else {
					$value = quest::get_data($key);
					$key = $raid->GetID() . "-soldungb-raid";
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
                                $key = $name . "-soldungb-instance";
                                if (!quest::get_data($key)) {
                                        $key = $name . "-soldungb-raid";
                                        if (!quest::get_data($key)) {
                                                $key = $raid->GetID() . "-soldungb-raid";
                                                if (!quest::get_data($key)) {
                                                        $Instance = quest::CreateInstance("soldungb", 0, 345600);
                                                        quest::set_data($key, $Instance, 43200);
                                                        $client->Message(15, "Agent of Change says, 'Your instance ( $Instance ) has been created. Let me know when you are [ready] to go to Nagafen's Lair.'");
                                                }
                                        }
                                        else {
                                              	$client->Message(15, "Agent of Change says, 'You already have instance. Let me know when you are [ready] to go to Nagafen's Lair.'");
                                        }
                                }
                                else {
                                      	$client->Message(15, "Agent of Change says, 'You already have instance. Let me know when you are [ready] to go to Nagafen's Lair.'");
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
                        $key = $raid->GetID() . "-soldungb-raid";
                        if (!quest::get_data($key)) {
                                $client->Message(15, "Agent of Change says, 'Sorry, but your raid does not have an instance.  Ask your raid leader to make one.'");
                        }
                        else {
                              	$InstanceTime = quest::get_data_expires($key) - time();
                                $Instance = quest::get_data($key);
                                $key = $name . "-soldungb-raid";
                                if (!quest::get_data($key)) {
                                        quest::set_data($key, $raid->GetID(), $InstanceTime);
                                }
                                $key = $name . "-soldungb-instance";
                                if (!quest::get_data($key)) {
                                        quest::set_data($key, $Instance, $LockoutTime);
                                }
                                $client->AssignToInstance($Instance);
                                $client->MovePCInstance(32, $Instance, -413,-265,-108.84, 0);
                                plugin::RandomSay(100, "You have nice manners for a thief and a liar.", "You seem familiar with my name, but I don't seem to remember smelling you before.", "Who are you and where do you come from, may I ask?", "Well thief! I smell you and I feel your air. I hear your breath. Come along! Help yourself again, there is plenty and to spare!", "I kill where I wish and none dare resist.", "I laid low the warriors of old and their like is not in the world today.");
                        }
                }
                else {
                        $client->Message(15, "Agent of Change says, 'You must be in a raid before you can join a raid instance.'");
                }
        }
}
