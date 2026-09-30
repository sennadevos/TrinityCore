-- Gilneas / Duskhaven "Grandma Wahl" quests
-- 14401 "Grandma's Cat": Lucius the Cruel (36461) is spawned with UNIT_FLAG_IMMUNE_TO_PC (0x100) and has no AI/script
--   that ever removes it, so players can't attack him; he drops the quest item Chance the Cat (49281, 100%).
--   Make him attackable.
UPDATE `creature_template` SET `unit_flags` = `unit_flags` & ~0x100 WHERE `entry` = 36461;
-- 14399 "Grandma's Lost It Alright": the only Linen-Wrapped Book (gameobject 196473, guid 236467) respawns after
--   7200 s, so after one player loots it nobody else can finish the quest for two hours. Respawn after 30 s.
UPDATE `gameobject` SET `spawntimesecs` = 30 WHERE `guid` = 236467 AND `id` = 196473;
-- 14400 "I Can't Wear This": the only Grandma's Good Clothes (gameobject 196472, guid 236357) also respawns after 7200 s.
UPDATE `gameobject` SET `spawntimesecs` = 30 WHERE `guid` = 236357 AND `id` = 196472;
-- 14401 "Grandma's Cat": Chance (36459) is spawned twice at the exact same spot (guids 255872 and 255958). Remove the duplicate.
DELETE FROM `creature` WHERE `guid` = 255958 AND `id` = 36459;
