CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "email" varchar(255) NOT NULL,
  "password" varchar(255) NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" serial UNIQUE PRIMARY KEY,
  "title" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "level" varchar(255) NOT NULL,
  "teacher" varchar(255) NOT NULL,
  "category_name" varchar(255) UNIQUE NOT NULL
);

CREATE TABLE "user_course" (
  "user_id" serial NOT NULL,
  "course_id" serial NOT NULL
);

CREATE TABLE "course_videos" (
  "title" varchar(255) UNIQUE NOT NULL,
  "url" varchar UNIQUE NOT NULL,
  "course_id" serial NOT NULL
);

CREATE TABLE "categories" (
  "name" varchar(255) UNIQUE NOT NULL
);

ALTER TABLE "user_course" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_course" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_name") REFERENCES "categories" ("name");
