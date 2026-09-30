-- Greymane Manor phasing: after handing in 14466 "The King's Observatory" the manor (King Genn Greymane 36743,
-- who gives 14467 "Alas, Gilneas!" and 24438 "Exodus", and all other NPCs) phased out, because both phase auras
-- ended at 14466. Keep them until 24438 "Exodus" is rewarded. (Second part = the reporter's workaround in TCPP #489.)
UPDATE `spell_area` SET `quest_end` = 24438 WHERE `spell` = 68483 AND `area` = 4714 AND `quest_start` = 14386 AND `quest_end` = 14466;
UPDATE `spell_area` SET `quest_end` = 24438 WHERE `spell` = 69077 AND `area` = 4817 AND `quest_start` = 14465 AND `quest_end` = 14466;
