-- Quest 24646 "Take Back What's Ours": the only Worn Coffer (gameobject 201939, guid 236595) with quest item 50086 respawns after 7200 s.
UPDATE `gameobject` SET `spawntimesecs` = 30 WHERE `guid` = 236595 AND `id` = 201939;
