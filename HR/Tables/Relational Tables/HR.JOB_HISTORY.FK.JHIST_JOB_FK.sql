-- ****** Object: Constraint HR.JHIST_JOB_FK Script Date: 3/2/2016 6:39:58 PM ******
ALTER TABLE "JOB_HISTORY" ADD CONSTRAINT "JHIST_JOB_FK" FOREIGN KEY ("JOB_ID") REFERENCES "JOBS"("JOB_ID") ENABLE;