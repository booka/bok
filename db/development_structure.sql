CREATE TABLE "boks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" varchar(255), "bok_type" varchar(255), "content_type" varchar(255), "properties" varchar(255), "body" text, "parent_id" integer, "position" integer, "media_file_name" varchar(255), "media_content_type" varchar(255), "media_file_size" integer, "media_updated_at" datetime, "user_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "login" varchar(255), "rol" varchar(255) DEFAULT 'user', "crypted_password" varchar(255), "password_salt" varchar(255), "persistence_token" varchar(255), "login_count" integer, "last_request_at" datetime, "last_login_at" datetime, "current_login_at" datetime, "last_login_ip" varchar(255), "current_login_ip" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_boks_on_bok_type" ON "boks" ("bok_type");
CREATE INDEX "index_boks_on_content_type" ON "boks" ("content_type");
CREATE INDEX "index_boks_on_title" ON "boks" ("title");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20091206184607');

INSERT INTO schema_migrations (version) VALUES ('20091206184305');