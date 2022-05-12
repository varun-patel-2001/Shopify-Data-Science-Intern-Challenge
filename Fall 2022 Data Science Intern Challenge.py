import pandas as pd

data = pd.read_csv('2019 Winter Data Science Intern Challenge Data Set - Sheet1.csv')
print(data['order_amount'].mean())
print(data['order_amount'].sum()/data['total_items'].sum())