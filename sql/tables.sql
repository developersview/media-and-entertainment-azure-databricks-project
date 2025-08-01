-- create external location
CREATE EXTERNAL DATA SOURCE gold_external_data
WITH (
    LOCATION = 'abfss://gold@datalakeprojectnetflix.dfs.core.windows.net/'
);

-- create external file format
CREATE EXTERNAL FILE FORMAT gold_file_format
WITH (
    FORMAT_TYPE = PARQUET
);

-- create scheme
CREATE SCHEMA gold;

-- create tables
CREATE EXTERNAL TABLE gold.netflix_cast (
    cast VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_cast/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.netflix_cast_aggregated (
    cast VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_cast_aggregated/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);


CREATE EXTERNAL TABLE gold.netflix_category_new2 (
    listed_in VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_category/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.netflix_category_aggregated_new3 (
    listed_in VARCHAR(100),
    total_count INT
)
WITH (
    LOCATION = 'netflix_category_aggregated/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);


CREATE EXTERNAL TABLE gold.netflix_countries (
    country VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_countries/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.netflix_countries_aggregated_new2 (
    country VARCHAR(100),
    total_count INT
)
WITH (
    LOCATION = 'netflix_countries_aggregated/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);


CREATE EXTERNAL TABLE gold.netflix_directors (
    director VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_directors/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.netflix_directors_aggregated (
    director VARCHAR(100),
    total_count INT
)
WITH (
    LOCATION = 'netflix_directors_aggregated/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);


SELECT * FROM gold.netflix_cast;
SELECT * FROM gold.netflix_cast_aggregated;

SELECT * FROM gold.netflix_category_new2;
SELECT * FROM gold.netflix_category_aggregated_new3;

SELECT * FROM gold.netflix_countries;
SELECT * FROM gold.netflix_countries_aggregated_new2;

SELECT * FROM gold.netflix_directors;
SELECT * FROM gold.netflix_directors_aggregated;



