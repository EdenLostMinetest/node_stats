local function export_summary_stats()
  local by_origin_mod = {}

  for mod_name, registration in pairs(minetest.registered_nodes) do
    local origin = registration.mod_origin
    by_origin_mod[origin] = (by_origin_mod[origin] or 0) + 1
  end

  local fname = minetest.get_worldpath() .. "/node-stats-summary.txt"
  print("[node_stats] Exporting stats to: " .. fname)
  local f = io.open(fname, "w")
  for name, count in pairs(by_origin_mod) do
    f:write(count .. " " .. name .. "\n")
  end
  io.close(f)
end

local function export_details()
  -- Dump full details.
  local fname = minetest.get_worldpath() .. "/node-stats-detail.txt"
  print("[node_stats] Exporting stats to: " .. fname)
  local f = io.open(fname, "w")
  for mod_name, registration in pairs(minetest.registered_nodes) do
    f:write(registration.mod_origin .. " " .. mod_name .. "\n")
  end
  io.close(f)
end

local function export_node_stats()
  export_summary_stats()
  export_details()
end

minetest.after(4, export_node_stats)
