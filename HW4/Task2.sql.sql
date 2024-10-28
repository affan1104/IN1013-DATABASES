-- Affan Nazir IN1013 - HW4: TASK 2 (Update)

INSERT INTO petEvent VALUES ("Fluffy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petPet VALUES ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);
INSERT INTO petEvent VALUES ("Hammy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petEvent VALUES ("Fluffy", "2020-10-15", "litter", "5 kittens, 3 female, 2 male");

UPDATE petEvent SET petname = "Claws" WHERE eventdate = "1997-08-03" AND remark = "broken rib";

UPDATE petPet SET death = "2020-09-01" WHERE petname = "Puffball";

ALTER TABLE petEvent DROP FOREIGN KEY petevent_ibfk_1;
ALTER TABLE petEvent ADD CONSTRAINT fk_petname FOREIGN KEY (petname) REFERENCES petPet(petName) ON DELETE CASCADE;

DELETE FROM petPet WHERE owner = "Harold" AND species = "dog";