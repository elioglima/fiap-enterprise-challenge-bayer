--------------------------------------------------------
--  File created - Thursday-June-09-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BAYER_ALERTPOINT
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_ALERTPOINT" 
   (	"ID" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_CATEGORY
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_CATEGORY" 
   (	"ID" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_DOCUMENTTYPE
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_DOCUMENTTYPE" 
   (	"ID" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_INSTITUTION
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_INSTITUTION" 
   (	"ID" NUMBER(*,0), 
	"SOCIALREASON" VARCHAR2(200 BYTE), 
	"CNPJ" VARCHAR2(45 BYTE), 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_INSTITUTIONADDRESS
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" 
   (	"ID" NUMBER(*,0), 
	"address " VARCHAR2(100 BYTE), 
	"number " NUMBER, 
	"ZIPCODE" VARCHAR2(10 BYTE), 
	"COMPLEMENT" VARCHAR2(1000 BYTE), 
	"DISTRICT" VARCHAR2(100 BYTE), 
	"city " VARCHAR2(100 BYTE), 
	"STATE" VARCHAR2(100 BYTE), 
	"UNIT" VARCHAR2(2 BYTE), 
	"date_create " TIMESTAMP (6), 
	"date_update " TIMESTAMP (6), 
	"INSTITUTION_ID" NUMBER(*,0), 
	"LOCATIONTYPE_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_LOCATIONTYPE
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_LOCATIONTYPE" 
   (	"ID" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_OCORRENCES
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_OCORRENCES" 
   (	"ID" NUMBER(*,0), 
	"note " VARCHAR2(1000 BYTE), 
	"notetext " CLOB, 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT current_timestamp, 
	"USER_ID" NUMBER(*,0), 
	"ALERTPOINT_ID" NUMBER(*,0), 
	"CATEGORY_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" 
 LOB ("notetext ") STORE AS SECUREFILE (
  TABLESPACE "TBSPC_ALUNOS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table BAYER_USER
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_USER" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"MAIL" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"DOCUMENUMBER" VARCHAR2(100 BYTE), 
	"birthdate " DATE, 
	"DATE_CREATE" TIMESTAMP (6), 
	"DATE_UPDATE" TIMESTAMP (6), 
	"DOCUMENTTYPE_ID" NUMBER(*,0), 
	"INSTITUTION_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Table BAYER_USERADDRESS
--------------------------------------------------------

  CREATE TABLE "RM92270"."BAYER_USERADDRESS" 
   (	"ID" NUMBER(*,0), 
	"address " VARCHAR2(100 BYTE), 
	"number " NUMBER, 
	"ZIPCODE" VARCHAR2(10 BYTE), 
	"COMPLEMENT" VARCHAR2(1000 BYTE), 
	"DISTRICT" VARCHAR2(100 BYTE), 
	"city " VARCHAR2(100 BYTE), 
	"STATE" VARCHAR2(100 BYTE), 
	"UNIT" VARCHAR2(2 BYTE), 
	"date_create " TIMESTAMP (6), 
	"date_update " TIMESTAMP (6), 
	"USER_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "TBSPC_ALUNOS" ;
  
--------------------------------------------------------
--  DDL for Index ALERTPOINT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."ALERTPOINT_PK" ON "RM92270"."BAYER_ALERTPOINT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."CATEGORY_PK" ON "RM92270"."BAYER_CATEGORY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index DOCUMENTTYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."DOCUMENTTYPE_PK" ON "RM92270"."BAYER_DOCUMENTTYPE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index INSTITUTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."INSTITUTION_PK" ON "RM92270"."BAYER_INSTITUTION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index INSTITUTION_ADDRESS_PKV1
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."INSTITUTION_ADDRESS_PKV1" ON "RM92270"."BAYER_INSTITUTIONADDRESS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index LOCATIONTYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."LOCATIONTYPE_PK" ON "RM92270"."BAYER_LOCATIONTYPE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index OCORRENCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."OCORRENCES_PK" ON "RM92270"."BAYER_OCORRENCES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index BAYER_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."BAYER_USER_PK" ON "RM92270"."BAYER_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index BAYER_UAS_PKV1
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM92270"."BAYER_UAS_PKV1" ON "RM92270"."BAYER_USERADDRESS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Trigger BAYER_ALERTPOINT_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_ALERTPOINT_ID_TRG" 
BEFORE INSERT ON bayer_alertpoint 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_alertpoint_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_ALERTPOINT_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_CATEGORY_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_CATEGORY_ID_TRG" 
BEFORE INSERT ON bayer_category 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_category_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_CATEGORY_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_DOCUMENTTYPE_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_DOCUMENTTYPE_ID_TRG" 
BEFORE INSERT ON bayer_documenttype 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_documenttype_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_DOCUMENTTYPE_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_INSTITUTION_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_INSTITUTION_ID_TRG" 
BEFORE INSERT ON bayer_institution 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_institution_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_INSTITUTION_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_INSTITUTIONADDRESS_ID
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_INSTITUTIONADDRESS_ID" 
BEFORE INSERT ON bayer_institutionaddress 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_institutionaddress_id.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_INSTITUTIONADDRESS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_LOCATIONTYPE_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_LOCATIONTYPE_ID_TRG" 
BEFORE INSERT ON bayer_locationtype 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_locationtype_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_LOCATIONTYPE_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_OCORRENCES_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_OCORRENCES_ID_TRG" 
BEFORE INSERT ON bayer_ocorrences 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_ocorrences_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_OCORRENCES_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BAYER_USER_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM92270"."BAYER_USER_ID_TRG" 
BEFORE INSERT ON bayer_user 
FOR EACH ROW 
 WHEN (NEW.id IS NULL) BEGIN
:new.id := bayer_user_id_seq.nextval;

end;

/
ALTER TRIGGER "RM92270"."BAYER_USER_ID_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table BAYER_ALERTPOINT
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_ALERTPOINT" ADD CONSTRAINT "ALERTPOINT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_ALERTPOINT" MODIFY ("ID" CONSTRAINT "NNC_ALERTPOINT_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_ALERTPOINT" MODIFY ("DATE_UPDATE" CONSTRAINT "NNC_DOCUMENTTYPEV1_DATE_UPDATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_ALERTPOINT" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_ALERTPOINT" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_CATEGORY
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_CATEGORY" MODIFY ("DATE_UPDATE" CONSTRAINT "NNC_ALERTPOINTV1_DATE_UPDATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_CATEGORY" MODIFY ("ID" CONSTRAINT "NNC_CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_CATEGORY" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_CATEGORY" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_DOCUMENTTYPE
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_DOCUMENTTYPE" ADD CONSTRAINT "DOCUMENTTYPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_DOCUMENTTYPE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_DOCUMENTTYPE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_DOCUMENTTYPE" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_DOCUMENTTYPE" MODIFY ("DATE_UPDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_INSTITUTION
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_INSTITUTION" ADD CONSTRAINT "INSTITUTION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_INSTITUTION" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTION" MODIFY ("SOCIALREASON" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTION" MODIFY ("CNPJ" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTION" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTION" MODIFY ("DATE_UPDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_INSTITUTIONADDRESS
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" ADD CONSTRAINT "INSTITUTION_ADDRESS_PKV1" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("DISTRICT" CONSTRAINT "NNC_INSTADDDISTRICT" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("INSTITUTION_ID" CONSTRAINT "NNC_INSTADDINSTITUTIONID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("LOCATIONTYPE_ID" CONSTRAINT "NNC_INSTADDLOCATIONTYPEID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("STATE" CONSTRAINT "NNC_INSTADDSTATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("UNIT" CONSTRAINT "NNC_INSTADDUNIT" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("ZIPCODE" CONSTRAINT "NNC_INSTADDZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("ID" CONSTRAINT "NNC_INSTITUTION_ADDRESS_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("number " CONSTRAINT "NNC_instADDnumber " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("city " CONSTRAINT "NNC_instaddcity " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("date_create " CONSTRAINT "NNC_instadddate_create " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("date_update " CONSTRAINT "NNC_instadddate_update " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" MODIFY ("address " CONSTRAINT "NNC_instaddress " NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_LOCATIONTYPE
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_LOCATIONTYPE" ADD CONSTRAINT "LOCATIONTYPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_LOCATIONTYPE" MODIFY ("DATE_UPDATE" CONSTRAINT "NNC_LOCATIONTYPEDATEUPDATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_LOCATIONTYPE" MODIFY ("ID" CONSTRAINT "NNC_LOCATIONTYPEID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_LOCATIONTYPE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_LOCATIONTYPE" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_OCORRENCES
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_OCORRENCES" ADD CONSTRAINT "OCORRENCES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("note " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("notetext " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("DATE_UPDATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("ALERTPOINT_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_USER
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_USER" ADD CONSTRAINT "BAYER_USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("DATE_UPDATE" CONSTRAINT "CURRENT_TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("MAIL" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("birthdate " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("DATE_CREATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("DOCUMENTTYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USER" MODIFY ("INSTITUTION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAYER_USERADDRESS
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("DISTRICT" CONSTRAINT "BAYER_UASDISTRICT" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("STATE" CONSTRAINT "BAYER_UASSTATE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("UNIT" CONSTRAINT "BAYER_UASUNIT" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("USER_ID" CONSTRAINT "BAYER_UASUSERID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("ZIPCODE" CONSTRAINT "BAYER_UASZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("ID" CONSTRAINT "BAYER_UAS_ID" NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" ADD CONSTRAINT "BAYER_UAS_PKV1" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("city " CONSTRAINT "BAYER_UAScity " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("date_create " CONSTRAINT "BAYER_UASdate_create " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("date_update " CONSTRAINT "BAYER_UASdate_update " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("address " CONSTRAINT "BAYER_UASddress " NOT NULL ENABLE);
  ALTER TABLE "RM92270"."BAYER_USERADDRESS" MODIFY ("number " CONSTRAINT "BAYER_UASnumber " NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BAYER_INSTITUTIONADDRESS
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_INSTITUTIONADDRESS" ADD CONSTRAINT "INSTITUTION1_FK" FOREIGN KEY ("INSTITUTION_ID")
	  REFERENCES "RM92270"."BAYER_INSTITUTION" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAYER_OCORRENCES
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_OCORRENCES" ADD CONSTRAINT "OCORRENCES_ALERTPOINT_FK" FOREIGN KEY ("ALERTPOINT_ID")
	  REFERENCES "RM92270"."BAYER_ALERTPOINT" ("ID") ENABLE;
  ALTER TABLE "RM92270"."BAYER_OCORRENCES" ADD CONSTRAINT "OCORRENCES_CATEGORY_FK" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "RM92270"."BAYER_CATEGORY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAYER_USER
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_USER" ADD CONSTRAINT "USER_DOCUMENTTYPE_FK" FOREIGN KEY ("DOCUMENTTYPE_ID")
	  REFERENCES "RM92270"."BAYER_DOCUMENTTYPE" ("ID") ENABLE;
  ALTER TABLE "RM92270"."BAYER_USER" ADD CONSTRAINT "USER_INSTITUTION_FK" FOREIGN KEY ("INSTITUTION_ID")
	  REFERENCES "RM92270"."BAYER_INSTITUTION" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAYER_USERADDRESS
--------------------------------------------------------

  ALTER TABLE "RM92270"."BAYER_USERADDRESS" ADD CONSTRAINT "BAYER_USERADDRESS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "RM92270"."BAYER_USER" ("ID") ENABLE;