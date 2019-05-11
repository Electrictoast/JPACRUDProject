-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema letsplaydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `letsplaydb` ;

-- -----------------------------------------------------
-- Schema letsplaydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `letsplaydb` DEFAULT CHARACTER SET utf8 ;
USE `letsplaydb` ;

-- -----------------------------------------------------
-- Table `boardgame`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `boardgame` ;

CREATE TABLE IF NOT EXISTS `boardgame` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `average_rating` DOUBLE UNSIGNED NULL,
  `min_players` INT UNSIGNED NULL,
  `max_players` INT UNSIGNED NULL,
  `max_playtime` INT UNSIGNED NULL,
  `min_playtime` INT UNSIGNED NULL,
  `release_year` INT UNSIGNED NULL,
  `age_range` VARCHAR(5) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS lpuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'lpuser'@'localhost' IDENTIFIED BY 'lpuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'lpuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `boardgame`
-- -----------------------------------------------------
START TRANSACTION;
USE `letsplaydb`;
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (1, '7 Wonders', 7.78227, 2, 7, 30, 30, 2010, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (2, 'Android: Netrunner', 7.89711, 2, 2, 45, 45, 2012, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (3, 'Arcadia Quest', 7.81861, 2, 4, 60, 60, 2014, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (4, 'Arcadia Quest: Inferno', 8.15423, 2, 4, 120, 60, 2017, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (5, 'Betrayal at House on the Hill', 7.0822, 3, 6, 60, 60, 2004, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (6, 'Blood Rage', 8.03061, 2, 4, 90, 60, 2015, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (7, 'Boss Monster: The Dungeon Building Card Game', 6.31347, 2, 4, 30, 30, 2013, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (8, 'Burgle Bros.', 7.61699, 1, 4, 90, 45, 2015, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (9, 'Captain Sonar', 7.64356, 2, 8, 60, 45, 2016, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (10, 'Carcassonne', 7.42676, 2, 5, 45, 30, 2000, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (11, 'Cards Against Humanity', 6.02315, 4, 30, 30, 30, 2009, '16+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (12, 'Catan', 7.19251, 3, 4, 120, 60, 1995, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (13, 'Champions of Midgard', 7.79451, 2, 4, 90, 60, 2015, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (14, 'Clank! In! Space!', 7.90383, 2, 4, 60, 60, 2017, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (15, 'Clank!: A Deck-Building Adventure', 7.81731, 2, 4, 60, 30, 2016, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (16, 'Codenames', 7.71404, 2, 8, 15, 15, 2015, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (17, 'Coup', 7.03946, 2, 6, 15, 15, 2012, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (18, 'Dice Forge', 7.33438, 2, 4, 45, 45, 2017, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (19, 'Dominion', 7.64578, 2, 4, 30, 30, 2008, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (20, 'Dungeon Fighter', 6.85163, 1, 6, 45, 45, 2011, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (21, 'Dungeon Petz', 7.51464, 2, 4, 90, 90, 2011, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (22, 'Dungeon Roll', 6.14484, 1, 4, 15, 15, 2013, '6+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (23, 'Dungeon Twister', 6.83832, 2, 2, 60, 60, 2004, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (24, 'Epic Spell Wars of the Battle Wizards: Duel at Mt. Skullzfyre', 6.5696, 2, 6, 30, 30, 2012, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (25, 'Exploding Kittens', 5.94363, 2, 5, 15, 15, 2015, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (26, 'Gloomhaven', 8.90205, 1, 4, 120, 60, 2017, '14+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (27, 'Hero Realms', 7.68938, 2, 4, 30, 20, 2016, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (28, 'HeroQuest', 7.10219, 2, 5, 90, 90, 1989, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (29, 'Hive', 7.32434, 2, 2, 20, 20, 2001, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (30, 'Kemet', 7.75106, 2, 5, 120, 90, 2012, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (31, 'KeyForge: Call of the Archons', 7.67912, 2, 2, 45, 15, 2018, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (32, 'King of New York', 7.02459, 2, 6, 40, 40, 2014, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (33, 'King of Tokyo', 7.23108, 2, 6, 30, 30, 2011, '6+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (34, 'Legendary: A Marvel Deck Building Game', 7.60389, 1, 5, 45, 45, 2012, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (35, 'Love Letter', 7.25404, 2, 4, 20, 20, 2012, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (36, 'Mage Knight Board Game', 8.10474, 1, 4, 240, 60, 2011, '14+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (37, 'Mage Wars Arena', 7.68563, 2, 2, 90, 90, 2012, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (38, 'Mechs vs. Minions', 8.13063, 2, 4, 90, 60, 2016, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (39, 'Munchkin', 5.92134, 3, 6, 120, 60, 2001, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (40, 'Neuroshima Hex! 3.0', 7.41878, 1, 4, 30, 30, 2006, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (41, 'One Deck Dungeon', 7.21729, 1, 2, 45, 30, 2016, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (42, 'Quarriors!', 6.78212, 2, 4, 30, 30, 2011, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (43, 'The Resistance', 7.33672, 5, 10, 30, 30, 2009, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (44, 'Roll for the Galaxy', 7.73106, 2, 5, 45, 45, 2014, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (45, 'Roll Player', 7.53081, 1, 4, 90, 60, 2016, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (46, 'Scythe', 8.28834, 1, 5, 115, 90, 2016, '12+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (47, 'Secret Hitler', 7.58867, 5, 10, 45, 45, 2016, '14+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (48, 'Sentinels of the Multiverse', 7.27649, 2, 5, 60, 30, 2011, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (49, 'Small World', 7.30039, 2, 5, 80, 40, 2009, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (50, 'Smash Up', 6.80508, 2, 4, 45, 45, 2012, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (51, 'Spot it!', 6.65817, 2, 8, 15, 15, 2009, '4+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (52, 'Star Realms', 7.6088, 2, 2, 20, 20, 2014, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (53, 'Summoner Wars: Master Set', 7.55587, 2, 4, 60, 30, 2011, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (54, 'Super Punch Fighter', 4.5, 1, 6, 45, 45, 2019, '');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (55, 'Sushi Go Party!', 7.51953, 2, 8, 20, 20, 2016, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (56, 'Sword & Sorcery', 8.14715, 1, 5, 90, 60, 2017, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (57, 'Ticket to Ride', 7.44761, 2, 5, 60, 30, 2004, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (58, 'Tiny Epic Galaxies', 7.39719, 1, 5, 60, 30, 2015, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (59, 'Welcome to the Dungeon', 6.66029, 2, 4, 30, 30, 2013, '8+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (60, 'Zombicide', 7.21184, 1, 6, 60, 60, 2012, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (61, 'Zombicide: Black Plague', 7.74149, 1, 6, 180, 60, 2015, '10+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (62, 'Zombie Dice', 6.21871, 2, 99, 20, 10, 2010, '6+');
INSERT INTO `boardgame` (`id`, `title`, `average_rating`, `min_players`, `max_players`, `max_playtime`, `min_playtime`, `release_year`, `age_range`) VALUES (63, 'Zombie Fluxx', 6.01033, 2, 6, 40, 10, 2007, '8+');

COMMIT;

