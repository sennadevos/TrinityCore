-- Quest 14212 "Sacrifices": Crowley's Horse (35231, 44428) runs at the default speed (speed_run 1.2857) and is
-- killed by the pack of worgen it drags along before the route ends. Faster (2.0 and 1.7 were too fast in play; 1.5) and tougher.
UPDATE `creature_template` SET `speed_run` = 1.5, `HealthModifier` = 60 WHERE `entry` IN (35231, 44428);
