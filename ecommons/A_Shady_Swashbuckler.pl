sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name, thanks for stopping by my shop.  Perhaps you'd be interested in something ...rare?");
		
		my $accountID = 0;
		my $karma = 0;

		#:: Key a data bucket
		$key = $client->AccountID() . "-karma";

		#:: Match if key does not exist
		if (!quest::get_data($key)) {
			$accountID = $client->AccountID();
			$connect = plugin::LoadMysql();
			my $query_karma = "SELECT karma FROM account WHERE id = '$accountID';";
			$karma_query_handle = $connect->prepare($query_karma);
			$karma_query_handle->execute();
			
			while (@account_row = $karma_query_handle->fetchrow_array()) {
				$karma = $account_row[0];
			}

			quest::set_data($key, $karma);

			$client->AddCrystals(quest::get_data($key), 0);
		}
		else {
			$accountID = $client->AccountID();
			$connect = plugin::LoadMysql();
			my $query_karma = "SELECT karma FROM account WHERE id = $accountID;";
			$karma_query_handle = $connect->prepare($query_karma);
			$karma_query_handle->execute();
			
			while (@account_row = $karma_query_handle->fetchrow_array()) {
				$karma = $account_row[0];
			}

			my $total_crystals = quest::get_data($key);
			my $award_crystals = $karma - $total_crystals;

			$client->AddCrystals($award_crystals, 0);
			quest::set_data($key, $karma);
		}
	}
}
