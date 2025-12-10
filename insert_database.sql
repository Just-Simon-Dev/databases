-- CLEAR EXISTING DATA TO PREVENT CONFLICTS
DELETE FROM CrashProbabilities;
DELETE FROM Anomalies;
DELETE FROM Events;
DELETE FROM Coordinates;
DELETE FROM Objects;
DELETE FROM SituationTypes;
DELETE FROM Constellations;
DELETE FROM Systems;
DELETE FROM Galaxies;
DELETE FROM ObjectTypes;

INSERT INTO ObjectTypes(ID, Name) VALUES
(1, 'Nebula'), (2, 'Neutron Star'), (3, 'Quasar'), (4, 'Brown Dwarf'), (5, 'Red Dwarf'),
(6, 'Exoplanet'), (7, 'Planet'), (8, 'Comet'), (9, 'Asteroid'), (10, 'Moon'),
(11, 'Black Hole'), (12, 'Supernova Remnant');

INSERT INTO Galaxies(Catalog_ID, Name) VALUES
('NGC 7003', 'Milky Way'), ('NGC 7004','Andromeda Galaxy'), ('NGC 7005','SagDEG Galaxy'),
('NGC 7006','Black Eye Galaxy'), ('NGC 1300', 'NGC 1300'), ('NGC 7007', 'Comet Galaxy'),
('NGC 6813', 'NGC 6813'), ('NGC 7000', 'North America Nebula'), ('NGC 7001', 'NGC 7001'),
('NGC 7002', 'NGC 7002');

INSERT INTO Systems(Catalog_ID, Name) VALUES
('SYS_001', 'Alpha Centauri'), ('SYS_002', 'Sirius'), ('SYS_003', 'Procyon'),
('SYS_004', 'Vega'), ('SYS_005', 'Rigel'), ('SYS_006', 'Deneb'),
('SYS_007', 'Canopus'), ('SYS_008', 'Altair'), ('SYS_009', 'Vega B'),
('SYS_010', 'Vega C');

INSERT INTO Constellations(Catalog_ID, Name) VALUES
('CON_001','Andromeda'), ('CON_002', 'Canopus'), ('CON_003', 'Coma Berenices'),
('CON_004', 'Corona Australis'), ('CON_005', 'Corona Borealis'), ('CON_006', 'Crater'),
('CON_007', 'Hydra'), ('CON_008', 'Lacerta'), ('CON_009', 'Mira'),
('CON_010', 'Orion');

INSERT INTO SituationTypes(ID, Name) VALUES
(1, 'Dimming'), (2, 'Brightening'), (3, 'Streaking'), (4, 'Blinking'), (5, 'Gravitational Wave'),
(6, 'Trajectory Shift'), (7, 'Solar Flare'), (8, 'Gamma Burst'), (9, 'Radio Signal'), (10, 'X-Ray Spike');


INSERT INTO Objects(Catalog_ID, Name, Object_Type_ID, Galaxy_ID, System_ID, Constellation_ID) VALUES
('OBJ_001', 'Alpha-1', 7, 'NGC 7003', 'SYS_001', 'CON_001'),
('OBJ_002', 'Beta-2', 7, 'NGC 7003', 'SYS_001', 'CON_001'),
('OBJ_003', 'Gamma-3', 2, 'NGC 7004', 'SYS_002', 'CON_002'),
('OBJ_004', 'Delta-4', 1, 'NGC 7004', 'SYS_002', 'CON_002'),
('OBJ_005', 'Epsilon-5', 9, 'NGC 7005', 'SYS_003', 'CON_003'),
('OBJ_006', 'Zeta-6', 8, 'NGC 7005', 'SYS_003', 'CON_003'),
('OBJ_007', 'Eta-7', 5, 'NGC 7006', 'SYS_004', 'CON_004'),
('OBJ_008', 'Theta-8', 6, 'NGC 7006', 'SYS_004', 'CON_004'),
('OBJ_009', 'Iota-9', 3, 'NGC 7007', 'SYS_005', 'CON_005'),
('OBJ_010', 'Kappa-10', 4, 'NGC 7007', 'SYS_005', 'CON_005'),
('OBJ_011', 'Lambda-11', 7, 'NGC 6813', 'SYS_006', 'CON_006'),
('OBJ_012', 'Mu-12', 10, 'NGC 6813', 'SYS_006', 'CON_006'),
('OBJ_013', 'Nu-13', 2, 'NGC 7000', 'SYS_007', 'CON_007'),
('OBJ_014', 'Xi-14', 9, 'NGC 7000', 'SYS_007', 'CON_007'),
('OBJ_015', 'Omicron-15', 8, 'NGC 7001', 'SYS_008', 'CON_008'),
('OBJ_016', 'Pi-16', 1, 'NGC 7001', 'SYS_008', 'CON_008'),
('OBJ_017', 'Rho-17', 5, 'NGC 7002', 'SYS_009', 'CON_009'),
('OBJ_018', 'Sigma-18', 6, 'NGC 7002', 'SYS_009', 'CON_009'),
('OBJ_019', 'Tau-19', 3, 'NGC 1300', 'SYS_010', 'CON_010'),
('OBJ_020', 'Upsilon-20', 4, 'NGC 1300', 'SYS_010', 'CON_010');

INSERT INTO Coordinates(Coordinate_ID, Coordinate_X, Coordinate_Y, Coordinate_Z, Observation_at, Object_ID) VALUES
(1001, 12.5, 45.2, 88.1, SYSUTCDATETIME(), 'OBJ_001'),
(1002, 13.1, 46.5, 89.2, SYSUTCDATETIME(), 'OBJ_002'),
(1003, 14.8, 41.2, 81.3, SYSUTCDATETIME(), 'OBJ_003'),
(1004, 15.2, 49.0, 90.5, SYSUTCDATETIME(), 'OBJ_004'),
(1005, 16.9, 50.1, 91.1, SYSUTCDATETIME(), 'OBJ_005'),
(1006, 17.0, 51.5, 92.4, SYSUTCDATETIME(), 'OBJ_006'),
(1007, 18.5, 52.3, 93.8, SYSUTCDATETIME(), 'OBJ_007'),
(1008, 19.1, 53.0, 94.2, SYSUTCDATETIME(), 'OBJ_008'),
(1009, 20.4, 54.1, 95.9, SYSUTCDATETIME(), 'OBJ_009'),
(1010, 21.8, 55.6, 96.0, SYSUTCDATETIME(), 'OBJ_010'),
(1011, 22.3, 56.7, 97.5, SYSUTCDATETIME(), 'OBJ_011'),
(1012, 23.9, 57.2, 98.1, SYSUTCDATETIME(), 'OBJ_012'),
(1013, 24.1, 58.8, 99.3, SYSUTCDATETIME(), 'OBJ_013'),
(1014, 25.5, 59.9, 100.1, SYSUTCDATETIME(), 'OBJ_014'),
(1015, 26.7, 60.1, 101.5, SYSUTCDATETIME(), 'OBJ_015'),
(1016, 27.2, 61.3, 102.8, SYSUTCDATETIME(), 'OBJ_016'),
(1017, 28.0, 62.4, 103.0, SYSUTCDATETIME(), 'OBJ_017'),
(1018, 29.5, 63.5, 104.2, SYSUTCDATETIME(), 'OBJ_018'),
(1019, 30.1, 64.1, 105.7, SYSUTCDATETIME(), 'OBJ_019'),
(1020, 31.4, 65.9, 106.1, SYSUTCDATETIME(), 'OBJ_020');

INSERT INTO Events(Event_ID, Start_Time, End_Time, Object_ID, Situation_Type_ID) VALUES
(2001, DATEADD(day, -10, SYSUTCDATETIME()), DATEADD(day, -9, SYSUTCDATETIME()), 'OBJ_001', 1),
(2002, DATEADD(day, -10, SYSUTCDATETIME()), DATEADD(day, -9, SYSUTCDATETIME()), 'OBJ_002', 2),
(2003, DATEADD(day, -8, SYSUTCDATETIME()), DATEADD(day, -7, SYSUTCDATETIME()), 'OBJ_003', 3),
(2004, DATEADD(day, -8, SYSUTCDATETIME()), NULL, 'OBJ_004', 4), -- Ongoing event
(2005, DATEADD(day, -7, SYSUTCDATETIME()), DATEADD(day, -6, SYSUTCDATETIME()), 'OBJ_005', 5),
(2006, DATEADD(day, -6, SYSUTCDATETIME()), DATEADD(day, -5, SYSUTCDATETIME()), 'OBJ_006', 6),
(2007, DATEADD(day, -6, SYSUTCDATETIME()), NULL, 'OBJ_007', 7),
(2008, DATEADD(day, -5, SYSUTCDATETIME()), DATEADD(day, -4, SYSUTCDATETIME()), 'OBJ_008', 8),
(2009, DATEADD(day, -4, SYSUTCDATETIME()), DATEADD(day, -3, SYSUTCDATETIME()), 'OBJ_009', 9),
(2010, DATEADD(day, -4, SYSUTCDATETIME()), NULL, 'OBJ_010', 10),
(2011, DATEADD(day, -3, SYSUTCDATETIME()), DATEADD(day, -2, SYSUTCDATETIME()), 'OBJ_011', 1),
(2012, DATEADD(day, -3, SYSUTCDATETIME()), DATEADD(day, -2, SYSUTCDATETIME()), 'OBJ_012', 2),
(2013, DATEADD(day, -2, SYSUTCDATETIME()), DATEADD(day, -1, SYSUTCDATETIME()), 'OBJ_013', 3),
(2014, DATEADD(day, -2, SYSUTCDATETIME()), NULL, 'OBJ_014', 4),
(2015, DATEADD(day, -1, SYSUTCDATETIME()), SYSUTCDATETIME(), 'OBJ_015', 5),
(2016, DATEADD(day, -1, SYSUTCDATETIME()), SYSUTCDATETIME(), 'OBJ_016', 6),
(2017, SYSUTCDATETIME(), NULL, 'OBJ_017', 7),
(2018, SYSUTCDATETIME(), NULL, 'OBJ_018', 8),
(2019, SYSUTCDATETIME(), NULL, 'OBJ_019', 9),
(2020, SYSUTCDATETIME(), NULL, 'OBJ_020', 10),
(2021, SYSUTCDATETIME(), NULL, 'OBJ_020', 9);

INSERT INTO Anomalies(Anomaly_ID, Description, Start_Time, End_Time, OBJECT_ID, Expected_Situation_Type_ID, Received_Situation_Type_ID) VALUES
(3001, 'Unexpected dimming', SYSUTCDATETIME(), NULL, 'OBJ_001', 2, 1),
(3002, 'Rapid brightening', SYSUTCDATETIME(), NULL, 'OBJ_002', 1, 2),
(3003, 'Odd streaking', SYSUTCDATETIME(), NULL, 'OBJ_003', 4, 3),
(3004, 'Erratic blinking', SYSUTCDATETIME(), NULL, 'OBJ_004', 3, 4),
(3005, 'Gravitational anomaly', SYSUTCDATETIME(), NULL, 'OBJ_005', 6, 5),
(3006, 'Path deviation', SYSUTCDATETIME(), NULL, 'OBJ_006', 5, 6),
(3007, 'High radiation', SYSUTCDATETIME(), NULL, 'OBJ_007', 8, 7),
(3008, 'Gamma spike', SYSUTCDATETIME(), NULL, 'OBJ_008', 7, 8),
(3009, 'Noise signal', SYSUTCDATETIME(), NULL, 'OBJ_009', 10, 9),
(3010, 'X-Ray drop', SYSUTCDATETIME(), NULL, 'OBJ_010', 9, 10),
(3011, 'Pattern mismatch', SYSUTCDATETIME(), NULL, 'OBJ_011', 2, 1),
(3012, 'Luminosity error', SYSUTCDATETIME(), NULL, 'OBJ_012', 1, 2),
(3013, 'Speed excess', SYSUTCDATETIME(), NULL, 'OBJ_013', 4, 3),
(3014, 'Signal loss', SYSUTCDATETIME(), NULL, 'OBJ_014', 3, 4),
(3015, 'Mass fluctuation', SYSUTCDATETIME(), NULL, 'OBJ_015', 6, 5),
(3016, 'Vector slide', SYSUTCDATETIME(), NULL, 'OBJ_016', 5, 6),
(3017, 'Heat bloom', SYSUTCDATETIME(), NULL, 'OBJ_017', 8, 7),
(3018, 'Cold spot', SYSUTCDATETIME(), NULL, 'OBJ_018', 7, 8),
(3019, 'Interference', SYSUTCDATETIME(), NULL, 'OBJ_019', 10, 9),
(3020, 'Data corruption', SYSUTCDATETIME(), NULL, 'OBJ_020', 9, 10);

INSERT INTO CrashProbabilities(ID, Probability, Calculated_At, Object_1_ID, Object_2_ID) VALUES
(4001, 0.05, SYSUTCDATETIME(), 'OBJ_001', 'OBJ_002'),
(4002, 0.15, SYSUTCDATETIME(), 'OBJ_003', 'OBJ_004'),
(4003, 0.25, SYSUTCDATETIME(), 'OBJ_005', 'OBJ_006'),
(4004, 0.01, SYSUTCDATETIME(), 'OBJ_007', 'OBJ_008'),
(4005, 0.88, SYSUTCDATETIME(), 'OBJ_009', 'OBJ_010'),
(4006, 0.12, SYSUTCDATETIME(), 'OBJ_011', 'OBJ_012'),
(4007, 0.34, SYSUTCDATETIME(), 'OBJ_013', 'OBJ_014'),
(4008, 0.56, SYSUTCDATETIME(), 'OBJ_015', 'OBJ_016'),
(4009, 0.78, SYSUTCDATETIME(), 'OBJ_017', 'OBJ_018'),
(4010, 0.99, SYSUTCDATETIME(), 'OBJ_019', 'OBJ_019'),
(4011, 0.02, SYSUTCDATETIME(), 'OBJ_001', 'OBJ_003'),
(4012, 0.04, SYSUTCDATETIME(), 'OBJ_002', 'OBJ_004'),
(4013, 0.06, SYSUTCDATETIME(), 'OBJ_005', 'OBJ_007'),
(4014, 0.08, SYSUTCDATETIME(), 'OBJ_006', 'OBJ_008'),
(4015, 0.10, SYSUTCDATETIME(), 'OBJ_009', 'OBJ_011'),
(4016, 0.22, SYSUTCDATETIME(), 'OBJ_010', 'OBJ_012'),
(4017, 0.33, SYSUTCDATETIME(), 'OBJ_013', 'OBJ_015'),
(4018, 0.44, SYSUTCDATETIME(), 'OBJ_014', 'OBJ_016'),
(4019, 0.55, SYSUTCDATETIME(), 'OBJ_017', 'OBJ_019'),
(4020, 0.66, SYSUTCDATETIME(), 'OBJ_018', 'OBJ_019');