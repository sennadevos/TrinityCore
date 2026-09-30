-- Loren the Fence (Gilneas rogue trainer; 35871, 36630, 38796, 44464, 50498): her gossip menus 10699/10843/12517 have
-- no options at all and creature_trainer only has (MenuID 0, OptionID 3) rows, so there is no working "train me" option.
-- Add the standard rogue trainer option (as in menu 4502) and link it to her trainer.
INSERT IGNORE INTO `gossip_menu_option` (`MenuID`,`OptionID`,`OptionIcon`,`OptionText`,`OptionBroadcastTextID`,`OptionType`,`OptionNpcflag`,`ActionMenuID`,`ActionPoiID`,`BoxCoded`,`BoxMoney`,`BoxText`,`BoxBroadcastTextID`,`VerifiedBuild`) VALUES
(10699,0,3,'Can you train me how to use rogue skills?',7491,5,16,0,0,0,0,NULL,0,0),
(10843,0,3,'Can you train me how to use rogue skills?',7491,5,16,0,0,0,0,NULL,0,0),
(12517,0,3,'Can you train me how to use rogue skills?',7491,5,16,0,0,0,0,NULL,0,0);
INSERT IGNORE INTO `creature_trainer` (`CreatureID`,`TrainerID`,`MenuID`,`OptionID`) VALUES
(35871,17,10699,0),(44464,33,10699,0),(36630,33,10843,0),(38796,33,10843,0),(50498,33,12517,0);
