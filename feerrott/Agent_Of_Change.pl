my $LockoutTime = 86400;

sub EVENT_SAY {
        if ($text=~/hail/i) {
                $raid = $client->GetRaid();
                if ($ulevel < 46) {
			$client->Message(15,"Much to learn you still have… padawan. Return once your power has increased!");
		}
		elsif ($raid > 0) {
                        $key = $name . "-fearplane-instance";
                        if (!quest::get_data($key)) {
                                $key = $name . "-fearplane-raid";
                                if (!quest::get_data($key)) {
                                        $key = $raid->GetID() . "-fearplane-raid";
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
                                        $key = $raid->GetID() . "-fearplane-raid";
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
                                $key = $name . "-fearplane-raid";
                                if (!quest::get_data($key)) {
                                        $client->Message(15, "Agent of Change says, 'Hello, $name.  It looks like your raid instance expired.  You can rejoin another in $LockoutTime seconds.'");
                                }
                                else {
					$value = quest::get_data($key);
					$key = $raid->GetID() . "-fearplane-raid";
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
                if ($ulevel < 46) {
			$client->Message(15,"Much to learn you still have… padawan. Return once your power has increased!");
		}
		elsif ($raid > 0) {
                        if ($raid->IsLeader($name)) {
                                $key = $name . "-fearplane-instance";
                                if (!quest::get_data($key)) {
                                        $key = $name . "-fearplane-raid";
                                        if (!quest::get_data($key)) {
                                                $key = $raid->GetID() . "-fearplane-raid";
                                                if (!quest::get_data($key)) {
                                                        $Instance = quest::CreateInstance("fearplane", 0, 345600);
                                                        quest::set_data($key, $Instance, 43200);
                                                        $client->Message(15, "Agent of Change says, 'Your instance ( $Instance ) has been created. Let me know when you are [ready] to go to the Plane of Fear.'");
                                                }
                                        }
                                        else {
                                              	$client->Message(15, "Agent of Change says, 'You already have instance. Let me know when you are [ready] to go to the Plane of Fear.'");
                                        }
                                }
                                else {
                                      	$client->Message(15, "Agent of Change says, 'You already have instance. Let me know when you are [ready] to go to the Plane of Fear.'");
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
                if ($ulevel < 46) {
			$client->Message(15,"Much to learn you still have… padawan. Return once your power has increased!");
		}
		elsif ($raid > 0) {
                        $key = $raid->GetID() . "-fearplane-raid";
                        if (!quest::get_data($key)) {
                                $client->Message(15, "Agent of Change says, 'Sorry, but your raid does not have an instance.  Ask your raid leader to make one.'");
                        }
                        else {
                              	$InstanceTime = quest::get_data_expires($key) - time();
                                $Instance = quest::get_data($key);
                                $key = $name . "-fearplane-raid";
                                if (!quest::get_data($key)) {
                                        quest::set_data($key, $raid->GetID(), $InstanceTime);
                                }
                                $key = $name . "-fearplane-instance";
                                if (!quest::get_data($key)) {
                                        quest::set_data($key, $Instance, $LockoutTime);
                                }
                                $client->AssignToInstance($Instance);
                                $client->MovePCInstance(72, $Instance, 1037, -784, 107, 0);
                                plugin::RandomSay(100, "Do not touch any Turmoil Warts!", "Do not pick the boogey, man!", "Pull my finger for a fright!", "Gorgon solo can be stinky.", "I want my shiverback shiverback shiverback...shiverback ribs!", "Does the tentacle tormentor only torment tentacles?", "You better hope TurmoilToad does not have any relatives in there!", "Phobos is a moon from Mars.  Plasm is a mold.  Moon Mold.  You are welcome.", "Eating amygdalin can cause cyanide poisoning.  It is true.", "Samhain existed before Halloween.  Those Pagans.");
                        }
                }
                else {
                        $client->Message(15, "Agent of Change says, 'You must be in a raid before you can join a raid instance.'");
                }
        }
}
