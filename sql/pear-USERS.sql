CREATE USER 'customer' IDENTIFIED BY 'customer';

GRANT SELECT ON TABLE `pear`.`SalesPoint` TO 'customer';
CREATE USER 'visitor' IDENTIFIED BY 'visitor';

CREATE USER 'administrator' IDENTIFIED BY 'administrator';

GRANT REFERENCES, SELECT ON TABLE `pear`.`City` TO 'administrator';
GRANT SELECT, UPDATE, TRIGGER, REFERENCES, INDEX, INSERT, SELECT, UPDATE, TRIGGER ON TABLE `pear`.`SalesPoint` TO 'administrator';
GRANT SELECT, UPDATE, TRIGGER, INDEX, INSERT, REFERENCES ON TABLE `pear`.`Employee` TO 'administrator';
GRANT SELECT ON TABLE `pear`.`SalesPoint` TO 'administrator';
CREATE USER 'employee' IDENTIFIED BY 'employee';

GRANT SELECT ON TABLE `pear`.`SalesPoint` TO 'employee';
