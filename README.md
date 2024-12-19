If you want to add something or suggest ideas for new features
This datapack is currently developed for 1.21.1 because the server I code it on has not updated yet.
Server ip: legitimoose.com

You can get all gun items with loot command.

While the basic weapons will comply with the feel of cs16, I will add other weapons that will be completely different in feel.

Updated to 1.21.4
Summary:
The datapack was initially made on 1.19.4 on a server with different pvp gamemodes, a lot of handling was done by the cs16 datapack instead of the games.
Now the this datapack is a standalone version. No "api's" or "handlers" for redirecting damage, what happends when a player dies, etc.

The datapack will just work once you put it in your world. Right now it is not survival friendly since you can not craft any guns or ammo.

CHANGES:
Removed old bullet storage mechanic
Now all ammo is in item form stored in player inventory.
Damage scaling on guns removed( idk why that was a thing)

Loot Tables:
guns are separated by type and you can get one by typing:
loot give @s cs16:gun/<gun_type>/<gun_name>

Getting ammo:
loot give @s loot cs16:ammo/<gun_type>

Full stack: cs16:ammo/<gun_type>_stack

Or random: cs16:ammo, cs16:rifle, cs16:smg,cs16:pistol

CONFIGURATIONS:
$preventDeath: 0 or 1 (1 - prevents the gun damage from killing the player, instead the player will run function cs16:redirect_on_death)
$gunRange 0..1024
$gunGrief 0 or 1 (1-guns can destroy blocks)
$wallbang 0 or 1( 1-thru wall damage)
$transform_item_to_display 0 or 1( converts gun items to item displays and can be only be picked up by pressing shift near it)


There is a small wave minigame builtin the datapack
To start it type function pve:start
To stop it type function pve:stop
