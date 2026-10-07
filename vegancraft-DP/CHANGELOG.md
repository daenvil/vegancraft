# Changelog

## [1.8] - 2026-10-07

### General

- Updated for 26.3 datapack changes
- Added a ``dnv.vegancraft:uninstall`` function that removes all scoreboard objectives added by the datapack

### Plant-based Foods

- Seitan stew recipe now accepts shelf mushroom as ingredient
- Veggie burger recipe now accepts shelf and red mushrooms as ingredients

### Plant Wax

- Red shrubs can now be smelted into wax

### Acacia Gum

- Reworked the whole datapack to use the new "block transformers" datapack functionality, increasing performance.
- Experience is now only dropped if the Vegancraft datapack is installed and if XP from crops is enabled.

### Brewing

- End's Mist (Dragon's Breath) is now obtainable from brewing, by adding a **chorus flower** to an awkward potion
	- The End's Mist crafting recipe has been removed
- Added a new potion: *Potion of the Galloping Master*
	- Brewed by adding an apple to an awkward potion
	- It gives a powerful speed buff that lasts for 8 minutes
	- Can be enhanced with redstone/glowstone and inverted with fermented potato sprouts / spider eyes, just as vanilla potions
	- Its purpose is to give an alternative to horses for land transport. Might be changed when I get feedback.

## [1.7] - 2026-07-19

### Additions

- Added craftable sulfur cubes
	- Crafted with 4 sulfur and 4 acacia gum / slime balls
	- They behave exactly the same as vanilla sulfur cubes, except that they are completely inanimate
- Sulfur can be used to craft gunpowder: 1 sulfur, 1 redstone dust, and 1 coal yield 6 gunpowder

### Changes

- Removed legacy code to display custom items. Datapack items created previous to Minecraft 1.20.5 will no longer display their custom textures.

## [1.6.1] - 2026-06-09

- Fixed some crops not dropping xp

## [1.6] - 2026-04-09

### Additions

- Added missing music discs:
  - *Mellohi* can be obtained in woodland mansion chests
  - *Wait* can be obtained in desert pyramid chests

### Changes

- Jungle saplings now output 8 wax when smelted. Dead bushes output 4 wax.
- Villager trades have been entirely reworked to use a new data-driven system introduced in Minecraft 26.1
  - Instead of the vegan trades being always added, they will be random
  - The number of trades offered by certain villagers at certain levels was increased to make room for the vegan trades
  - The old system that modified villager data periodically is now removed, which should improve lag issues, if there were any
- Trial key recipe and blaze rod recipe now accept any lightning rod (not just unoxidized unwaxed ones)


## [1.5.2] - 2025-11-12

Additions:

- Added new public commands (require admin privileges or cheats enabled):
	- ``dnv.vegancraft:toggle_xp_from_crops_require_player``: controls whether xp drops from crops when they are destroyed by anything other than a player. Basically allows for AFK xp farms. I recommend requiring players if the server is laggy.
	- ``scoreboard players set #dnv dnv.xp_from_crops_multiplier <X>``: replace ``<X>`` by an integer number between 1 and 50 (default 1). Multiplies all xp obtained from crops by that number.

Changes:

- Re-balanced all xp granted by crops (now it's a bit higher by default), check the website for all the values
- Slightly reduced chances of getting crossbows, fishing rods, and tridents from magnet fishing treasure

## [1.5.1] - 2025-10-07

- Adapted to new Minecraft 1.21.9 datapack changes

## [1.5] - 2025-10-01

Additions:

- **Hot Air Balloons:** new datapack included within Vegancraft. It adds craftable hot air balloons, an alternative to happy ghast riding!
  - Craft one and right-click on the ground with it. A balloon will spawn, which can be ridden by right-clicking on it.
  - When not ridden, it will slowly wander around, so I recommend to attach it somewhere using a leash.
  - If destroyed, the original balloon item will drop.
  - For everything else, it behaves exactly the same as a happy ghast, so you can ride it with the same controls and even attach boats to it (which makes them look more like irl balloons).
- **All music discs are now obtainable in vegan ways.** These are the new methods of obtaining them (any disc not listed here was already obtainable somehow):
  - ***Blocks:*** from **village house** chests (10% chance)
  - ***Chirp:*** from **jungle temple** chests (33.3%)
  - ***Far:*** from **stronghold library** chests (100%)
  - ***Mall:*** from **shipwreck** map chests (20%)
  - ***Stal:*** from **village weaponsmith, toolsmith, armorer, or temple** chests (33.3%)
  - ***Strad:*** from brushing suspicious gravel in **trail ruins** (8.8%)
  - ***Ward:*** from **ancient city** chests (15%)
  - ***11:*** from **abandoned mineshaft** chests (20%)
  - ***Tears:*** from breaking **pitcher plants** (1%) *(the plant has to break and drop seeds. The disc can't drop if you harvest it with shears/silk touch)*
  - ***Lava Chicken:*** from **wandering traders** (12%) or from getting the ***Hail Seitan*** advancement (crafting 666 seitan steaks).

Changes:

- Slightly reduced chances of getting nether stars in ancient cities (2%)
- Ancient city loot now may contain ominous trial keys (4%)
- Journeyman cleric villagers now buy ominous bottles in exchange for emeralds


## [1.4.2] - 2025-08-24

Additions:

- New secret advancement related to magnet fishing

Changes:

- Bushes can now be smelted to obtain plant wax. *Wax was too difficult to farm since the introduction of leaf litter. This provides an easy and reliable way of farming wax.*
- The faux leather recipe now also accepts resin clumps in addition to gum/slime balls
- The treasure loot table for magnet fishing has been rebalanced:
	- Name tags, enchanted iron armor and tools, and crossbows are now slightly rarer. *These items were bloating the treasure loot while they are not really that useful for the mid-late game.*
	- As a result, every other item has now slightly more probability
- Wandering traders, villagers, zombified piglins, and skeleton horses are no longer considered passive mobs for the trigger condition of a secret advancement
- Decreased negative effects of a secret advancement
- Updated the description of some advancements in order to give better gameplay hints

## [1.4.1] - 2025-07-07

- Fixed bug with crop loot tables

## [1.4] - 2025-04-16

Additions:
- **Resin clumps** are now obtainable by stripping pale oak logs and wood
	- When a pale oak log/wood is stripped there's a chance that a resin clump appears on its surface
	- This chance is the same as for getting acacia gum from stripping acacias (Fortune enchantment also affects it)

- Acacia gum balls are now **throwable with right click**
	- They can be picked up again (they aren't destroyed)
	- They don't hurt and don't make mobs angry when hit

- Villagers and wandering traders have **new trades** to compensate their non-vegan trades:
	- There might be a bug where some villagers don't seem to have the custom trades at first, but they should fix themselves after some time passes (~5s). This is a necessary tradeoff to improve performance of the datapack (otherwise villagers would need to be checked multiple times every second). This will not improve until Mojang adds proper customizable trades.
	- See the list of all custom trades in [the datapack's page](vegancraft.html#villager-trades)

- The vegan alternative of the Eye of Ender is now called an "Ender Compass" and has its own texture (it's still crafted and used in the same way as before)

- A couple new advancements related to the new features

Changes:
- Plant wax can no longer be obtained from jungle leaves, since those now produce leaf litter in 1.21.5
	- Plant wax can now be obtained from smelting jungle saplings instead
- Vegan shulker boxes are now called "chorus boxes"
- Changed trident recipe, now requiring a heart of the sea (the recipe now is: heart of the sea, 2 prismarine crystals, blaze rod, and 3 diamond swords)
- End's mist recipe (vegan dragon's breath) now uses a chorus flower instead of a fruit (this was a mistake, as the recipe was always listed with chorus flower in the datapack docs)
- Lodestones and tridents can now be obtained by magnet fishing (with very low probabilities)
- Any fishing rods obtained by magnet fishing are now also magnet fishing rods
- Ancient cities and strongholds now have a very small chance of having trial keys in their loot
- Minor changes to how the vegan recipes for tridents, trial keys, eyes of ender, and shulker boxes are learned in-game
- Enchanted books containing curses can no longer be obtained by magnet fishing

Fixes:
- Adapted to work with Minecraft 1.21.5
- Fixed wrong output when crafting a seitan stew with animal meat
- Fixed some wrong enchanted books being obtainable by magnet fishing

## [1.3] - 2025-01-03

Datapack updated for Minecraft 1.21.4+

Additions:
- Pale oak logs and wood can now be used in a stonecutter to get white dye.

Changes:
- Changed how custom item textures are implemented (no visible changes).

More stuff from 1.21.4 (resin) will be added in a future update.


## [1.2.2] - 2024-11-08

Datapack updated for Minecraft 1.21.2+

Additions:
- Added new recipes for trial keys:
	- A trial key can be crafted with polished tuff, a lighning rod, and obsidian.
	- An ominous trial key can be crafted with polished tuff, a blaze rod, and crying obsidian.
	- The intention with these recipes is to add a way to avoid having to fight the trial chamber mobs in order to open the vaults. Now you can craft keys beforehand and sneak into the chambers to try and get loot without hurting mobs.

Fixes:
- Fixed non-vegan ingredients sometimes producing vegan outputs.
- Fixed wrong conditions for unlocking the totem of undying recipe.


## [1.2.1] - 2024-08-27

Ethical textiles:
- Increased the output yield of faux leather recipes from 1 to 3.
- Added a new recipe for item frames which uses paper instead of leather.

Other:
- Added a new recipe for the Eye of Ender (which I forgot in the previous update): it's crafted with a compass, blaze powder, and crying obsidian.
- Increased the output yield of the gunpowder recipe from 1 to 3.
- Tide armor trims can now be found in ocean ruin chests with around a 10% chance.
- Sponges can now be found by brushing suspicious sand/gravel in ocean ruins with a 6.7% chance (they replace iron axes in the vanilla loot table).
- End's mist recipe (Dragon's breath) now uses a glass bottle instead of an experience bottle.
- Killing piglins no longer counts as killing a non-hostile animal for the purpose of a hidden advancement.
- The nether star recipe was changed to be cheaper. Now it requires 4 netherite ingots instead of a netherite block. The recipe now is: blaze powder surrounded by 4 diamonds and 4 netherite ingots.
- Nether star now appears as a rare loot in ancient city chests (same probability as disc fragments and enchanted golden apples).

## [1.2] - 2024-06-19

- New recipes
- Nautilus shells are now obtainable from ocean ruins chests and buried treasures
- Increased xp from crops by 80%
- Added function to turn off xp from crops: ``dnv.vegancraft:toggle_xp_from_crops``
- The new 1.21 smithing templates ("flow" and "bolt") can be used to craft the "call" copper horn
- Fixed custom banner patterns English translations not working

### New recipes:

- Prismarine shard: from smelting amethyst shards
- Prismarine crystals: from smelting prismarine shards
- Trident: 3 diamonds swords, a blaze rod, and 3 prismarine crystals
- Totem of undying: 1 gold block, 2 emeralds, and 1 echo shard
- Wither rose: 4 wither roses from a rose bush, a netherite ingot, and a soul sand or soil block
- Nether star: a netherite block surrounded by 4 diamonds and 4 blaze powder
- Ender pearl: a chorus fruit + an emerald
- Shulker box: a chest surrounded by 4 ender pearls and 4 popped chorus fruits

These recipes are experimental and may change in future updates.

## [1.1] - 2024-06-01

### General changes

- New features: vegan brewing, art and deco, sniffer seeds, and XP from crops.
- Reworked all custom recipes into the new system. Now custom recipes will show their correct output instead of a knowledge book, both in the crafting table output and in the recipe book.
- Removed the "Vegancraft toggle" that controlled whether certain datapack features were enabled or not. This was too much work for me to maintain, and I don't think it's worth to keep updating that feature. Now, those features are always enabled on the full Vegancraft datapack, but disabled if playing standalone datapacks without the full one.
- Removed advancements from the standalone datapacks. Now those are only available in the full Vegancraft datapack. They were also revised and a lot of the existing advancements were removed.
- Optimized functions to improve performance wherever I could.

### Plant-based Foods

- Added three new food items:
  - **Seitan Stew**: same as rabbit stew but crafted with a seitan steak.
  - **Veggie Burger**: crafted with bread, beetroot, and brown mushroom.
  -  **Not-salmon Fillet**: crafted with carrot, kelp, and vegan honey. It acts as raw salmon (so you can feed it to cats and dolphins) but gives the same hunger points and saturation as cooked salmon.

- **Not-fish fillet** now gives the same hunger points and saturation as cooked cod (but keeps acting the same as raw cod).
- The **seitan steak** recipe no longer requires a bucket of water. Now it's just wheat + mushroom/beetroot stew. Now it's also shapeless (can be crafted without a crafting table).
- (Vegancraft only) XP rewards for seitan and not-fishes have been nerfed to account for the new crop XP mechanics.

### Ethical Textiles

- Added a new item: **Armor Scale**, which has the same usage as the armadillo scute. Crafted with 2 strings, 1 slime ball, and 1 diamond (1 craft provides 2 scales).
- Added an alternative **brush** recipe that uses 4 strings instead of a feather.

### Omnivorous Pets

- I'm removing the _Omnivorous Pets_ datapack from Vegancraft. I'll still maintain it as I think it's a useful datapack, but I don't think it matches well with the rest of Vegancraft due to having to use a different mechanic to tame the pets (dropping items instead of right clicking them). I'll probably re-add it in the future if Mojang makes it possible to tame wolves with things other than bones.

- For now, the two different "not-fish" foods from Plant-based foods are enough to tame cats, and I also added a new recipe to **craft bones from 3 bonemeal**, allowing to tame wolves without having to kill skeletons for bones.

### Vegan Brewing

A ton of new items were added as alternatives for animal-based brewing ingredients. 

- **Blazing Powder**: an alternative to blaze powder. Crafted using a magma block and 4 glowstone dust.
- **Blazing Rod**: an alternative to blaze rods. Crafted using a lightning rod and 2 blazing powder.
- **Breezy Rod**: an alternative to breeze rods. Crafted using a blaze rod and dragon's breath.
- **Gunpowder** is now craftable from any coal + redstone + glowstone dust.
- **Poisonous Sprout**: an alternative to spider eyes. Crafted from poisonous potatoes.
- **Fermented Sprout**: an alternative to fermented spider eyes. Crafted in the same way but from poisonous sprouts.
- **Hardened Seagrass**: an alternative to turtle scutes. Crafted from seagrass and wax.
- **End's Mist**: an alternative to dragon's breath. Crafted from a bottle o' enchanting, blazing powder, and a chorus flower.
- **Bouncy Boot**: an alternative to rabbit's feet. Crafted from leather boots surrounded by slimeballs (or acacia gum).
- **Puffer Bubble**: an alternative to pufferfish. Crafted from a heart of the sea and soul sand.
- **Feathery Membrane**: an alternative to phantom membranes. Crafted from feathers and wax.

Sniffer plants now also drop some brewing ingredients, including a ghast tear alternative, see below for details.

Other animal brewing ingredients can already be obtained in a vegan way through other features:
- Magma cream and slime blocks by substituting slime balls with acacia gum.
- Synthetic cobwebs can be crafted using acacia gum and plant string.

### Vegan Arts & Deco

Added new recipes for all art/decoration-related stuff that depends on animals: dyes, inks, horns, mob heads...

#### Copper Horns:

Including new item: the **copper horn** (same as the goat horn, just a different texture and way of obtaining).

- The horn with the "ponder" sound can be crafted using copper ingots and wax.
- All the other sounds are made in the smithing table, by combining an existing horn with a trim smithing template and a copper ingot. Each sound comes from different templates!
  - "ponder": from trim templates: "wayfinder", "raiser", "shaper", "host"
  - "sing": from trim templates: "coast", "dune"
  - "seek": from trim templates: "sentry", "vex"
  - "feel": from trim template: "wild"
  - "admire": from trim templates: "ward", "silence"
  - "call": from trim templates: "eye", "spire"
  - "yearn": from trim template: "snout"
  - "dream": from trim template: "rib"

#### Inks and Dyes:

Some dyes are usually obtained from mobs, this adds alternative sources for them. Ink sacs are the only way of making signs glow/not glow, so alternative recipes for them were also added.

- **Black dye** is now craftable from any coal.
- **Ink sacs** are now craftable from black dye.
- A **book and pencil** (same as a "book and quill") is now craftable using a book, a stick, and any coal.
- **Black and white dyes** are now craftable from dark oak and birch logs/wood, respectively, by using the stonecutter (this simulates grinding their bark).
- **Glow ink sacs** are now craftable from glowstone dust, glow berries, or glow lichen.
- **Glow item frames** are now craftable by using glowstone dust, glow berries, or glow lichen instead of a glow ink sac.

#### Mob heads:

Some heads, like creeper and wither skeleton heads are used for banner patterns and for fireworks, so alternatives for them were needed. Since now there are more mob heads which can be used on note block, I added all of them:

- Most heads are crafted from a carved pumpkin surrounded by dyes and items related to the mob:
  - **Creeper head**: carved pumpkin surrounded by green dyes and gunpowder (see the brewing section for vegan gunpowder).
  - **Skeleton skull**: carved pumpkin surrounded by white dyes and bone blocks.
  - **Zombie head**: carved pumpkin surrounded by fermented spider eyes (see the brewing section for alternatives to spider eyes).
- Then, the heads from the harder mobs are made using a template so you have to actually go to the mobs' locations and face some challenge:
  - **Piglin head**: carved pumpkin + pink dye + nether gold ore + either the "snout" trim smithing template or the piglin banner pattern.
  - **Wither skeleton skull**: skeleton skull + black dye + netherite ingot + "rib" trim smithing template

#### Froglights:

Froglights are now craftable with a shroomlight block, prismarine crystals, and a dye related to the froglight color:

- Yellow dye: ochre froglight
- Magenta dye: pearlescent froglight
- Green dye: verdant froglight

A shroomlight is used due to it being an organic glowing block like the froglight and also being obtained in the nether. Prismarine crystals are used because of their relation to water and the more crystaline look of froglights.

#### New banner patterns:

There are two new banner patterns available in the loom:

- The "sprout" pattern (🌱), which requires the flower charge pattern (craftable with flowers).
- The "circled V" pattern (ⓥ), which requires the globe pattern (obtained from cartographer villagers).

These do not replace any vanilla patterns, they are just extras.

### Sniffer Plants

- Torchflower and pitcher seeds are now obtainable in ocean ruins from brushing suspicious sand and gravel, respectively. These replace the wooden hoe in these blocks' loot tables so, whenever you would get a wooden hoe (2/15 chance), you get a sniffer seed instead.
 - Sniffer seeds are now also farmable: when breaking a fully grown torchflower or pitcher plant, they will drop 1–2 of their seeds instead of dropping themselves (increased with Fortune enchantment). You can still collect the plant itself by using shears or any tool with silk touch*. In addition:
   - Torchflowers have a small chance to drop **blazing powder** (see brewing section).
   - Pitcher plants have a small chance to drop "**pitcher fluid drops**" (a ghast tear alternative). 

*Important: due to how pitcher plants are made, you will need to break the **lower half of the plant** with shears or silk touch in order to obtain the plant itself. Breaking the upper half of the plant will result in the regular drops.

### XP from farming plants

A new feature that rewards players with experience for farming crops. Just as killing and breeding animals gives XP, this datapack makes it so harvesting plants also drops XP.

- Each plant has a certain chance to drop 1 XP. This chance is calculated based on how hard it is to reproduce and grow the plant and was balanced to be as equivalent as possible to farming animals.
  - Certain plants do not drop any XP, either because of how easy they are to produce & harvest or because of other balance concerns. These are: bamboo, flowers, dripleaves, seagrass, vines, melons, and pumpkins. Mushrooms also are also not included for this reason. As for trees, breaking their leaves manually is the only way to obtain XP from them.
- XP is only dropped when a player breaks the block. It's not dropped if the block is broken by explosions, pistons, etc.
  - In the case of sweet and glow berries, XP is also obtained by harvesting them with right click.
  - Only the block mentioned above drops XP, not any other block in the plant. For example, breaking a chorus plant does not drop XP, only directly breaking the flower does so.
  - Cactus and sugar cane do not currently drop any XP because of a bug in the game related to their block states. They will work correctly when Mojang fixes that bug.
  - (Vegancraft only) In the case of sniffer plants (torchflower and pitcher plant), they will not drop XP from harvesting the plant with silk touch or shears. They will only do so if broken with any other tool.
- XP is NOT dropped from player-placed blocks. Some plants, like kelp or chorus flowers, are planted by placing the block, but they will only drop XP after they have grown. In summary: **you can't farm XP by repeteadly placing and breaking the same block**, you will have to at least wait for the plant to grow.
- To prevent exploiting this mechanic by using fast semi-automatic farms or spamming bone meal, **if a player gains a lot of XP in a small period of time, the chances for XP to drop will decrease for that player** until enough time has passed. The chances start decreasing at 200 gained XP and will drop to zero at 600 XP; from there, it will take ~6 minutes for the chances to recover their regular values. This system would cap at 64 XP/minute in an ideal ultra-fast farm (probably lower in a real case), which is still lower than most mob farms.

## [1.0.1] - 2024-01-05

- Updated for 1.20.3 compatibility:
  - _Ethical textiles_: fixed bug where grass bed recipe was not working.
  - Updated ``pack_format`` values
- Fixed some vegancraft advancements being granted incorrectly 

## [1.0] - 2023-06-06

- First "official" release. Compatible with **Minecraft 1.20+**.
- **General changes**:
  - The resourcepack now modifies the texture and name of the knowledge book, so using custom rescipes is friendlier.
  - Technical changes optimizing functions, standarizing code, and implementing new 1.20 features.
  - Using the new `recipe_crafted` trigger to make vegan crafting 100% consistent and make custom recipes appear in the recipe book.
  - Added recipe categories to custom recipes, so they show up in their correct tab.
  - Added translation strings to advancement titles and descriptions (EN, GL, PT, ES).
  - Added translation fallbacks in the case the player is not using the resourcepack.
- New features in **Omnivorous Pets v1.1**:
  - **Stray cats now stop their movement when a nearby player is holding food in their hand**: 
    - The cat will look at the player for a few seconds expecting to receive food, and then will continue with their normal behaviour.
    - Attacking a cat will temporarily disable this feature.
    - **This option can be disabled** using the command `/function dnv.user:cat_waiting` (admin only, use the same command again to reenable it).
  - Reduced cats' eating range to 1 block.
- New features in **Acacia Gum v1.1**:
  - Added a new advancement for feeding a frog with acacia gum.
- New features in **Ethical Textiles v1.1**:
  - Added **Faux Feather**, an alternative to bird feathers crafted from 1 stick, 1 of any leaves, and 2 strings.
    - Added advancement for crafting a vegan faux feather.
  - Changed the 3 slime + 6 bamboo -> leather recipe into **3 slime + 3 bamboo blocks -> leather**.
- Added the newest datapack: **[Magnet Fishing v1.1](daenvil.github.io/MCDatapacks/magnet_fishing.html)**.
  - Added the **Magnet Rod** custom item and its crafting recipe.
  - Implemented custom fishing loot tables for the magnet rod.

## [1e] - 2022-12-15

- Merged new datapack: Plant Wax v1
- Minor localization fixes (resourcepack)
- Improved documentation

## [1d] - 2022-10-15

- Added Ethical Textiles v1
- Updated documentation

## [1c] - 2022-08-25

- Added Acacia Gum v1
- Updated Plant-based Foods to v1.0.1 (minor fixes)
- Deleted some unused files
- Improved documentation

## [1b] - 2022-07-22

- Merged new datapack: Omnivorous Pets v1
- Removed unused models from resourcepack

## [1a] - 2022-06-17

First public pre-release, contains only the first released datapack, Plant-based Foods v1.
