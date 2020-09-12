sub EVENT_SPAWN {
	#:: Create a proximity 400 units across, without proximity say
	quest::set_proximity($x - 200, $x + 200, $y - 200, $y + 200, $z - 200, $z + 200, 0);
	#:: Create a HP event at 96 percent health
	quest::setnexthpevent(96);
}

sub EVENT_AGGRO {
	#:: Create a timer 'leash' that triggers every second
	quest::settimer("leash", 1);
}

sub EVENT_HP {
	#:: Stop the timer 'leash' from triggering
	quest::stoptimer("leash");
	#:: Trigger EVENT_AGGRO subroutine to makue sure the timer is running
	EVENT_AGGRO();
	#:: Set another HP event to catch any HP loss
	quest::setnexthpevent(int($npc->GetHPRatio())-9);
}

sub EVENT_ENTER {
	if (($ulevel >= 53) && ($status < 80)) {
		quest::echo(0, "I will not fight you, but I will banish you!");
		#:: Move player to Lavastorm (27) at the specified coordinates, facing North
		$client->MovePC(27, -64, 262, -93.96, 0);
	}
}

sub EVENT_TIMER {
	#:: Match timer 'leash'
	if ($timer eq "leash") {
		if ($x < -1000 || $x > -650 || $y < -1500 || $y > -1290) {
			#:: Trigger WIPE_AGGRO subroutine
			WIPE_AGGRO();
		}
		my @hate_list = $npc->GetHateList();
		my $hate_count = @hate_list;
		if ($hate_count > 0) {
			foreach $ent (@hate_list) {
				my $h_ent = $ent->GetEnt();
				if ($h_ent->IsClient()) {
					if ($h_ent->GetLevel() > 52) {
						quest::ze(0, "I will not fight you, but I will banish you!");
						#:: Move player to Lavastorm (27) at the specified coordinates, facing North
						$h_ent->CastToClient()->MovePC(27, -64, 262, -93.96, 0);
					}
				}
			}
		} 
		else {
			#:: Trigger WIPE_AGGRO subroutine
			WIPE_AGGRO();
		}
	}
}

sub WIPE_AGGRO {
	$npc->BuffFadeAll();
	$npc->WipeHateList();
	$npc->SetHP($npc->GetMaxHP());
	$npc->GMMove($npc->GetSpawnPointX(), $npc->GetSpawnPointY(), $npc->GetSpawnPointZ(), $npc->GetSpawnPointH());
	#:: Stop the timer 'leash' from triggering
	quest::stoptimer("leash");
	#:: Create a HP event at 96 percent health
	quest::setnexthpevent(96);
}

sub EVENT_KILLED_MERIT {
	#:: Key a data bucket for all group members
	$key = $client->CharacterID() . "-" . $npc->GetCleanName();
	#:: Match if data bucket does not exist
	if (!quest::get_data($key)) {
		quest::set_data($key, 1);
	}
	else {
		quest::set_data($key, quest::get_data($key) + 1);
	}
	#:: Display an emote message to each client in yellow to notify them that they received credit
	$client->Message(15, "You have received credit for killing " . $npc->GetCleanName() . ".");
	quest::enabletitle(105);
}
