# Patient Satisfaction Analysis Project

## Overview
This project analyzes patient satisfaction data collected from over 3,000 hospitals in the United States. The data is sourced from the **Hospital Consumer Assessment of Healthcare Providers and Systems (HCAHPS)** survey, which is publicly available and mandated by the **Center for Medicare & Medicaid Services (CMS)**. The analysis aims to provide insights into how patients rate their hospital experiences and identify trends across hospitals of different sizes (small, medium, and large) and locations (state-specific).

## Dataset
The dataset used in this project is the HCAHPS survey data, which includes patient satisfaction ratings across multiple dimensions such as:
- Communication with Nurses and Doctors
- Cleanliness and Quietness of Hospital Environment
- Overall Hospital Rating
- Willingness to Recommend the Hospital

## Tools & Technologies
- **SQL**: Used to clean, prepare, and query the data.
- **Tableau**: Used to create an interactive dashboard for visualizing patient satisfaction scores across hospitals of different sizes and regions.

## Data Preparation
1. **Data Cleaning**: Using SQL, the raw HCAHPS dataset was cleaned by:
   - Filtering out incomplete or irrelevant entries.
   - Normalizing column names and formats.
   - Removing duplicates and null values.
   - Extracting specific fields such as hospital size, state, and satisfaction scores.
   
2. **Data Transformation**: Aggregated data by hospital size (small, medium, large) and state to enable comparison across different categories.

## Dashboard Features
The interactive dashboard created in Tableau includes:
- **State-wise Satisfaction Scores**: A map visualization showing patient satisfaction scores for hospitals across different states.
- **Hospital Size Comparison**: Bar charts comparing satisfaction scores between small, medium, and large hospitals.
- **Trend Analysis**: Line charts showing patient satisfaction trends over time.
- **Filter Options**: Users can filter by hospital size, state, or satisfaction criteria (e.g., communication with doctors, hospital cleanliness).

Tableau link can be found here: https://public.tableau.com/shared/FBWMNHNZB?:display_count=n&:origin=viz_share_link

<img width="1448" alt="Screenshot 2024-09-23 at 12 53 32 PM" src="https://github.com/user-attachments/assets/fa63581a-2f0f-432c-b006-961e4882c1b8">
