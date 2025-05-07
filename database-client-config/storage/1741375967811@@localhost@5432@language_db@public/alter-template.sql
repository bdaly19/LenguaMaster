DROP INDEX "videos_pkey";
CREATE INDEX videos_pkey_1745449083940_index ON 
    videos USING PRIMARY ("videoid");