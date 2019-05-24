--------------------------------------------------------
--  File created - Friday-May-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MMS_EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "HR"."MMS_EMPLOYEE" 
   (	"EMP_ID" NUMBER(20,0), 
	"EMP_NAME" VARCHAR2(50 BYTE), 
	"EMP_DESIG" VARCHAR2(50 BYTE), 
	"EMP_GENDER" VARCHAR2(10 BYTE), 
	"DEPT_ID" NUMBER(20,0), 
	"EMP_EMAIL" VARCHAR2(60 BYTE), 
	"EMP_PWD" VARCHAR2(20 BYTE), 
	"CREATED_AT" TIMESTAMP (6) WITH TIME ZONE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MMS_EMPLOYEE
SET DEFINE OFF;
Insert into HR.MMS_EMPLOYEE (EMP_ID,EMP_NAME,EMP_DESIG,EMP_GENDER,DEPT_ID,EMP_EMAIL,EMP_PWD,CREATED_AT) values (2,'Janani','Nurse','Female',1,'jaanu@gmail.com','okay1',to_timestamp_tz('09-05-19 02:16:15.796000000 PM ASIA/CALCUTTA','DD-MM-RR HH12:MI:SSXFF AM TZR'));
Insert into HR.MMS_EMPLOYEE (EMP_ID,EMP_NAME,EMP_DESIG,EMP_GENDER,DEPT_ID,EMP_EMAIL,EMP_PWD,CREATED_AT) values (21,'Anu','Nurse','Female',3,'anu@gmail.com','anuu',to_timestamp_tz('23-05-19 08:51:25.012000000 PM ASIA/CALCUTTA','DD-MM-RR HH12:MI:SSXFF AM TZR'));
Insert into HR.MMS_EMPLOYEE (EMP_ID,EMP_NAME,EMP_DESIG,EMP_GENDER,DEPT_ID,EMP_EMAIL,EMP_PWD,CREATED_AT) values (22,'Priya','Nurse','Female',5,'priya8@gmail.com','priya91',to_timestamp_tz('23-05-19 08:52:44.178000000 PM ASIA/CALCUTTA','DD-MM-RR HH12:MI:SSXFF AM TZR'));
Insert into HR.MMS_EMPLOYEE (EMP_ID,EMP_NAME,EMP_DESIG,EMP_GENDER,DEPT_ID,EMP_EMAIL,EMP_PWD,CREATED_AT) values (8,'Adam Brain','Doctor','Male',3,'adam@gmail.com','12345',to_timestamp_tz('17-05-19 02:18:47.524000000 PM ASIA/CALCUTTA','DD-MM-RR HH12:MI:SSXFF AM TZR'));
Insert into HR.MMS_EMPLOYEE (EMP_ID,EMP_NAME,EMP_DESIG,EMP_GENDER,DEPT_ID,EMP_EMAIL,EMP_PWD,CREATED_AT) values (9,'Blian Judge','Doctor','Male',5,'judge@gmail.com','123',to_timestamp_tz('17-05-19 02:20:42.729000000 PM ASIA/CALCUTTA','DD-MM-RR HH12:MI:SSXFF AM TZR'));
Insert into HR.MMS_EMPLOYEE (EMP_ID,EMP_NAME,EMP_DESIG,EMP_GENDER,DEPT_ID,EMP_EMAIL,EMP_PWD,CREATED_AT) values (10,'Roofus','Doctor','Male',2,'roofus@gmail.com','pass',to_timestamp_tz('17-05-19 02:21:26.505000000 PM ASIA/CALCUTTA','DD-MM-RR HH12:MI:SSXFF AM TZR'));
--------------------------------------------------------
--  DDL for Index SYS_C004272
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C004272" ON "HR"."MMS_EMPLOYEE" ("EMP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MMS_E_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MMS_E_EMAIL_UK" ON "HR"."MMS_EMPLOYEE" ("EMP_EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MMS_E_PWD_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MMS_E_PWD_UK" ON "HR"."MMS_EMPLOYEE" ("EMP_PWD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MMS_EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "HR"."MMS_EMPLOYEE" ADD CONSTRAINT "MMS_E_EMAIL_UK" UNIQUE ("EMP_EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" ADD CONSTRAINT "MMS_E_PWD_UK" UNIQUE ("EMP_PWD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" MODIFY ("EMP_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" MODIFY ("EMP_DESIG" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" MODIFY ("EMP_GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" MODIFY ("EMP_EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" MODIFY ("EMP_PWD" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MMS_EMPLOYEE" ADD PRIMARY KEY ("EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
