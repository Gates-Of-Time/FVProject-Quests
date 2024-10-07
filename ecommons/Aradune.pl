sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Greetings, $name. I am in need of spells from the lost tomes. If you bring me any two spells from these tomes, I will give you a different spell in return. Rest assured, the spell I offer will not be one you have handed me.");
  }
}

sub EVENT_ITEM {
  # List of acceptable spell item IDs
  my @spell_ids = (19216, 19218, 19221, 19227, 19246, 19247, 19250, 19252, 19253, 19275, 19277, 19278, 19280, 19281, 19302, 19303, 19305, 19307, 19328, 19330, 19331, 19332, 19335, 19336, 19339, 19348, 19360, 19361, 19363, 19364, 19387, 19388, 19389, 19391, 19393, 19395, 19396, 19410, 19411, 19413, 19416, 19417, 19419, 19424);

  my %spell_ids = map { $_ => 1 } @spell_ids;

  # Initialize variables
  my %handed_in_spells = ();
  my $total_spells = 0;

  # Process each item handed in
  foreach my $item_id (keys %itemcount) {
    if (exists $spell_ids{$item_id}) {
      $handed_in_spells{$item_id} = $itemcount{$item_id};
      $total_spells += $itemcount{$item_id};
    }
  }

  if ($total_spells == 2) {
    # Remove the items
    plugin::takeItems(%handed_in_spells);

    # Get the item IDs of the handed in spells
    my @excluded_spells = keys %handed_in_spells;

    # Create a list of possible spells to give
    my %exclude = map { $_ => 1 } @excluded_spells;
    my @available_spells = grep { !$exclude{$_} } @spell_ids;

    # Randomly select one spell from available_spells
    my $random_spell = $available_spells[int(rand(scalar @available_spells))];

    # Give the spell to the player
    quest::summonitem($random_spell);

    quest::say("Here is your new spell, $name. Use it wisely.");
  }
  else {
    quest::say("These items are not what I seek. Please bring me any two spells from the lost tomes.");
    plugin::returnUnusedItems();
  }
}
