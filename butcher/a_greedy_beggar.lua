local followtarget;

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello there " .. e.other:GetName() .. ". I don't suppose you can spare some coins? I'm just a poor halfling that is far away from home. I can't afford anything to eat or drink. Anything you can offer me will be of help.");  -- response to all messages, even when following
		if(followtarget == nil) then
			followtarget = e.other:GetID();
			e.self:SetAppearance(0); -- Stand
			eq.set_timer("follow",5000);
		end
	end
end

function event_trade(e) -- Note that we are intentionally accepting any trade, as long as we are not following, in which case we accept any trade from the character we are following
	local item_lib = require("items");
	
	if(followtarget == nil or e.other:GetID() == followtarget) then
		e.self:Say("Oh thank you. You are too kind to this poor halfling. Do you have anything else to give me?");
		e.self:SetAppearance(0); -- Stand
		followtarget = e.other:GetID();
		eq.set_timer("follow",5000);
	else
		item_lib.return_items(e.self, e.other, e.trade) -- return all items once I am following a target
	end
end

function event_timer(e)
	local entity_list = eq.get_entity_list();

	for id, v in pairs(entity_list) do
		if(followtarget) then
			eq.follow(followtarget); -- Follow the player who triggered the event
		else
			eq.stop_follow();
			followtarget = nil;
			eq.stop_timer("follow");
			e.self:SetAppearance(3); -- lying down
		end
	end
end
