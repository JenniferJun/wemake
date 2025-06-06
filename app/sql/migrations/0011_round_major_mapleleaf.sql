--> statement-breakpoint
ALTER TABLE "follows" ALTER COLUMN "follower_id" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "follows" ALTER COLUMN "following_id" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "messages" ALTER COLUMN "message_room_id" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "messages" ALTER COLUMN "sender_id" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "notifications" ADD COLUMN "seen" boolean DEFAULT false NOT NULL;--> statement-breakpoint
ALTER TABLE "public"."notifications" ALTER COLUMN "type" SET DATA TYPE text;--> statement-breakpoint
DROP TYPE "public"."notification_type";--> statement-breakpoint
CREATE TYPE "public"."notification_type" AS ENUM('follow', 'review', 'reply');--> statement-breakpoint
ALTER TABLE "public"."notifications" ALTER COLUMN "type" SET DATA TYPE "public"."notification_type" USING "type"::"public"."notification_type";