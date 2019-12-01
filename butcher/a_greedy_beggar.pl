#:: Create a scalar to store an entity ID
my $FollowTarget;

sub EVENT_AGGRO {
	quest::say("Guards! Guards! Help me!!")
}

sub EVENT_SAY {
	#:: Match if FollowTarget is not defined (nobody has triggered a follow event yet)
	if (!$FollowTarget) {
		quest::say("Hello there $name. I don't suppose you can spare some coins? I'm just a poor halfling that is far away from home. I can't afford anything to eat or drink. Anything you can offer me will be of help.");
		$FollowTarget = $userid;
		#:: Set a timer to loop every 5 seconds
		quest::settimer("follow", 5);
		#:: Set appearance to Stand
		$npc->SetAppearance(0);
	}
}

sub EVENT_TIMER {
	#:: Match timer "follow"
	if ($timer eq "follow") {
		#:: Match if FollowTarget is defined (someone triggered a follow event)
		if ($FollowTarget) {
			#:: Create a scalar variable to store the following target by entity ID
			my $FollowingTarget = $entity_list->GetClientByID($FollowTarget);
			#:: Match if our target is not null
			if ($FollowingTarget) {
				#:: Follow the target who triggered the follow event
				quest::follow($FollowingTarget);
			}
			#:: Match if we the target was defined, but is no longer on the entity list
			else {
				undef $FollowTarget;
				#:: Return to spawn point
				quest::moveto(2407, 1482, -0.25, 331, 1);
			}
		}
		#:: Match if no follow target is defined
		else {
			#:: Match if back at spawn point
			if ($x == 2407 && $y == 1482) {
				#:: Set appearance to Feign Death
				$npc->SetAppearance(3);
				#:: Cleanup the timer "follow"
				quest::stoptimer("follow");
			}
		}
	}
}


sub EVENT_ITEM {
	if (!$FollowTarget) {
		quest::say("Oh thank you . You are too kind to this poor halfling. Do you have anything else to give me?");
		$FollowTarget = $userid;
		#:: Set a timer to loop every 5 seconds
		quest::settimer("follow", 5);
		#:: Set appearance to Stand
		$npc->SetAppearance(0);
	}
}
