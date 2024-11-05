BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "note" (
    "id" bigserial PRIMARY KEY,
    "text" text NOT NULL
);


--
-- MIGRATION VERSION FOR notes
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('notes', '20241105061743404', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241105061743404', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
