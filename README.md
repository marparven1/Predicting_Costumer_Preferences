# MARTA VENEGAS PARDO (UBIQUM CODE ACADEMY)


## Module 3 Predicting_Costumer_Preferences

Task 1: PROJECT FOR Blackwell Electronics

RProject 

Working with Danielle Sherman, the Chief Technology Officer at Blackwell Electronics. 

The company has recently begun to leverage the data collected from online and in-store transactions to gain insight into their customers' purchasing behavior.
I will be using data mining methods to develop predictive models with R to predict which brand of computer products Blackwell customers prefer based on customer 
demographics collected from a marketing survey, will try to determine associations between products that be used to drive sales-oriented initiatives such as 
recommender systems like the ones used by Amazon and other eCommerce sites. 



### Skills applicable to data mining tasks:
 
- Data mining in e-commerce (e.g. profitability prediction, customer segmentation, product selection strategy)
- Preprocessing data for data mining (e.g., applying filters, addressing missing data)
- Using data mining tools and different classifiers (e.g., k-nearest neighbor, decision trees, support vector machines) to develop predictive models
- Using the R statistical programming language
- Using the caret package for R
- Applying machine learning techniques to classification and regression problems
- Optimizing classifiers by adjusting and testing classifier parameters
- Applying cross-validation methods
- Assessing the predictive performance of classifiers by examining key error metrics
- Comparing and selecting different predictive models
- Applying predictive models to test sets
- Presenting data mining results to management.
 

### What will I learn?

- Exploring the patterns in the data to create models to predict new events, like customer product preferences. 
- Pptimize the initial performance of a classifier by adjusting its parameters. 
- Interpreting the output of a classifier by selecting from different classifiers to compare their performance characteristics.



## Predicting_Costumer_Preferences. Task2: Classification: Predict which Brand of Products Customers Prefer
  - Fase 1. Data Science Process)


### Introduction (problem definition)

#### Objectives

- The sales team hired a market research company to conduct a survey of Blackwell Electronics customers with the objective of finding out, among all the brands
of computers in sales, which are the two brands preferred by the customers. With this information, decisions can be made on which manufacturers to seek a better
strategic relationship.

- However, as is often the case when doing a survey, the information on the preference of computer brands was not completely collected, so we do not have 
accurate results.

- For this reason, we must investigate whether the answers to other questions in the survey could help us predict our customers' computer brand preference



#### Procedure to meet my objectives

- Optimization of classification methods through decision trees (C5.0 and RandomForest)
- Decision of the method that works best for our data

- Data sets:
  - CompleteResponses : Data set with 10,000 completed surveys that we will use to train the model and build a predictive model
  - Survey key : Survey (at the end of the document)
  - Survey Incomplete : Dataset to test the best model and try to predict the brand preferred by customers
