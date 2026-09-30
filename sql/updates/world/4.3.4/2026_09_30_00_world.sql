-- Quest 14395 "Gasping for Breath" (Gilneas): Drowning Watchman 36440 can't be picked up.
-- npc_spellclick_spells (36440 -> 68735), conditions and SmartAI (On spellclick -> Ride Vehicle 47020, then
-- "Remove npc flags SPELLCLICK") are all present (TCPP sql/updates/world/4.3.4/2023_09_12_01_world.sql), but
-- creature_template.npcflag is 0: without UNIT_NPC_FLAG_SPELLCLICK (0x01000000) the client never sends CMSG_SPELLCLICK.
UPDATE `creature_template` SET `npcflag` = `npcflag` | 0x01000000 WHERE `entry` = 36440;
