CREATE EXTERNAL TABLE gold.dim_cast (
    cast VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_cast/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.dim_category (
    listed_in VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_category/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.dim_countries (
    country VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_countries/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);

CREATE EXTERNAL TABLE gold.dim_directors (
    director VARCHAR(100),
    show_id INT
)
WITH (
    LOCATION = 'netflix_directors/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);


CREATE EXTERNAL TABLE gold.fact_netflix_titles_main (
    duration_minutes INT,
    duration_seasons INT,
    type NVARCHAR(20),
    title NVARCHAR(300),
    date_added NVARCHAR(300),
    release_year INT,
    rating NVARCHAR(10),
    description NVARCHAR(500),
    show_id VARCHAR(500),
    ShortTitle NVARCHAR(200),
    rating_new NVARCHAR(100),
    rank_duration_minutes INT
)
WITH (
    LOCATION = 'netflix_titles/',
    DATA_SOURCE = gold_external_data,
    FILE_FORMAT = gold_file_format
);



SELECT * FROM gold.dim_cast;
SELECT * FROM gold.dim_category;
SELECT * FROM gold.dim_countries;
SELECT * FROM gold.dim_directors;
SELECT * FROM gold.fact_netflix_titles_main;
