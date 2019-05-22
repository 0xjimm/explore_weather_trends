# Explore Weather Trends

## Summary

In this project, I analyzed local and global temperature data and compared the temperature trends from my hometown of Houston to overall global temperature trends.

Out of curiosity, I also cross referenced the available city data with the cities I've visited for work or vacation.

## Extract the data

From the Udacity PostgreSQL workspace, I wrote the following query to extract global temperature data from all the cities I have visited.

```
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
```

## Contributing

## License

## Notes

Used Google Timeline to produce list of Cities I've visited.

SQL Query to extract only city data I've visited

Manually deleted London, Canada and Los Angeles, Chile city data.

Though project rubric called for manually calculating moving average, excel has built in feature.
