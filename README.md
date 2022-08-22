# Final_Group_Project - :brain:Brain Stroke Prediction
## Communication Protocal
We all have agreed that communication via SLACK or email is the best form of communication for our group.  We have created multiple Google Docs that we are collectively working on as well.
## Topic Selection
In selecting a topic, our team wanted to pick a dataset within the health industry.  We all have been affected by someone we know who has had a stroke, and we wanted to determine if we could understand what varying factors play a role in whether an individual is more or less likely to be at risk for having a stroke.
### Investigative Questions
1. What varying factors have the greatest impact on whether or not an individual is more at risk for having a stroke?
2. Can we predict whether or not a person is more at risk for having a stroke based on those varying factors?
## Data Source
Our dataset was soured from Kaggle - [Brain Stroke Data](https://github.com/AimeeJLewis/Final_Group_Project/blob/main/Brain_Stroke_Data/full_data.csv)<br>
<b>Columns/Attributes:</b> Gender, Age, Hyptertension, Heart Disease Status, Marital Status, Work Type, Residence, Avg Glucose Level, BMI, Smoking Status, Stroke Status<br>
<b>Rows:</b> 4981 
<img width="1003" alt="Screen Shot 2022-08-16 at 8 02 38 PM" src="https://user-images.githubusercontent.com/101950175/185025512-56dae90f-ca07-4f3d-94fa-a8a9725e2ff6.png">
## Machine Learning
### Preliminary Preprocessing of the Data
Python scripts and multiple libraries were used in Jupyter Notebook to clean and analyze the dataset. Specifically, the Pandas library was used to clean the dataset - we dropped null values and dropped the first column.  After the data file was cleaned, it was imported into Postgres using SQL.  A split was done and two tables were created - demographics and health data. Those tables were then joined together on the column 'id'. Using an entity relationship diagram, the ERD shows the two tables and how the column 'id' was used to join the tables together.
<img width="898" alt="Untitled" src="https://user-images.githubusercontent.com/101950175/185820604-df26c0bd-d3bd-4d2c-b6c8-b99c1c4a8772.png">
### Engineering and Feature Selection
There were multiple columns that we needed to convert from categorical data into numerical data.  We used the label encoder to convert the gender, smoking_status, work_type, Residence_type, and ever_married columns into either 0 or 1 indicators. The 'id' column was also dropped from the table.  
### Model Choice
we found that the Random Forest modeling was the best fit for predicting the possibility of a stroke.  
### Splitting the Data
For the Random Forest, x amd y were split into training and testing sets.  The x variable used the following columns: gender, age, hyptertension, heart_disease, ever_married, work_type, Residence_type, avg_glucose_level, bmi, and smoking_status. The y variable used the stroke column to determine whether or not a person was more at risk for having a stroke.
### Limitations and Benefits
The benefit of Random Forest is it reduces overfitting in decision trees and helps to improve the accuracy. The limitation of the Random Forest modeling requires more time for training the model as it combines a lot of decision tress to determine the class.  
