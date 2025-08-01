-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://datalakeprojectnetflix.dfs.core.windows.net/gold/netflix_cast/**',
        FORMAT = 'PARQUET'
    ) AS [result];


SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://datalakeprojectnetflix.dfs.core.windows.net/gold/netflix_titles/**',
        FORMAT = 'PARQUET'
    ) AS [result];


SELECT TOP 10 *
FROM OPENROWSET(
    BULK 'https://datalakeprojectnetflix.dfs.core.windows.net/gold/netflix_titles/**',
    FORMAT = 'PARQUET'
) WITH (
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
) AS [result];