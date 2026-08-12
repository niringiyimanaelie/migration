CREATE TABLE IF NOT EXISTS vevodb.music_catalog.artists
(
artist_id INTEGER NOT NULL DEFAULT "identity"(107764, 0, '1,1'::text) ENCODE az64
,artist_name VARCHAR(200) NOT NULL  ENCODE lzo
,genre VARCHAR(100)   ENCODE lzo
,country VARCHAR(50)   ENCODE lzo
,"label" VARCHAR(200)   ENCODE lzo
,debut_year INTEGER   ENCODE az64
,monthly_listeners BIGINT   ENCODE az64
,created_at TIMESTAMP WITHOUT TIME ZONE  DEFAULT getdate() ENCODE az64
	,PRIMARY KEY (artist_id)
)
;
