function event_connect(e)
	-- new connection
	eq.world_emote(15, "" .. e.self:GetName() .. ", a " .. e.self:Class() .. ", has joined in the battle for Norrath! Current level of this hero is: " .. e.self:GetLevel() .. "!  He is a member of " .. eq.get_guild_name_by_id(e.self:GuildID()) .. ".");
end
