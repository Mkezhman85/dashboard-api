/*
  Warnings:

  - You are about to drop the column `passwords` on the `UserModel` table. All the data in the column will be lost.
  - Added the required column `password` to the `UserModel` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_UserModel" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT NOT NULL
);
INSERT INTO "new_UserModel" ("email", "id", "name") SELECT "email", "id", "name" FROM "UserModel";
DROP TABLE "UserModel";
ALTER TABLE "new_UserModel" RENAME TO "UserModel";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
