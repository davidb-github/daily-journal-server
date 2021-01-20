CREATE TABLE `Entries` (
	`id`	    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`date`      DATE NOT NULL,
    `concept`	VARCHAR NOT NULL,
	`entry`	    VARCHAR NOT NULL,
    `mood_id`   INTEGER NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);


CREATE TABLE `Mood` (
    `id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` VARCHAR NOT NULL
);

INSERT INTO `Mood` VALUES (null, "Excited");
INSERT INTO `Mood` VALUES (null, "Tired");
INSERT INTO `Mood` VALUES (null, "Frustrated");


INSERT INTO `Entries` VALUES (null, "01/16/2020", "Python Classes", "It was long day", 1);
INSERT INTO `Entries` VALUES (null, "01/17/2020", "SQL Queries", "It was good day", 2);
INSERT INTO `Entries` VALUES (null, "01/18/2020", "SQL Create/Insert statements", "It was fun day", 3);

SELECT * FROM Entries;

SELECT * FROM Mood;