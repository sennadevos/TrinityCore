-- Same bug as gilneas-loren-trainer.sql: Huntsman Blake (35874, 44461; menu 10697) and Vitus Darkwalker (35869, 44469;
-- menu 10702 / 36652, 38797; menu 10840) have gossip menus without options, and creature_trainer only links them
-- via (MenuID 0, OptionID 3). Add the standard trainer option and link it to each creature's existing trainer.
INSERT IGNORE INTO `gossip_menu_option` (`MenuID`,`OptionID`,`OptionIcon`,`OptionText`,`OptionBroadcastTextID`,`OptionType`,`OptionNpcflag`,`ActionMenuID`,`ActionPoiID`,`BoxCoded`,`BoxMoney`,`BoxText`,`BoxBroadcastTextID`,`VerifiedBuild`) VALUES
(10697,0,3,'I seek training in the ways of the Hunter.',7643,5,16,0,0,0,0,NULL,0,0),
(10702,0,3,'I am interested in warlock training.',2544,5,16,0,0,0,0,NULL,0,0),
(10840,0,3,'I am interested in warlock training.',2544,5,16,0,0,0,0,NULL,0,0);
INSERT IGNORE INTO `creature_trainer` (`CreatureID`,`TrainerID`,`MenuID`,`OptionID`) VALUES
(35874,15,10697,0),(44461,40,10697,0),(35869,32,10702,0),(44469,154,10702,0),(36652,154,10840,0),(38797,154,10840,0);
