-- CreateTable
CREATE TABLE `Employees` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `job_title` VARCHAR(191) NOT NULL,
    `salary` DOUBLE NOT NULL,
    `date_hired` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `phone` VARCHAR(191) NOT NULL,
    `profile_img` VARCHAR(191) NULL,

    UNIQUE INDEX `Employees_email_key`(`email`),
    UNIQUE INDEX `Employees_phone_key`(`phone`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Managers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `profile_img` VARCHAR(191) NULL,

    UNIQUE INDEX `Managers_email_key`(`email`),
    UNIQUE INDEX `Managers_phone_key`(`phone`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Requests` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `text` VARCHAR(191) NOT NULL,
    `duration_requested` INTEGER NOT NULL,
    `date_requested` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `granted` BOOLEAN NULL,
    `employees_Id` INTEGER NOT NULL,
    `managers_Id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `HR` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `Profile_img` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `HR_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Requests` ADD CONSTRAINT `Requests_employees_Id_fkey` FOREIGN KEY (`employees_Id`) REFERENCES `Employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Requests` ADD CONSTRAINT `Requests_managers_Id_fkey` FOREIGN KEY (`managers_Id`) REFERENCES `Managers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
