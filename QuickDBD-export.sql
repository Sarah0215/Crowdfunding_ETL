-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- PROJECT
-- ETL Mini Project
-- M. Dai, S. Kikuchi, J. Bein

CREATE TABLE "Subcategory" (
    "subcategory_ID" VARCHAR(10)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_ID"
     )
);

CREATE TABLE "Category" (
    "category_ID" VARCHAR(5)   NOT NULL,
    "category" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_ID"
     )
);

CREATE TABLE "Contacts" (
    "contact_ID" INT   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_ID"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(200)   NOT NULL,
    "description" VARCHAR(200)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(5)   NOT NULL,
    "subcategory_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_ID" FOREIGN KEY("subcategory_ID")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_ID" FOREIGN KEY("category_ID")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_ID");

