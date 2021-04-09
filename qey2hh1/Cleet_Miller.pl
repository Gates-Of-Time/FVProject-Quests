sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Howdy, $name. Welcome to Miller's Farmstead. I am Cleet Miller. [Henina] and I own this here field o' crops. 
		Look out if you go a-wandering in the field because there are a bunch of nasty scarecrows who call this farm home and don't like strangers.");
	} elsif($text=~/henina/i) {
		quest::say("Henina is my loving wife of twenty-five years. 
		She is a beautiful woman and the proud mother of five great kids; Cleet Junior, Baobob, Tiny, Chanda, and [Furball]. Henina loves them all very much, even though most of them ain't our natural-born children.");
 	} elsif($text=~/furball/i) {
		quest::say("Furball was just a pup when we saw him tussling with a scarecrow in the fields one day. 
		He was all torn up by the time Tiny chased the 'crow off him. He was hurt bad and couldn't git back to [Blackburrow] 'cause his pa would've killed him for returning a failure. Those [Sabertooths] have some weird and dangerous customs. 
		Henina tended to his wounds and taught him how to behave proper. He gets feisty sometimes, but we love him just the same and he helps out quite a bit on the farm.");
	} elsif($text=~/blackburrow/i) {
		quest::say("Blackburrow is northwest of here. It is home to a tribe of gnolls known as the Sabertooths. Our own son Furball came from there");
	} elsif($text=~/sabertooth/i) {
		quest::say("The Sabertooths of Blackburrow are a bloodthirsty clan of gnolls who claim the Hills of Qeynos as their homeland. The people of [Qeynos] don't exactly respect that claim, o' course.");
	} elsif($text=~/qeynos/i) {
		quest::say("Qeynos is due west of here. It is a fine city, one of the finest humanity has. Although I believe it may be built on ancestral gnoll land as the Sabertooths claim. 
		The Qeynos Hills run along the west coast of Antonica and stretch from North Qeynos in the south to Surefall Glade in the north to the Plains of Karana in the east.");
	}
}

# There are supposed to be []'s for below
#Can't find the quest text for Cleet Junior, Baobob, Tiny, scarecrows, or Shanda