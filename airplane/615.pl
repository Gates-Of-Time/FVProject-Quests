#:: NAME: skel_pet_5_
#:: ID: 615
#:: TYPE: Pet (Skeleton)

sub EVENT_SPAWN {
	#:: Race 69 - Will-O-Wisp
	quest::npcrace(69);
	#:: Pink Will-O-Wisp
	quest::npctexture(1);
	quest::npcsize(4);
}