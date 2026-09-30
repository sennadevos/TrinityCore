-- Quest 14098 "Evacuate the Merchant Square": the invisible door bunny 35830 (kill-credit target) was a quest giver for
-- 14098, so all 14 spawns showed a "!" once the quest became available. Only Prince Liam Greymane (34913) gives it.
DELETE FROM `creature_queststarter` WHERE `id`=35830 AND `quest`=14098;
UPDATE `creature_template` SET `npcflag`=`npcflag`&~2 WHERE `entry`=35830;
