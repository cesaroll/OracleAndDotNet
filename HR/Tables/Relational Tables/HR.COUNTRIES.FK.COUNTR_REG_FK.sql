-- ****** Object: Constraint HR.COUNTR_REG_FK Script Date: 3/2/2016 6:39:58 PM ******
ALTER TABLE "COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID") REFERENCES "REGIONS"("REGION_ID") ENABLE;
