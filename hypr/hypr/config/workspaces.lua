-- See https://wiki.hypr.land/Configuring/Basics/Workspaces-Rules

for i = 1, 8 do
	if 1 == i % 2 then
		if i == 1 then
			hl.workspace_rule({ workspace = i, monitor = "DP-2", default = true })
		elseif i == 7 then
			hl.workspace_rule({ workspace = i, monitor = "DP-2" })
		else
			hl.workspace_rule({ workspace = i, monitor = "DP-2", persistent = true })
		end
	else
		if i == 2 then
			hl.workspace_rule({ workspace = i, monitor = "DP-5", default = true })
		elseif i == 8 then
			hl.workspace_rule({ workspace = i, monitor = "DP-5" })
		else
			hl.workspace_rule({ workspace = i, monitor = "DP-5", persistent = true })
		end
	end
end
