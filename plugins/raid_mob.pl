sub IsRaidMob {
	my $npcid = shift;
	my $connect = plugin::LoadMysql();
	my $query_handle = $connect->prepare("SELECT raid_target from npc_types where id = '" . $npcid . "'");
	$query_handle->execute();
	if ($query_handle->fetchrow() == 1) {
		return 1;
	}
	return 0;
}
