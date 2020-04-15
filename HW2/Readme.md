# Stock Predict

## Introduction

- This is Assignemnt2
- Name: Yiziyin Yao
- NUID: 001341398
- Teammate:  Sichen Zhao  NUID: 001051127

## Detail:

1.data folder: source data of data analyst

2.screenshot folder: program running result and predict result.

XXX days.png: how far we can predict above 70% accurate rate.

3.StockPredict.ipynb: Jupyter note python code file.

change data source to another file to change company

other related comments in .ipynb file

```python
data = pd.read_csv('data/AMD.csv', index_col=['Date'], parse_dates=['Date'])
#file can be changed to another one
data.head(20)
```

