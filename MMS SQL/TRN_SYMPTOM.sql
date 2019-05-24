--------------------------------------------------------
--  File created - Friday-May-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TRN_SYMPTOM
--------------------------------------------------------

  CREATE TABLE "HR"."TRN_SYMPTOM" 
   (	"SYM_ID" NUMBER(20,0), 
	"SYM_NAME" VARCHAR2(60 BYTE), 
	"DEP_ID" NUMBER(20,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.TRN_SYMPTOM
SET DEFINE OFF;
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (2,'Fever',2);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (21,'Fracture',3);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (22,'Sprain',3);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (23,'Foot Pain',3);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (24,'Bone Dislocation',3);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (25,'Ligament tear',3);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (26,'Knee Injury',3);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (27,'Stroke',5);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (28,'Epilepsy',5);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (29,'Dizziness',5);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (30,'Tremor',5);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (31,'Numbness',5);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (32,'Cough',2);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (33,'Headache',2);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (34,'Sleeplessness',2);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (35,'Stomach pain',2);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (36,'Allergy',2);
Insert into HR.TRN_SYMPTOM (SYM_ID,SYM_NAME,DEP_ID) values (3,'Migrane',5);
--------------------------------------------------------
--  DDL for Index SYS_C004265
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C004265" ON "HR"."TRN_SYMPTOM" ("SYM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TRN_SYMPTOM
--------------------------------------------------------

  ALTER TABLE "HR"."TRN_SYMPTOM" MODIFY ("SYM_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."TRN_SYMPTOM" ADD PRIMARY KEY ("SYM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
