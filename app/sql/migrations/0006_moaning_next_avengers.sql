ALTER TABLE "products" ALTER COLUMN "stats" SET DEFAULT '{"views":0,"reviews":0,"upvotes":0}'::jsonb;--> statement-breakpoint
ALTER TABLE "posts" ADD COLUMN "upvotes" bigint DEFAULT 0;