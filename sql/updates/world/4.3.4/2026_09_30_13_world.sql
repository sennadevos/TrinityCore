-- Quest 14375 "Last Chance at Humanity": on retail the quest is already in the log when the player wakes up as a worgen.
-- Nothing granted it; add it directly when the player turns in 14222 "Last Stand" at Lord Darius Crowley (35566).
UPDATE `smart_scripts` SET `link`=2 WHERE `entryorguid`=35566 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35566 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(35566,0,2,0,61,0,100,0,0,0,0,0,0,7,14375,1,0,0,0,0,7,0,0,0,0,0,0,0,'Lord Darius Crowley - Linked - Add quest Last Chance at Humanity (14375) to invoker');
