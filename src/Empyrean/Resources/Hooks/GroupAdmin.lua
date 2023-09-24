-- @ttwiz_z
return function(Registry)
	if script:GetAttribute("GroupId") and script:GetAttribute("GroupId") > 0 and script:GetAttribute("MinimumRank") and script:GetAttribute("MinimumRank") >= 0 and script:GetAttribute("MinimumRank") <= 255 then
		Registry:RegisterHook("BeforeRun", function(Context)
			if Context and Context.Group and Context.Group == "DefaultAdmin" then
				if not Context.Executor or Context.Executor:GetRankInGroup(script:GetAttribute("GroupId")) < script:GetAttribute("MinimumRank") then
					return "You don't have permission to run this command"
				end
			end
		end)
	else
		warn("Empyrean is not configured; some functions may not work correctly")
		warn("Please check the attribute values! Empyrean > Resources > Hooks > GroupAdmin")
	end
end