-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.3.0
-- Generated: 2018-01-12 09:25

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_convertro_tracking_parameters_1 (
    "schema_vendor"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "campaign_id"    VARCHAR(255)  ENCODE LZO,
    "campaign_name"  VARCHAR(255)  ENCODE LZO,
    "creative_id"    VARCHAR(255)  ENCODE LZO,
    "creative_name"  VARCHAR(255)  ENCODE LZO,
    "placement_id"   VARCHAR(255)  ENCODE LZO,
    "placement_name" VARCHAR(255)  ENCODE LZO,
    "source1"        VARCHAR(255)  ENCODE LZO,
    "source2"        VARCHAR(255)  ENCODE LZO,
    "source3"        VARCHAR(255)  ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_convertro_tracking_parameters_1 IS 'iglu:com.convertro/tracking_parameters/jsonschema/1-0-0';