local mappings = {{mod={"shift", "cmd", "ctrl"}, key="left", c={0, 0, 1, 1}},
{mod={"shift", "cmd", "ctrl"}, key="right", c={0.5, 0, 1, 1}},
{mod={"shift", "cmd", "ctrl"}, key="left", c={0, 0, 1, 1}},
{mod={"shift", "cmd", "ctrl"}, key="left", c={0, 0, 1, 1}},
{mod={"shift", "cmd", "ctrl"}, key="left", c={0, 0, 1, 1}},
{mod={"shift", "cmd", "ctrl"}, key="left", c={0, 0, 1, 1}}}

for i, m in pairs(mappings) do
    print(1 + (1 * m.c[1]))
end
