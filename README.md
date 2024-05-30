# COVID-19 Data Analysis and Visualization Project

## Overview
This project involves the analysis and visualization of COVID-19 data using SQL and Tableau. The dataset was cleaned and analyzed using SQLite and Excel, and the results were visualized using Tableau to provide insights into the trends and impacts of the COVID-19 pandemic.

## Tools and Technologies
- **SQLite:** Used for data cleaning and analysis. SQLite was chosen for its lightweight and easy-to-use interface, making it suitable for handling and querying the dataset efficiently.
- **SQL:** Utilized for writing queries to clean, manipulate, and analyze the dataset.
- **Excel:** Used for initial data extraction and preliminary cleaning of the raw CSV file.
- **Tableau:** Used for creating interactive and informative visualizations based on the analysis performed in SQLite.

## Project Structure
- **data/**: Intermediate files generated during the data cleaning process from original file (read Data Source)
- **scripts/**: Includes the SQL script used for data cleaning and analysis.
- **visualizations/**: Contains the Tableau workbook.
- **README.md**: This file, providing an overview of the project, tools used, and instructions for replicating the analysis.

## Data Source
The original dataset used in this project was downloaded from the [Our World in Data COVID-19 Data repository](https://github.com/owid/covid-19-data/blob/master/public/data/owid-covid-data.csv). This dataset includes comprehensive information on COVID-19 cases, deaths, testing, and other related metrics from around the world.

## Data Analysis
The analysis involved several key steps:
1. **Data Extraction and Cleaning in Excel**: The raw CSV file was downloaded and initial cleaning was performed using Excel. This included handling missing values, removing duplicates, and preliminary data formatting.
2. **Data Cleaning in SQLite**: Further data cleaning was done using SQLite to ensure data consistency and prepare the dataset for analysis.
3. **Exploratory Data Analysis**: SQL queries were used to explore the dataset, identify trends, and summarize key metrics such as case counts, death rates, and recovery rates.
4. **Advanced Analysis**: More complex SQL queries were executed to derive deeper insights, such as time-series analysis and correlation studies.

## Visualizations
Tableau was used to create visualizations that provide a comprehensive view of the COVID-19 data. Some of the key visualizations include:
- **Time-Series Analysis**: Charts showing the trend of COVID-19 cases, deaths, and recoveries over time.
- **Geographical Analysis**: Maps highlighting the spread of the virus across different regions.
- **Comparative Analysis**: Bar charts and line graphs comparing key metrics across countries or regions.

## How to Run the Project
To replicate the analysis and visualizations:
1. **Set up SQLite**: Ensure you have SQLite installed on your system. You can download it from [SQLite Download Page](https://www.sqlite.org/download.html).
2. **Clone the Repository**: Clone this repository to your local machine using `git clone https://github.com/bob-harris/portfolio-covid-script`.
3. **Load the Data**: Place the dataset in the `data/` directory.
4. **Run the SQL Scripts**: Execute the SQL scripts in the `scripts/` directory to clean and analyze the data.
5. **Visualize in Tableau**: Open the Tableau workbook in the `visualizations/` directory to view and interact with the visualizations.

## Conclusion
This project demonstrates the power of SQL and Tableau in analyzing and visualizing complex datasets. By leveraging these tools, I was able to gain valuable insights into the COVID-19 pandemic, which can inform public health decisions and strategies.

## Acknowledgments
I would like to thank the data providers for making the COVID-19 data available for analysis. Special thanks to the developers of SQLite and Tableau for their powerful tools that made this analysis possible.

