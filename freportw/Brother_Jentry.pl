sub EVENT_SIGNAL {
	#:: Signal sent by freportw/Sir_Lucan_D-Lere.pl
	my $victim = $entity_list->GetClientByCharID($signal);
	my $vname = $victim->GetCleanName();
	quest::attack($vname);
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
