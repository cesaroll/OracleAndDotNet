-- ****** Object: Table Trigger HR.SECURE_EMPLOYEES Script Date: 3/2/2016 6:39:58 PM ******
  CREATE OR REPLACE TRIGGER "SECURE_EMPLOYEES"
  BEFORE INSERT OR UPDATE OR DELETE ON "EMPLOYEES"
  BEGIN
  secure_dml;
END secure_employees;
/