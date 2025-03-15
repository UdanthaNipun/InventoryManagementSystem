/*
  Warnings:

  - The primary key for the `Expenses` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `expenceId` on the `Expenses` table. All the data in the column will be lost.
  - The primary key for the `Sales` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `salesId` on the `Sales` table. All the data in the column will be lost.
  - Added the required column `expenseId` to the `Expenses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `saleId` to the `Sales` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Expenses" DROP CONSTRAINT "Expenses_pkey",
DROP COLUMN "expenceId",
ADD COLUMN     "expenseId" TEXT NOT NULL,
ADD CONSTRAINT "Expenses_pkey" PRIMARY KEY ("expenseId");

-- AlterTable
ALTER TABLE "Sales" DROP CONSTRAINT "Sales_pkey",
DROP COLUMN "salesId",
ADD COLUMN     "saleId" TEXT NOT NULL,
ADD CONSTRAINT "Sales_pkey" PRIMARY KEY ("saleId");
