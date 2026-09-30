-- Quest 14416 "The Hungry Ettin" (Gilneas): bind the new C++ scripts from the Gilneas chapter 2 script changes.
--   68903 Round Up Horse (vehicle spell of Mountain Horse 36540): only a free, living Mountain Horse is a valid target.
--   68908 Rope in Horse: despawns the roped horse (respawn 30 s) and summons Mountain Horse 36555 owned by the rider.
--   36555 Mountain Horse: follows the rider (rope visual 68940); within 20 yd of Lorna Crowley 36457 -> credit 36560.
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68903, 68908);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(68903, 'spell_gilneas_round_up_horse'),
(68908, 'spell_gilneas_rope_in_horse');
UPDATE `creature_template` SET `ScriptName` = 'npc_gilneas_mountain_horse_follower' WHERE `entry` = 36555;
