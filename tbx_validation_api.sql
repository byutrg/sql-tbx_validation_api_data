BEGIN TRANSACTION;
DROP TABLE IF EXISTS "dialects";
CREATE TABLE IF NOT EXISTS "dialects" (
	"id"	integer,
	"name"	varchar(64) NOT NULL UNIQUE,
	"definition"	text NOT NULL,
	"dca_rng"	text NOT NULL,
	"dca_sch"	text NOT NULL,
	"dct_nvdl"	text NOT NULL,
	"dct_sch"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "modules";
CREATE TABLE IF NOT EXISTS "modules" (
	"id"	integer,
	"name"	varchar(64) NOT NULL,
	"definition"	text NOT NULL,
	"rng"	text NOT NULL,
	"sch"	text NOT NULL,
	"tbxmd"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "dialects_modules";
CREATE TABLE IF NOT EXISTS "dialects_modules" (
	"dialects_id"	integer NOT NULL,
	"modules_id"	integer NOT NULL,
	FOREIGN KEY("modules_id") REFERENCES "modules"("id"),
	FOREIGN KEY("dialects_id") REFERENCES "dialects"("id")
);
INSERT INTO "dialects" ("id","name","definition","dca_rng","dca_sch","dct_nvdl","dct_sch") VALUES (1,'TBX-Min','https://github.com/LTAC-Global/TBX-Min_dialect/blob/master/TBX-Min%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCA/TBXcoreStructV03_TBX-Min_integrated.rng','https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCA/TBX-Min_DCA.sch','https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCT/TBX-Min.nvdl','https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCT/TBX-Min_DCT.sch');
INSERT INTO "dialects" ("id","name","definition","dca_rng","dca_sch","dct_nvdl","dct_sch") VALUES (2,'TBX-Basic','https://github.com/LTAC-Global/TBX-Basic_dialect/blob/master/TBX-Basic%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCA/TBXcoreStructV03_TBX-Basic_integrated.rng','https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCA/TBX-Basic_DCA.sch','https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCT/TBX-Basic.nvdl','https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCT/TBX-Basic_DCT.sch');
INSERT INTO "dialects" ("id","name","definition","dca_rng","dca_sch","dct_nvdl","dct_sch") VALUES (3,'TBX-Linguist','https://github.com/LTAC-Global/TBX-Linguist_dialect/blob/master/TBX-Linguist%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCA/TBXcoreStructV03_TBX-Linguist_integrated.rng','https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCA/TBX-Linguist_DCA.sch','https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCT/TBX-Linguist.nvdl','https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCT/TBX-Linguist_DCT.sch');
INSERT INTO "dialects" ("id","name","definition","dca_rng","dca_sch","dct_nvdl","dct_sch") VALUES (4,'TBX-Core','https://github.com/LTAC-Global/TBX-Core_dialect/blob/master/TBX-Core%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX-Core_dialect/master/Schemas/TBXcoreStructV03_TBX-Core_integrated.rng','https://raw.githubusercontent.com/LTAC-Global/TBX-Core_dialect/master/Schemas/TBX-Core.sch','','');
INSERT INTO "modules" ("id","name","definition","rng","sch","tbxmd") VALUES (1,'Min','https://github.com/LTAC-Global/TBX_min_module/blob/master/Min%20Module%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX_min_module/master/Min.rng','https://raw.githubusercontent.com/LTAC-Global/TBX_min_module/master/Min.sch','https://raw.githubusercontent.com/LTAC-Global/TBX_min_module/master/Min.tbxmd');
INSERT INTO "modules" ("id","name","definition","rng","sch","tbxmd") VALUES (2,'Basic','https://github.com/LTAC-Global/TBX_basic_module/blob/master/Basic%20Module%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX_basic_module/master/Basic.rng','https://raw.githubusercontent.com/LTAC-Global/TBX_basic_module/master/Basic.sch','https://raw.githubusercontent.com/LTAC-Global/TBX_basic_module/master/Basic.tbxmd');
INSERT INTO "modules" ("id","name","definition","rng","sch","tbxmd") VALUES (3,'Linguist','https://github.com/LTAC-Global/TBX_linguist_module/blob/master/Linguist%20Module%20Definition.pdf','https://raw.githubusercontent.com/LTAC-Global/TBX_linguist_module/master/Linguist.rng','https://raw.githubusercontent.com/LTAC-Global/TBX_linguist_module/master/Linguist.sch','https://raw.githubusercontent.com/LTAC-Global/TBX_linguist_module/master/Linguist.tbxmd');
INSERT INTO "modules" ("id","name","definition","rng","sch","tbxmd") VALUES (4,'Core','','https://raw.githubusercontent.com/LTAC-Global/TBX_Core_RNG/master/TBXcoreStructV03.rng','','');
INSERT INTO "modules" ("id","name","definition","rng","sch","tbxmd") VALUES (5,'TermComp','','https://raw.githubusercontent.com/LTAC-Global/TBX_termComp_module/master/TermComp-namespace.rng','','');
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (1,1);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (1,4);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (2,1);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (2,2);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (2,4);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (3,1);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (3,2);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (3,3);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (3,4);
INSERT INTO "dialects_modules" ("dialects_id","modules_id") VALUES (4,4);
COMMIT;
