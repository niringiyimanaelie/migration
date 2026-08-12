-- <copyright file="STRING_FORMAT_UDF.sql" company="Snowflake Inc">
--        Copyright (c) 2019-2025 Snowflake Inc. All rights reserved.
-- </copyright>

CREATE OR REPLACE FUNCTION PUBLIC.STRING_FORMAT_UDF(PATTERN VARCHAR, ARGS VARIANT)
RETURNS VARCHAR
LANGUAGE JAVASCRIPT
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "udf",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
AS
$$
	var placeholder_str = "{%}";
	var result = PATTERN.replace(/(?<!%)%(?!%)/g, placeholder_str).replace("%%","%");
	for (var i = 0; i < ARGS.length; i++)
	{
		result = result.replace(placeholder_str, ARGS[i]);
	}
	return result;
$$;