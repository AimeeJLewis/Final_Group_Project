# Final_Group_Project - :brain:Brain Stroke Prediction

<img width="500" alt="Screen Shot 2022-08-18 at 8 36 33 PM" src="https://user-images.githubusercontent.com/101950175/186310689-6edff6a6-89d1-4a3e-8bb7-6b2d17fac9f0.png">

## Google Slides Link 
Download Final Project -> [HERE](https://docs.google.com/presentation/d/13kMQFWVXgDKijk3mbu2N-kw86XDC63hT_DMw8WKwhlo/edit?usp=sharing)

## Web Page Link
Are You at Risk for a Stroke? -> [FOUND OUT HERE](https://brain-stroke-project.herokuapp.com/)

## Tableau Dashboard Link
Access Tableau Dashboard -> [HERE](https://public.tableau.com/app/profile/derick.rosenquist/viz/UOBootCampFinalProjectBrainStroke/StrokeDataSummary)

## Team Members - Roles
* [Aimee Lewis](https://github.com/AimeeJLewis) - Repository (Square)
* [Derick Rosenquist](https://github.com/drosenquist) - Database (Circle)
* [Tyler Midcalf](https://github.com/tmidcalf) - Machine Learning (Triangle)

## Topic Selection
In selecting a topic, our team wanted to pick a dataset within the health industry. According to the World Health Organization(WHO) strokes are the 2nd leading cause of death globally, responsible for approximately 11% of total deaths. We all have been affected by someone we know who has had a stroke, and we wanted to determine if we could understand what varying factors play a role in whether an individual is more or less likely to be at risk for having a stroke. 
### Investigative Questions
1. What varying factors have the greatest impact on whether or not an individual is more at risk for having a stroke?
2. Can we predict whether or not a person is more at risk for having a stroke based on those varying factors?
## Data Source
Our dataset was sourced from Kaggle - [Brain Stroke Data](https://github.com/AimeeJLewis/Final_Group_Project/blob/main/Brain_Stroke_Data/full_data.csv)<br>
<b>Columns/Attributes:</b> Gender, Age, [Hypertension](https://www.cdc.gov/bloodpressure/index.htm), 
[Heart Disease](https://www.cdc.gov/heartdisease/index.htm) Status, Marital Status, Work Type, Residence, Avg [Glucose](https://my.clevelandclinic.org/health/diagnostics/12363-blood-glucose-test) Level, [BMI](https://www.cdc.gov/healthyweight/assessing/bmi/index.html), Smoking Status, [Stroke](https://www.cdc.gov/stroke/index.htm)
Status<br>
<img width="1003" alt="Screen Shot 2022-08-16 at 8 02 38 PM" src="https://user-images.githubusercontent.com/101950175/185025512-56dae90f-ca07-4f3d-94fa-a8a9725e2ff6.png">
<b>Rows:</b> 4981 
## Technologies/Tools Used
Python, Pandas, PostgreSQL, SQLAlchemy, Plotly, SKLearn, Numpy, Matplotlib, IMBLearn, Excel, Flask, Heroku, Pickle
## Machine Learning
### Preliminary Preprocessing of the Data
Python scripts and multiple libraries were used in Jupyter Notebook to clean and analyze the dataset. Specifically, the Pandas library was used to clean the dataset - we dropped null values.  After the data file was cleaned, it was imported into Postgres using SQL.  A split was done and two tables were created - demographics and health data. Those tables were then joined together on the column 'id'. Using an entity relationship diagram, the ERD shows the two tables and how the column 'id' was used to join the tables together.
<img width="898" alt="Untitled" src="https://user-images.githubusercontent.com/101950175/185820604-df26c0bd-d3bd-4d2c-b6c8-b99c1c4a8772.png">
### Engineering and Feature Selection
There were multiple columns that we needed to convert from categorical data into numerical data.  We used the label encoder to convert the gender, smoking_status, work_type, Residence_type, and ever_married columns into either 0 or 1 indicators. The 'id' column was also dropped from the table because it was only the patient id and that column was only used to join the two tables initially.
### Model Choice
<b>Logistic Regression</b>
<br>
<img width="436" alt="Screen Shot 2022-08-23 at 8 01 49 PM" src="https://user-images.githubusercontent.com/101950175/186311044-a3675fd6-2720-4f96-86f9-d9d0357a09fb.png">

<b>Random Forest</b>
<br>
<img width="431" alt="Screen Shot 2022-08-21 at 6 53 42 PM" src="https://user-images.githubusercontent.com/101950175/185823687-dc3e7d88-c7c0-426f-ab55-818cc1a768ba.png">

<b>Support Vector</b>
<br>
<img width="438" alt="Screen Shot 2022-08-23 at 8 02 45 PM" src="https://user-images.githubusercontent.com/101950175/186311155-2f159d9e-2c2d-416e-bdde-d416a194427f.png">
<br>
We found that the Random Forest modeling was the best fit for predicting the possibility of a stroke with a 99% accuracy.
### Splitting the Data

The data was resampled so that the number of stroke occurences were the same as the number of non-stroke occurences.  
X amd Y were then split into training and testing sets.  The x variable used the following columns: gender, age, hyptertension, heart_disease, ever_married, work_type, Residence_type, avg_glucose_level, bmi, and smoking_status. The y variable used the stroke column to determine whether or not a person was more at risk for having a stroke.

### Limitations and Benefits
The benefit of Random Forest is it reduces overfitting in decision trees and helps to improve the accuracy. The limitation of the Random Forest modeling requires more time for training the model as it combines a lot of decision tress to determine the class.  

### Conclusion
Using the Random Forest Classifier we were able to produce a model with a 99% accuracy. Based on the data, there is a strong correlation with increasing age, people are more at risk for having a stroke. Females are slightly more at risk than males with a 57.42% vs 42.58% respectively. We found that people with higher BMI were more at risk for having stroke, but heart disease did not have a significant impact.
