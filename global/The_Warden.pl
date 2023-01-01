my $jailX;
my $jailY;
my $jailZ;
my $jailW;

sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers every 480 seconds (8 min)
	quest::settimer("depop", 480);
	#:: Create a proximity, 150 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 75, $x + 75, $y - 75, $y + 75, $z - 50, $z + 50, 0);
	$jailX = $npc->GetX();
	$jailY = $npc->GetY();
	$jailZ = $npc->GetZ();
	$jailW = $npc->GetHeading();
	my @clist = $entity_list->GetClientList();
	foreach my $c (@clist) {
		if ($c->CalculateDistance($x, $y, $z) < 150) {
			my $random = int(rand(4)) + 1;
			if ($random == 1) {
				DoSummonPlayer(10, -10);
			}
			elsif ($random == 2) {
				DoSummonPlayer(-10, 10);
			}
			elsif ($random == 3) {
				DoSummonPlayer(10, 10);
			}
			elsif ($random == 4) {
				DoSummonPlayer(-10, -10);
			}
			my $classplural = "${class}s";
			$client->Message(15, "What we've got here, is a failure to communicate.  Some $classplural you just can't reach.");
			$client->CastSpell(5068, $userid);
		}
	}
}

sub EVENT_EXIT {
	my $random = int(rand(4)) + 1;
	if ($random == 1) {
		DoSummonPlayer(10, -10);
	}
	elsif ($random == 2) {
		DoSummonPlayer(-10, 10);
	}
	elsif ($random == 3) {
		DoSummonPlayer(10, 10);
	}
	elsif ($random == 4) {
		DoSummonPlayer(-10, -10);
	}
	my $classplural = "${class}s";
	$client->Message(15, "What we've got here, is a failure to communicate.  Some $classplural you just can't reach.");
	$client->CastSpell(5068, $userid);
}

sub EVENT_TIMER {
	#:: Match timer 'depop'
	if ($timer eq "depop") {
		quest::say("Don't let me catch you doing that again or I will drag you into the Realms of Discord!");
		quest::depop();
	}
}

sub DoSummonPlayer {
	my ($modX, $modY) = @_;
	$instanceId = $client->GetInstanceID();
	if ($client->GetInstanceID() > 0) {
		$client->MovePCInstance($zoneid, $instanceId, $jailX + $modX, $jailY + $modY, $jailZ, $jailW);
	}
	else {
		$client->MovePC($zoneid, $jailX + $modX, $jailY + $modY, $jailZ, $jailW);
	}
}