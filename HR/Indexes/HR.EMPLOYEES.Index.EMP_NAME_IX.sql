-- ****** Object: Index HR.EMP_NAME_IX Script Date: 3/2/2016 6:39:58 PM ******
  CREATE INDEX "EMP_NAME_IX" ON "EMPLOYEES" ("LAST_NAME","FIRST_NAME")
  NOLOGGING;