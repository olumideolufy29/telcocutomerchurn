-- Training the customer churn model for telco
exec train_customer_churn_model;

-- Finding the model
select * from cdr_models
where model_name = 'rxDForest'

-- Evaluating the model
exec model_evaluate

-- Predicting customers that will churn
exec predict_customer_churn 'rxDForest';
