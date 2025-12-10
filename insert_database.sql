INSERT INTO ObjectTypes(Name) VALUES
                                  ('Nebula'),
                                  ('Neutron Star'),
                                  ('Quasar'),
                                  ('Brown Dwarf'),
                                  ('Red Dwarf'),
                                  ('Exoplanet'),
                                  ('Planet'),
                                  ('Comet'),
                                  ('Asteroid'),
                                  ('Moon');

INSERT INTO Galaxies(Catalog_ID, Name) VALUES
                               ('NGC 7003', 'Milky Way'),
                               ('NGC 7004','Andromeda Galaxy'),
                               ('NGC 7005','SagDEG Galaxy'),
                               ('NGC 7006','Black Eye Galaxy'),
                               ('NGC 1300', 'NGC 1300'),
                               ('NGC 7007', 'Comet Galaxy'),
                               ('NGC 6813', 'NGC 6813'),
                               ('NGC 7000', 'NGC 7000'),
                               ('NGC 7001', 'NGC 7001'),
                               ('NGC 7002', 'NGC 7002');

INSERT INTO Systems(Name) VALUES
                              ('Alpha Centauri'),
                               ('Sirius'),
                               ('Procyon'),
                               ('Vega'),
                               ('Rigel'),
                               ('Deneb'),
                               ('Canopus'),
                               ('Altair'),
                               ('Vega B'),
                               ('Vega C');

INSERT INTO Constellations(Catalog_ID, Name) VALUES
                                     ('NGC 6001','Andromeda'),
                                     ('NGC 6002', 'Canopus'),
                                     ('NGC 6003', 'Coma Berenices'),
                                     ('NGC 6004', 'Corona Australis'),
                                     ('NGC 6005', 'Corona Borealis'),
                                     ('NGC 6006', 'Cratered Planet'),
                                     ('NGC 6007', 'Hydrae'),
                                     ('NGC 6008', 'Lacerta'),
                                     ('NGC 6009', 'Mira'),
                                     ('NGC 6010', 'Orion');

INSERT INTO SituationTypes(Type) VALUES
                                     ('Dimming'),
                                     ('Brightening'),
                                     ('Streaking'),
                                     ('Blinking'),
                                     ('Gravitational'),
                                     ('Trajectory'),
                                     ('Other');

INSERT INTO Objects(Catalog_ID, Name, Object_Type_ID, Galaxy_ID, System_ID, Constellation_ID) VALUES
                                                                                                  ('NGC 2137', 'Dwarf Star', 4, 'NGC 7002', 'NGC 6002', 3),
                                                                                                  ('NGC 2138', 'Giant Star', 4, 'NGC 7003', 'NGC 6002', 3),
                                                                                                  ('NGC 2139', 'Cerber Star', 4, 'NGC 7002', 'NGC 6001', 1),
                                                                                                  ('NGC 10', 'Jupiter', 7, 'NGC 7003','NGC 6001', 1 );