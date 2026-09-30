-- Quest 24501 "Queen-Sized Troubles": Rygna (37045) is spawned twice on the exact same spot (guids 256209, 256318). Remove the duplicate.
DELETE FROM `creature` WHERE `guid` = 256318 AND `id` = 37045;
