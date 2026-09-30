-- Quest 14465 "To Greymane Manor" (Gilneas): nothing in the DB ever puts a player into phase 184, but the manor is
-- spawned in phase 184 (quest ender Queen Mia Greymane 36606, Duskhaven Villagers, crows, the manor gate 236493/196864,
-- bench ...). Players arrive with only phase 183 (68483 "Phase - Quest Zone-Specific 08", zone 4714, 14386 rewarded ->
-- 14466 rewarded), so Mia is invisible and 14465 can't be turned in. The retail ride there (Swift Mountain Horse
-- 36741 / 69255/69256, "Carriage Ride" 69254 which carries the phase-184 aura) is not scripted in TCPP either.
-- Fix: give phase 184 (69077 "Phase - Quest Zone-Specific 09" = SPELL_AURA_PHASE 184) inside Greymane Manor (area 4817)
-- from taking 14465 (incomplete/complete/rewarded = 8|2|64) until 14466 "The King's Observatory" is rewarded
-- (end status none|complete|incomplete|failed = 43, same window as the phase-183 aura), autocast + autoremove.
-- The two gate spawns need no change: 235514 (196401, PhaseGroup 379 = phases 169-172, Gilneas City) and
-- 236493 (196864, phase 184) are never visible together to a player with 183+184.
DELETE FROM `spell_area` WHERE `spell` = 69077 AND `area` = 4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(69077, 4817, 14465, 14466, 0, 0, 2, 3, 74, 43);
