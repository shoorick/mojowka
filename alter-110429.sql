BEGIN TRANSACTION;
CREATE TABLE "tag" ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "title" TEXT);
CREATE TABLE "image" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "filename" TEXT,
  "text" TEXT
);
CREATE TABLE "image_tag"(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "tag" INTEGER,
  "image" INTEGER
);

CREATE UNIQUE INDEX "tag_title" on page (title ASC);
CREATE UNIQUE INDEX "image_tag_tag" on image_tag (tag ASC);
CREATE UNIQUE INDEX "image_tag_image" on image_tag (image ASC);
COMMIT;
