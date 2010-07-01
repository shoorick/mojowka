BEGIN TRANSACTION;
CREATE TABLE "page" ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "title" TEXT, "text" TEXT);
INSERT INTO "page" VALUES(1,'Index','First page

Lightweight wiki *mojowka* based on top of "Mojolicious::Lite":http://search.cpan.org/dist/Mojolicious

"Registered user":/login can change content of pages.');
INSERT INTO "page" VALUES(2,'Sitemap','* "First page of site":/
* "This page":/sitemap');
CREATE TABLE "user" ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "login" TEXT, "password" TEXT, "text" TEXT);
INSERT INTO "user" VALUES(1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrator of site. He can edit pages.');
CREATE UNIQUE INDEX "page_title" on page (title ASC);
CREATE UNIQUE INDEX "user_login" on user (login ASC);
COMMIT;
