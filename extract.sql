SELECT
    gd.year AS year,
    gd.avg_temp AS global_temp,
    cd.city AS city,
    cd.country AS country,
    cd.avg_temp AS city_temp
FROM
    global_data gd
    JOIN city_data cd ON gd.year = cd.year
    JOIN city_list cl ON cl.city = cd.city
WHERE
    cl.city IN ('Amsterdam', 'Arlington', 'Austin', 'Bangkok', 'Bern', 'Boston',
                'Budapest', 'Chicago', 'Dallas', 'Denver', 'Fort Worth',
                'Helsinki', 'Ho Chi Minh City', 'Houston', 'London',
                'Long Beach', 'Los Angeles', 'Miami', 'Milan', 'Montreal',
                'New Orleans', 'New York', 'Oklahoma City', 'Oslo', 'Paris',
                'Philadelphia', 'Phoenix', 'Rome', 'Sacramento', 'San Antonio',
                'San Diego', 'San Francisco', 'Seattle', 'Seoul', 'Shanghai',
                'Singapore', 'Stockholm', 'Taipei', 'Tokyo', 'Tulsa', 'Vienna');
