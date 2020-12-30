sub EVENT_SLAY {
	quest::shout("I feel your rage as your body fights for life. You feed me well! My children, your father protects you, praise to him!");
}

sub EVENT_DEATH_COMPLETE {
	quest::shout("This is no victory, mortals! We shall meet again, and I WILL exact my revenge.");
}
