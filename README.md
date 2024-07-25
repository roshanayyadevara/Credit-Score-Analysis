# Credit-Score-Analysis
Credit Score Analysis by using Generalised Linear Models

# Abstract 
In this project, we analyse the data of credit score and to understand the customer’s credit worthiness for application of credit approval. We build generalised linear models for the analyse of the data and find the strongest relationship variable for the prediction of credit approval. In this scenario the response variable is binary, and we more than one categorical explanatory variable, henceforth we choose the logistic regression model for the analysis of the data. And we use forward selection method to get best model out of all the models present.  On performing forward selection and removing the insignificant terms we got income, insolvencies, and status of owing house as the strongest variables.
In conclusion, we build a generalised model for the prediction of credit approval by the means of logistic regression model.

# Overview of the Problem

Overview of the problem
In this problem we are going to analyse the data of credit score and understand the customer behaviour and as well as credit the credit scoring. By analysing the data, we try to understand “which variable gives strongest relationship for credit acceptance and creditworthiness of costumer”. In this dataset we have six variables of total those are Age, dependent income(Inc), home owner(Home), self-employee(SelfEm), Number of notice of insolvency(Der) and Application Status(Appl).  Out this six variables Appl is the response variables and remaining are predictors. Home and SelfEm are categorical variables and Age ,Inc are continuous variables. This kind of study is called retrospective study, where we have more than one explanatory variable and the response variable is binary, for such type of categorical response and retrospective study logistic regression is the good model.                                                                                                  
Fitting the below mentioned in the logistic regression and calculating the G2 statistic for the models mentioned.   

# Model 0  logit Px=0
# Model 1 logit PAge=0+1Age
# Model 2 logit PInc=0+1Inc
# Model 3 logit PAge,Inc=0+1Age+2Inc
# Model 4 logit PAge,Inc,Home=0+1Age+2Inc+3Home
# Model 5 logit PAge,Inc,Der,Home= 0+1Age+2Inc2+3Der+4Home
# Model 6 logit PAge,Inc,Home,SelfEm= 0+1Age+2Inc3+3Home+4SelfEm
# Model 7 logit PAge,Inc,Der,Home,SelfEm=0+1Age+2Inc3+3Der+4Home+5SelfEm

# Performing the forward selection model
G2Model0-G2Model 1=120.43-119.32=1.11 ,df=1 
Critical Region (3.841,∞) The conditional g-square doesn’t lie in critical region ,
Model 1 doesn’t make any improvement over model 0. 
G2Model 0-G2Model 2=120.43-114.4=6.03 , df=1,
Critical Region (3.841,∞) 
The conditional g-square lie in critical region, Model 2 makes improvement over model 0. 
G2Model 2-G2Model 3=114.4-111.35=3.05 ,df=1 Critical Region (3.841,∞) 
The conditional g-square doesn’t lie in critical region, Model 3 doesn’t make any improvement over model 2. 
G2Model 2-G2Model 4=114.4-111.31=3.09,  
df=2 Critical Region (5.991,∞)
The conditional g-square doesn’t lie in critical region, Model 4 doesn’t make any improvement over model 2. 
G2Model 2-G2Model 5=111.4-89.216=25.184 df=3 , 
Critical region (7.815, ∞) The conditional g-square lies in critical region, Model 5 makes improvement over model 2. 
G2Model 2-G2Model 6=111.4-103.07=11.33  
df=3 , Critical region (7.815, ∞) 
The conditional g-square lies in critical region, Model 6 makes improvement over model 2. 
Out model 5 and model 6, The model 5 gives best improvement. 
G2Model 5-G2Model 6=89.215-81.327=7.889,df=1 
Critical Region (3.841,∞) The conditional g-square lie in critical region, Model 6 makes improvement over model 5.
