sub EVENT_SAY {
    if ($text =~ /hail/i) {
        quest::say("Bring me exactly four scrolls for my collection, no more and no less, and you shall be rewarded.");
    }
}

sub EVENT_ITEM {
	# Scroll item ids for spells 59-60 from kunark
	my @valid_inputs = (
		15863,19225,19226,19228,19229,19230,19257,19258,19259,19260,
		19261,19262,19263,19287,19288,19289,19290,19291,19292,19293,
		19310,19311,19312,19313,19314,19340,19341,19342,19343,19344,
		19345,19369,19370,19371,19372,19401,19402,19403,19405,19406,
		19407,19415,19418,19422,19425,19501,30432
	);

	# Scroll item ids for spells 51-54 from kunark that are drops and not recieved from other quests
	my @rewards = (
		19203,19209,19212,19232,19233,19234,19238,19241,19244,
		19264,19269,19272,19294,19296,19299,19315,19318,19319,
		19322,19326,19347,19351,19354,19356,19358,19362,19374,
		19378,19384,19423
	);

	my %valid_lookup = map { $_ => 1 } @valid_inputs;

	my $valid_count = 0;

	# Count valid items only
	foreach my $item_id (keys %itemcount) {
		if ($valid_lookup{$item_id}) {
			$valid_count += $itemcount{$item_id};
		}
	}

	# Must be EXACTLY 4 valid items total
	if ($valid_count == 4) {

		# Remove only valid items (any combination totaling 4)
		plugin::takeItems(%valid_lookup);

		my $reward = $rewards[int(rand(@rewards))];

		quest::say("The scrolls are genuine. Take this as your reward.");
		quest::summonitem($reward);
		return;
	}
	else {
		quest::say("I require exactly four scrolls for my collection. No more. No less.");
		# Return everything on failure
		plugin::returnUnusedItems();
	}
}
