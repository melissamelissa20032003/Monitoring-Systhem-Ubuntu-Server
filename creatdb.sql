PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE sdata (  
id INTEGER PRIMARY KEY AUTOINCREMENT,
date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
,
descri TEXT,
cpu FLOAT,
mem FLOAT,
users INTEGER
);
INSERT INTO sdata VALUES(270,'2024-03-24 08:49:03',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(271,'2024-03-24 08:50:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(272,'2024-03-24 08:51:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(273,'2024-03-24 08:52:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(274,'2024-03-24 08:53:02',NULL,4.0,182.0,1);
INSERT INTO sdata VALUES(275,'2024-03-24 08:53:42',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(276,'2024-03-24 08:54:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(277,'2024-03-24 08:55:02',NULL,3.0,182.0,1);
INSERT INTO sdata VALUES(278,'2024-03-24 08:55:03',NULL,4.0,182.0,1);
INSERT INTO sdata VALUES(279,'2024-03-24 08:56:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(280,'2024-03-24 08:57:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(281,'2024-03-24 08:58:03',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(282,'2024-03-24 08:59:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(283,'2024-03-24 08:59:56',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(284,'2024-03-24 09:00:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(285,'2024-03-24 09:00:14',NULL,1.0,182.0,1);
INSERT INTO sdata VALUES(286,'2024-03-24 09:00:25',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(287,'2024-03-24 09:01:02',NULL,1.0,182.0,1);
INSERT INTO sdata VALUES(288,'2024-03-24 09:02:03',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(289,'2024-03-24 09:03:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(290,'2024-03-24 09:04:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(291,'2024-03-24 09:05:02',NULL,1.0,182.0,1);
INSERT INTO sdata VALUES(292,'2024-03-24 09:06:02',NULL,1.0,182.0,1);
INSERT INTO sdata VALUES(293,'2024-03-24 09:07:03',NULL,1.0,180.99999999999999999,1);
INSERT INTO sdata VALUES(294,'2024-03-24 09:08:02',NULL,1.0,183.0,1);
INSERT INTO sdata VALUES(295,'2024-03-24 09:09:02',NULL,0.0,183.0,1);
INSERT INTO sdata VALUES(296,'2024-03-24 09:10:02',NULL,0.0,183.0,1);
INSERT INTO sdata VALUES(297,'2024-03-24 09:11:03',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(298,'2024-03-24 09:12:02',NULL,0.0,182.0,1);
INSERT INTO sdata VALUES(299,'2024-03-24 09:13:02',NULL,0.0,182.0,1);
COMMIT;
