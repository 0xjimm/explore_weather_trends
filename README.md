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

I used Excel to help visualize the data set.  I calculated the moving average by looking at the previous 7 years using the following formula:

![](https://github.com/lejimmy/explore_weather_trends/blob/master/img/moving_average_formula.png?raw=true)

I displayed the yearly data as points in the following graph.  Afterwards, I created a line graph with the moving average data.  Excel also has a built in function to create a trend-line for the data as well as calculating the coefficient of determination or R<sup>2</sup> value.

![](https://github.com/lejimmy/explore_weather_trends/blob/master/img/houston_trend.png?raw=true)

## Tourism data

![Pivot Table](https://media.giphy.com/media/d9YvttQsHqVCmNAvzM/giphy.gif)


## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/lejimmy/explore_weather_trends/blob/master/README.md) file for details.

## Notes

Used Google Timeline to produce list of Cities I've visited.

SQL Query to extract only city data I've visited

Manually deleted London, Canada and Los Angeles, Chile city data.

Though project rubric called for manually calculating moving average, excel has built in feature.
