local followtarget;

function event_spawn(e)
	followtarget = nil;
end

function event_aggro(e)
    e.self:Say("Guards! Guards! Help me!!");
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello there " .. e.other:GetName() .. ". I don't suppose you can spare some coins? I'm just a poor halfling that is far away from home. I can't afford anything to eat or drink. Anything you can offer me will be of help.");
		if(followtarget == nil) then
			followtarget = e.other:GetID();
			e.self:SetAppearance(0); -- standing
			eq.set_timer("follow",5000);
		end
	end
end

function event_timer(e)
	if(e.timer == "follow" and eq.get_entity_list():GetClientByID(followtarget).valid) then
		eq.follow(followtarget); -- follow the player who triggered the event
	else
		eq.stop_follow();
		followtarget = nil;
		eq.stop_timer("follow");
		e.self:SetAppearance(3); -- lying (happens on live)
		e.self:MoveTo(2407,1482,0,168,true);
		e.self:SetAppearance(0); -- standing (just to be sure animation is safe)
	end
end

function event_trade(e) -- note that we are intentionally accepting any trade if we are not following
	local item_lib = require("items");
	
	if(followtarget == nil or e.other:GetID() == followtarget) then
		e.self:Say("Oh thank you. You are too kind to this poor halfling. Do you have anything else to give me?");
		e.self:SetAppearance(0); -- standing
		followtarget = e.other:GetID();
		eq.set_timer("follow",5000);
	else
		item_lib.return_items(e.self, e.other, e.trade);
	end
end

function event_waypoint_arrive(e)
	if(e.wp == 0) then
		e.self:SetAppearance(3); -- lying
	end
end
