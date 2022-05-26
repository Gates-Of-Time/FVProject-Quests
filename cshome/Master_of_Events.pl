sub EVENT_SAY {
	if($text=~/hail/i){
		quest::say("Master of Events is my name, joyous events is my game!");
		quest::say("Currently I can [start] or [stop] these events, [Happy Birthday], [Mother's Day], [Independence Day], [Oktoberfest] and [Thanksgiving].");
	}
	elsif($text=~/start/i){
		if($text=~/Happy Birthday/i){
			quest::set_content_flag("Events_Happy_Birthday", 1);
			quest:say("'Happy Birthday' enabled, server restart required to effect.");
		}
		elsif($text=~/Mother's Day/i){
			quest::set_content_flag("Events_Happy_Birthday", 1);
			quest:say("'Mother's Day' enabled, server restart required to effect.");
		}
		elsif($text=~/Independence Day/i){
			quest::set_content_flag("Events_Happy_Birthday", 1);
			quest:say("'Independence Day' enabled, server restart required to effect.");
		}
		elsif($text=~/Oktoberfest/i){
			quest::set_content_flag("Events_Happy_Birthday", 1);
			quest:say("'Oktoberfest' enabled, server restart required to effect.");
		}
		elsif($text=~/Thanksgiving/i){
			quest::set_content_flag("Events_TurkeyQuest", 1);
			quest:say("'Thanksgiving' enabled, server restart required to effect.");
		}
	}
	elsif($text=~/stop/i){
		if($text=~/Happy Birthday/i){
			quest::set_content_flag("Events_Happy_Birthday", 0);
			quest:say("'Happy Birthday' disabled, server restart required to effect.");
		}
		elsif($text=~/Mother's Day/i){
			quest::set_content_flag("Events_Happy_Birthday", 0);
			quest:say("'Mother's Day' disabled, server restart required to effect.");
		}
		elsif($text=~/Independence Day/i){
			quest::set_content_flag("Events_Happy_Birthday", 0);
			quest:say("'Independence Day' disabled, server restart required to effect.");
		}
		elsif($text=~/Oktoberfest/i){
			quest::set_content_flag("Events_Happy_Birthday", 0);
			quest:say("'Oktoberfest' disabled, server restart required to effect.");
		}
		elsif($text=~/Thanksgiving/i){
			quest::set_content_flag("Events_TurkeyQuest", 0);
			quest:say("'Thanksgiving' disabled, server restart required to effect.");
		}
	}
}
