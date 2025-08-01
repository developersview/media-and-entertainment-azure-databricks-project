SELECT 
    cast.show_id,
    cast.cast,
    category.listed_in
FROM
    gold.netflix_cast cast
        INNER JOIN
    gold.netflix_category_new2 category ON cast.show_id = category.show_id
WHERE cast.cast = 'Ranbir Kapoor';

