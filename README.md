# Lama - Panic & Position Button
Let your police send a their Position via Panic or GPS. It works with ESX, no QBCore integration anytime soon! Almost everything is configurable trough the Config.

# Requirements
- ESX **1.3 or higher**  *(ESX 1.2 if you add the fix at the bottom)*
- interact-sound (optional)

# Planned Features
- cooldown for buttons

# Installation
1. Install all the requirements
2. Clone the repository
3. Extract the zip in your resources folder
4. Rename from lama_panicbutton-master to lama_panicbutton
5. Modify the config to your liking
6. Done!

# ESX 1.2 Fix
Go to ``es_extended/server/functions.lua`` and add this:

```lua
function ESX.GetExtendedPlayers(key, val)
  local xPlayers = {}
  for k, v in pairs(ESX.Players) do
    if key then
      if (key == 'job' and v.job.name == val) or v[key] == val then
        xPlayers[#xPlayers + 1] = v
      end
    else
      xPlayers[#xPlayers + 1] = v
    end
  end
  return xPlayers
end
```
