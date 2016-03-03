-- ****** Object: Table HR.JOBS Script Date: 3/2/2016 6:39:58 PM ******
  CREATE TABLE "JOBS" 
   (	"JOB_ID" VARCHAR2(10),
	"JOB_TITLE" VARCHAR2(35) CONSTRAINT "JOB_TITLE_NN" NOT NULL ENABLE,
	"MIN_SALARY" NUMBER(6,0),
	"MAX_SALARY" NUMBER(6,0),
	CONSTRAINT "JOB_ID_PK" PRIMARY KEY ("JOB_ID") ENABLE
   );