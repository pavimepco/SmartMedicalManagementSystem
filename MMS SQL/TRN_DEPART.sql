--------------------------------------------------------
--  File created - Friday-May-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TRN_DEPART
--------------------------------------------------------

  CREATE TABLE "HR"."TRN_DEPART" 
   (	"DEPT_ID" NUMBER(20,0), 
	"DEPT_NAME" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.TRN_DEPART
SET DEFINE OFF;
Insert into HR.TRN_DEPART (DEPT_ID,DEPT_NAME) values (1,'Orthology');
Insert into HR.TRN_DEPART (DEPT_ID,DEPT_NAME) values (2,'General Medicine');
Insert into HR.TRN_DEPART (DEPT_ID,DEPT_NAME) values (3,'Orthopedics');
Insert into HR.TRN_DEPART (DEPT_ID,DEPT_NAME) values (5,'Neurology');
--------------------------------------------------------
--  DDL for Index SYS_C004263
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C004263" ON "HR"."TRN_DEPART" ("DEPT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TRN_DEPART
--------------------------------------------------------

  ALTER TABLE "HR"."TRN_DEPART" MODIFY ("DEPT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."TRN_DEPART" ADD PRIMARY KEY ("DEPT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
