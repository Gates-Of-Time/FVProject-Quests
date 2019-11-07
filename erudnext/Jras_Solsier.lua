function event_say(e)
	local fac = e.other:GetFaction(e.self);

	if(e.message:findi("hail")) then
		e.self:Say("Welcome to the Temple of Divine Light.  We are the Peacekeepers. followers of Quellious.  If you are a paladin of this temple. you can assist us by showing a desire to [protect the peace].");
	elseif(e.message:findi("protect the peace")) then
		if(fac <= 4) then -- Amiable or better
			e.self:Say("It was a fine decision.  We are in need of your services.  It seems there is a disturbance in Toxxulia Forest.  There are poachers from other nations who have sought to cause turbulence among the creatures there.  Will you help us [catch the poachers] or are you skeptical about this mission?");
		elseif(fac == 5) then -- Indifferent
			e.self:Say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
		else
			e.self:Say("Leave my sight at once! You are no friend to the Peacekeepers of the Temple of Divine Light.");
		end
	elseif(e.message:findi("catch the poachers")) then
		if(fac <= 4) then -- Amiable or better
			e.self:Say("The infidels are in Toxxulia Forest.  They have begun hunting the kobolds.  We have no love of the kobolds. but cannot allow the lands of Odus to be overrun by outsiders.  The ways of tranquility are balanced with harmony.  We will not allow chaos to take hold of our land.  Go and find these poachers.  Bring me their heads!!");
		elseif(fac == 5) then -- Indifferent
			e.self:Say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
		else
			e.self:Say("Leave my sight at once! You are no friend to the Peacekeepers of the Temple of Divine Light.");
		end
	elseif(e.message:findi("skeptical")) then
		if(fac <= 4) then -- Amiable or better
			e.self:Say("The Temple of Divine Light is at your disposal. May you find true peace within our walls.");
		elseif(fac == 5) then -- Indifferent
			e.self:Say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
		else
			e.self:Say("Leave my sight at once! You are no friend to the Peacekeepers of the Temple of Divine Light.");
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	local fac = e.other:GetFaction(e.self);

	if(item_lib.check_turn_in(e.trade, {item1 = 13825})) then -- Item: Poacher's Head
		if(fac <= 4) then -- Amiable or better
			e.self:Say("You have served us well. The harmony of the forest shall be preserved. I have word that theses infidels were all working for one man. Find me evidence pertaining to this man. Surely one of these poachers has something which could aid in finding this man. We must stop him to stop the poachers. Go in peace.");
			e.other:SummonItem(10004); 	-- Item: Copper Band
			e.other:Ding();
			e.other:Faction(298,5,0); 	-- Faction: Peace Keepers
			e.other:Faction(266,1,0); 	-- Faction: High Council of Erudin
			e.other:Faction(265,-1,0); 	-- Faction: Heretics
			e.other:AddEXP(500);
		elseif(fac == 5) then -- Indifferent
			e.self:Say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
			e.other:SummonItem(13825); 	-- Return Item: Poacher's Head
		else
			e.self:Say("Leave my sight at once! You are no friend to the Peacekeepers of the Temple of Divine Light.");
			e.other:SummonItem(13825); 	-- Return Item: Poacher's Head
		end
	elseif(item_lib.check_turn_in(e.trade, {item1 = 13913})) then -- Item: Barbarian Head
		if(fac <= 4) then -- Amiable or better
			e.self:Say("It is done! Quellious will look favorably upon our church and we will look favorably upon you. Go in peace.");
			e.other:SummonItem(15202); 	-- Item: Spell: Courage
			e.other:Ding();
			e.other:Faction(298,10,0); 	-- Faction: Peace Keepers
			e.other:Faction(266,2,0); 	-- Faction: High Council of Erudin
			e.other:Faction(265,-2,0); 	-- Faction: Heretics
			e.other:AddEXP(500);
		elseif(fac == 5) then -- Indifferent
			e.self:Say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
			e.other:SummonItem(13913); -- Return Item: Barbarian Head
		else
			e.self:Say("Leave my sight at once! You are no friend to the Peacekeepers of the Temple of Divine Light.");
			e.other:SummonItem(13913); -- Return Item: Barbarian Head
		end
	end
	item_lib.return_items(e.self, e.other, e.trade);
end
