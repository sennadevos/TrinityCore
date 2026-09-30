-- Quest 14293 "Save Krennan Aranas": King Greymane's Horse (35905) runs its scripted path at the default creature speed (speed_run 1.2857); make it faster, mount-like.
UPDATE `creature_template` SET `speed_run` = 2.0 WHERE `entry` = 35905;
