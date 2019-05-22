# Explore Weather Trends

## Summary

In this project, I analyzed local and global temperature data and compared the temperature trends from my hometown of Houston to overall global temperature trends.

## Extract the data

From the Udacity PostgreSQL workspace, I wrote the following query to extract global temperature data from my hometown of Houston.

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
    cl.city = 'Houston';
```

## Visualize the data

I used Excel to create a scatter plot of the average global temperatures vs the average Houston weather over time.  I calculated the moving average by looking at the previous 7 years using the following formula:

## License

## Notes

Used Google Timeline to produce list of Cities I've visited.

SQL Query to extract only city data I've visited

Manually deleted London, Canada and Los Angeles, Chile city data.

Though project rubric called for manually calculating moving average, excel has built in feature.
