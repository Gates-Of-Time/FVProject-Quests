sub EVENT_SAY { 
	if($text=~/Hail/i){
		quest::say("Errrr.  You come for master. learning like me?");
	}
	elsif($text=~/what learning/i){
		quest::say("I am learning ways of skinning and tailoring.  None left but the master so I must learn to help.  For now I only clean the furs.");
	}
	elsif($text=~/i come for learning/i){
		quest::say("I am learning ways of skinning and tailoring.  None left but the master so I must learn to help.  For now I only clean the furs."); 
	}
}
