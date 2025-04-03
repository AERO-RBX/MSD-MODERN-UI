# Load the library
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AERO-RBX/MSD-MODERN-UI/refs/heads/main/Source/SRC.lua"))()
```
# Make the ui
```lua
local ui = lib:Init({
	Description = "MSD | PREVIEW",
	Toggle_Bind = Enum.KeyCode.Z,
	ThemeColor = Color3.fromRGB(85, 0, 255)
})
```
# Make a tab
```lua
local tab = ui:Tab({
	Text = "Test Tab 1"
})
```
## FUNCTIONS

# Button
```lua
tab:Button({
	Text = "btn",
	callback = function()
		print("Clicked!")
	end
})
```
# Header
```lua
tab:Header({
	Text = "Extras"
})
```
# Toggle
```lua
tab:Toggle({
	Text = "Toggle",
	callback = function(e)
		print(e)
	end
})
```
# Slider
```lua
tab:Slider({
	Text = "Slider",
	min = 0,
	max = 100,
	Value = 12,
	callback = function(e)
		print(e)
	end,
})
```
# Color Picker
```lua
local ColorPicker = tab2:ColorPicker({
	Text = "Change color!",
	
	callback = function(e)
		print(e)
	end
})
```

# Thats all for now, more elements and customization will be coming soon
