local TiberiumRadius = 20 + settings.startup["tiberium-spread"].value * 0.4 --Translates to 20-60 range

local tiberiumNetworkNode = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
tiberiumNetworkNode.name = "tiberium-network-node"
tiberiumNetworkNode.energy_usage = "10000kW"
tiberiumNetworkNode.mining_speed = 10
tiberiumNetworkNode.subgroup = "a-buildings"
tiberiumNetworkNode.order = "h[tiberium-network-node]"
tiberiumNetworkNode.resource_searching_radius = math.floor(TiberiumRadius * 0.5) + 0.49
tiberiumNetworkNode.resource_categories = {}
tiberiumNetworkNode.minable.result = "tiberium-network-node"
table.insert(tiberiumNetworkNode.resource_categories, "basic-solid-tiberium")
tiberiumNetworkNode.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = 200
}
tiberiumNetworkNode.next_upgrade = nil
tiberiumNetworkNode.fast_replaceable_group = nil

data:extend{tiberiumNetworkNode}
