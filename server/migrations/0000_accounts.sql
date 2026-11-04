CREATE TABLE `accounts` (
	`id` text PRIMARY KEY NOT NULL,
	`email` text NOT NULL,
	`password` text NOT NULL,
	`progress` text DEFAULT '{}' NOT NULL,
	`created` integer NOT NULL,
	`updated` integer NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `accounts_email_unique` ON `accounts` (`email`);
--> statement-breakpoint
CREATE TABLE `account_sessions` (
	`secret` text PRIMARY KEY NOT NULL,
	`account` text NOT NULL,
	`created` integer NOT NULL
);
--> statement-breakpoint
CREATE INDEX `account_sessions_account` ON `account_sessions` (`account`);
