--Includes pre-determined function names you can use for hooking into certain events and provides a place to gather together all your mod's file overrides.--
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Called in order upon loading a new(?) game:
function OnModPreInit() end

function OnModInit() end

function OnModPostInit() end

-- Called when player entity has been created. Ensures chunks around the player have been loaded & created.
function OnPlayerSpawned(player_entity) end

-- Called when the player dies
function OnPlayerDied(player_entity) end

-- Called once the game world is initialized. Doesn't ensure any chunks around the player.
function OnWorldInitialized() end

-- Called *every* time the game is about to start updating the world
function OnWorldPreUpdate() end

-- Called *every* time the game has finished updating the world
function OnWorldPostUpdate() end

-- Called when the biome config is loaded.
function OnBiomeConfigLoaded() end

-- The last point where the Mod API is available. After this materials.xml will be loaded.
function OnMagicNumbersAndWorldSeedInitialized() end

-- Called when the game is paused or unpaused.
function OnPausedChanged(is_paused, is_inventory_pause) end

-- Will be called when the game is unpaused, if player changed any mod settings while the game was paused
function OnModSettingsChanged() end

-- Will be called when the game is paused, either by the pause menu or some inventory menus. Please be careful with this, as not everything will behave well when called while the game is paused.
function OnPausePreUpdate() end

-------------------------------------------------------------------------------------------------------------------------------------------------------------


--These lines are usually added to the end/beginning of init.lua. This code runs when all mods' filesystems are registered.--
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Basically dofile("mods/mymod/files/actions.lua") will appear at the end of gun_actions.lua
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/mymod/files/actions.lua")

-- Same, but for potions
ModLuaFileAppend("data/scripts/items/potion.lua", "mods/mymod/files/potion_appends.lua")

-- Will override some magic numbers using the specified file
ModMagicNumbersFileAdd("mods/mymod/files/magic_numbers.xml")

-- Append your own materials to the game's material list
ModMaterialsFileAdd("mods/mymod/files/custom_materials.xml")

-- Use this to register custom fmod events. Event mapping files can be generated via File -> Export GUIDs in FMOD Studio.
ModRegisterAudioEventMappings("mods/mymod/files/audio_events.txt")
-------------------------------------------------------------------------------------------------------------------------------------------------------------
