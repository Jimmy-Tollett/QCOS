local args = {...}
local author = args[1]
local repo = args[2]
local path = args[3]
local name = author .. "." .. repo .. "." .. path
if #args == 4 then
  name = args[4]
end
if not url or not fileName then
  print("Usage: git <author> <repo> <path> <?filename>")
  return
end

shell.run("wget \"https://github.com/" .. author .. "/" .. repo .. "/raw/" .. path .. "\" " .. name)
        
