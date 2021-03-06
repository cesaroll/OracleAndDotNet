-- ****** Object: Table HR.LOCATIONS Script Date: 3/2/2016 6:39:58 PM ******
  CREATE TABLE "LOCATIONS" 
   (	"LOCATION_ID" NUMBER(4,0),
	"STREET_ADDRESS" VARCHAR2(40),
	"POSTAL_CODE" VARCHAR2(12),
	"CITY" VARCHAR2(30) CONSTRAINT "LOC_CITY_NN" NOT NULL ENABLE,
	"STATE_PROVINCE" VARCHAR2(25),
	"COUNTRY_ID" CHAR(2),
	CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID") ENABLE
   );