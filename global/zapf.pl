sub EVENT_SPAWN {
	my $min = 1;
	my $range = 4;
	my $randomspawn = int(rand($range)) + $min;
	plugin::RandomRoam(250, 250);
	quest::settimer(1,$randomspawn);
}
	
sub EVENT_TIMER {
	plugin::RandomRoam(250, 250);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello $name! Don't let my little friend fool you--he is quite powerful!");
	}
	if ($text=~/train/i) {
		Train();
	}
}

sub Train {
	$client->Message(15,"Your experiences across the realm have infused you with increased power and knowledge..." );

	$CanSkill = sub { $client->CanHaveSkill(shift) };
	$MaxSkill = sub { $client->MaxSkill( shift, $class, $ulevel ) };
	$RawSkill = sub { $client->GetRawSkill(shift) };
	$SetSkill = sub { $client->SetSkill( shift, shift ) };

	#:: set all available skills to maximum for class at current level
	foreach my $skillNum ( 0 .. 42, 48 .. 74 ) {
		next unless $CanSkill->($skillNum);
		my $maxVal = $MaxSkill->($skillNum);
		next unless $maxVal > $RawSkill->($skillNum);
		$SetSkill->( $skillNum, $maxVal );
	}

	#:: if client is a caster and can specialize
	if ( $CanSkill->(43) ) {
		#:: get current raw value for all spell-casting spec skills
		my %spec = map { $_ => $RawSkill->($_) } ( 43 .. 47 );

		#:: if one spell-casting spec skill is above 50, set it to the max value for the client's current level
		if ( my $main = first { $spec{$_} > 50 } keys %spec ) {
			$SetSkill->( $main, $MaxSkill->($main) );
			delete $spec{$main};
		}
		#:: set spell-casting spec skills to max value for client's current level--all skill levels but the first one that goes over 50 are capped at 50
		foreach my $skillNum ( keys %spec ) {
			next if $spec{$skillNum} == 50;
			my $maxVal = $MaxSkill->($skillNum);
			$SetSkill->( $skillNum, $maxVal > 50 ? 50 : $maxVal );
		}
	}
	# scribe all spells for current level
	quest::scribespells( $ulevel, $ulevel );
}
