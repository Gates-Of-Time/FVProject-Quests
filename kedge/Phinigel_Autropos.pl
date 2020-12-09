sub EVENT_DEATH {
	$key = "serverprogress";
	if (!quest::get_data($key)) {
		quest::set_data($key, 1);
		$q->CameraEffect(10000, 10, 0, 1);
		quest::we(13, "Cazic Thule shouts, 'Beware all infidels who dare to taint my plane!'");
		$connect = plugin::LoadMysql();
		my $query = "UPDATE `zone` SET `min_status` = '0' WHERE `zoneidnumber` = '72';";
		$query_handle = $connect->prepare($query); 
		$query_handle->execute();
	}
	elsif (quest::get_data($key) eq "1") {
		quest::set_data($key, quest::get_data($key) + 1);
		$q->CameraEffect(10000, 10, 0, 1);
		quest::we(13, "Innoruuk shouts, 'I LIVE! Prepare yourselves, mortals. You will bow before the terrible might of the Prince of Hate!'");
		$connect = plugin::LoadMysql();
		my $query = "UPDATE `zone` SET `min_status` = '0' WHERE `zoneidnumber` = '76';";
		$query_handle = $connect->prepare($query); 
		$query_handle->execute();
	}
	elsif (quest::get_data($key) eq "2") {
		quest::set_data($key, quest::get_data($key) + 1);
		$q->CameraEffect(10000, 10, 0, 1);
		quest::we(13, "Sirran the Lunatic shouts, 'Give me your trinkets, or give me death!'");
		$connect = plugin::LoadMysql();
		my $query = "UPDATE `zone` SET `min_status` = '0' WHERE `zoneidnumber` = '71';";
		$query_handle = $connect->prepare($query); 
		$query_handle->execute();
	}
}
