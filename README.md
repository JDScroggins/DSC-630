# Predictive-Analytics
## Predicting Disney World Wait Times

This project will explore and use predictive analysis on the attraction wait times at The Walt Disney World Resort. 

This project asks the questions: 
<p align = center> 
When is the “best time” to visit The Walt Disney World Resort?
</p>
<p align = center>
and
</p>
<p align = center>
Is there a way to predict the wait times of certain rides at The Walt Disney World Resort?
</p>

## Data
-	The analysis will use data provided by touringplans.com on the wait times of various rides at The Walt Disney World Resort. The attraction wait times can help to determine how one plans their trip to The Walt Disney World Resort as wait times can help with the perception of how “busy” the parks are. The data used for this analysis is comprised of several attraction wait times and the calendar information for the parks, like ticket seasons, days of the weeks, and the datetime of the wait times.

## Assumptions

-	These perceptions of the “busyness” can be assumed based on the assumption that the higher the average wait time the more people there would be at the parks making the lines at the attractions longer and therefore the average wait time would also increase. 

## Why important?

-	These predictions can then be used by travel planning companies to make suggestions on travel plans for tourists or the tourists themselves to make informed decisions on what they feel is the “best time” to go to the parks. 

## How was the analysis done?

-	The data was imported into Python and cleaned. Each attraction was imported as a separate dataframe, cleaned and then all the wait times were merged into a single dataframe. The metadata file was also imported, cleaned, and merged with the wait time dataframe. After cleaning a preliminary analysis was performed on this data. This analysis looked at the averages of the data and used graphical analysis to look at things like the trend and distribution of the data. After cleaning and preliminary analysis, models were built around the data to predict the wait times. Decision Tree Regression models and Linear Regression models were chosen for the predictive analysis of the wait times. The models were then used to make predictions of what the wait times would be for the month of September 2021. These predictions showed the capability of the models to predict the wait times for future dates at the parks and allow one to have a more informed plan for a trip to the parks.
