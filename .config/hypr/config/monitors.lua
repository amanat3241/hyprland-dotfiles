hl.monitor({
	output = "eDP-1",
	disabled = false,
	scale = 1,
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "0x0",
	scale = 1,
})

-- #Workspace and monitor rules

-- Laptop monitor
hl.workspace_rule({
	workspace = "5",
	monitor = "eDP-1",
	default = true,
})

hl.workspace_rule({
	workspace = "6",
	monitor = "eDP-1",
})

-- External monitor
hl.workspace_rule({
	workspace = "1",
	monitor = "HDMI-A-1",
	default = true,
})

hl.workspace_rule({
	workspace = "2",
	monitor = "HDMI-A-1",
})

hl.workspace_rule({
	workspace = "3",
	monitor = "HDMI-A-1",
})

hl.workspace_rule({
	workspace = "4",
	monitor = "HDMI-A-1",
})
