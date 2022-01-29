local function export_node_stats()
  local by_origin_mod = {}

  for mod_name, registration in pairs(minetest.registered_nodes) do
    local origin = registration.mod_origin
    by_origin_mod[origin] = (by_origin_mod[origin] or 0) + 1
  end

  local fname = minetest.get_worldpath() .. "/node-stats.txt"
  print("[node_stats] Exporting stats to: " .. fname)
  local f = io.open(fname, "w")
  for name, count in pairs(by_origin_mod) do
    f:write(count .. " " .. name .. "\n")
  end

  io.close(f)
end

minetest.after(4, export_node_stats)
