-- Quest 24438 "Exodus": the quest ender Prince Liam Greymane (37065, guid 256018, area 4787) is spawned in phase 186,
-- but no spell_area row grants the phase-186 aura 69484 "Phase - Quest Zone-Specific 11", so players never see him.
-- Grant it in Gilneas (zone 4714) from taking 24438 (incomplete/complete/rewarded). No end quest yet (next step unmapped).
DELETE FROM `spell_area` WHERE `spell` = 69484 AND `area` = 4714;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`flags`,`quest_start_status`,`quest_end_status`)
VALUES (69484, 4714, 24438, 0, 0, 0, 2, 3, 74, 11);
