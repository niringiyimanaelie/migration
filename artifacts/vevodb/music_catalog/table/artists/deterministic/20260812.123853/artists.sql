CREATE TABLE IF NOT EXISTS vevodb.music_catalog.artists
(
artist_id INTEGER NOT NULL IDENTITY(1,1) ORDER
,artist_name VARCHAR(200) NOT NULL
,genre VARCHAR(100)
,country VARCHAR(50)
,
label VARCHAR(200)
,debut_year INTEGER
,monthly_listeners BIGINT
,created_at TIMESTAMP_NTZ DEFAULT GETDATE()
,PRIMARY KEY (artist_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;