CREATE TABLE `photos` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`account` text NOT NULL,
	`comment` text DEFAULT '' NOT NULL,
	`created` integer NOT NULL,
	`hidden` integer DEFAULT 0 NOT NULL
);
--> statement-breakpoint
CREATE INDEX `photos_created` ON `photos` (`created`);
--> statement-breakpoint
CREATE TABLE `mails` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`photo` integer NOT NULL,
	`to_hash` text NOT NULL,
	`created` integer NOT NULL
);
--> statement-breakpoint
CREATE INDEX `mails_to` ON `mails` (`to_hash`, `created`);
--> statement-breakpoint
CREATE TABLE `blocked` (
	`to_hash` text PRIMARY KEY NOT NULL,
	`created` integer NOT NULL
);
