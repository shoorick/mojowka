BEGIN TRANSACTION;
CREATE TABLE "page" ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "title" TEXT, "text" TEXT);
INSERT INTO "page" VALUES(1,'','First page

"Mojolicious::Lite":http://search.cpan.org/dist/Mojolicious based lightweight wiki *mojowka*.

"Registered user":/login can change content of pages or create new ones. Pages can contain any unicode characters. For example, you can write in Russian (да, вы можете писать по-русски).

See also "sitemap":/sitemap and "search":/search pages.');
CREATE TABLE "user" ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "login" TEXT, "password" TEXT, "text" TEXT);
INSERT INTO "user" VALUES(1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrator of site. He can edit pages.');
CREATE UNIQUE INDEX "page_title" on page (title ASC);
CREATE UNIQUE INDEX "user_login" on user (login ASC);
COMMIT;
