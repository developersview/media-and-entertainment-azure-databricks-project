-- create views
CREATE SCHEMA apex_gold;

CREATE VIEW apex_gold.netflix_cast_category AS
SELECT 
    cast.show_id,
    cast.cast,
    category.listed_in
FROM
    gold.netflix_cast cast
        INNER JOIN
    gold.netflix_category_new2 category ON cast.show_id = category.show_id;



CREATE VIEW apex_gold.dim_cast AS
SELECT * FROM gold.dim_cast;

CREATE VIEW apex_gold.dim_category AS
SELECT * FROM gold.dim_category;

CREATE VIEW apex_gold.dim_countries AS
SELECT * FROM gold.dim_countries;

CREATE VIEW apex_gold.dim_directors AS
SELECT * FROM gold.dim_directors;

CREATE VIEW apex_gold.fact_netflix_titles AS
SELECT * FROM gold.fact_netflix_titles_main;

SELECT * FROM apex_gold.netflix_cast_category;
SELECT * FROM apex_gold.dim_cast;
SELECT * FROM apex_gold.dim_category;
SELECT * FROM apex_gold.dim_countries;
SELECT * FROM apex_gold.dim_directors;
SELECT * FROM apex_gold.fact_netflix_titles;
