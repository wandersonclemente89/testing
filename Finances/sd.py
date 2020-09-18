# -*- coding: utf-8 -*-
"""
Created on Sat Mar 28 09:50:50 2020

@author: wanderson.barros
"""


import numpy as np
from pandas_datareader import data as wb
import pandas as pd
from math import pow

listOfSttocks = ['ITSA4.SA', 'POMO4.SA', 'GOLL4.SA']

def standard_deviation(listOfSttocks, startDate):
     data = pd.DataFrame()
     for stock in listOfSttocks:
         data[stock] = wb.DataReader(stock,data_source='yahoo',start=startDate)['Adj Close']

     daily_avg = np.log(data / data.shift(1))
     std = daily_avg[listOfSttocks].std() * pow(250,0.5)
    # mean = daily_avg[listOfSttocks].mean() * 250
     return std



print(standard_deviation(listOfSttocks,'2000-1-1'))

def correlationn(listOfSttocks, startDate):
     data = pd.DataFrame()
     for stock in listOfSttocks:
         data[stock] = wb.DataReader(stock,data_source='yahoo',start=startDate)['Adj Close']

     daily_avg = np.log(data / data.shift(1))
     corr = daily_avg.corr()
     return corr

print(correlationn(listOfSttocks,'2000-1-1'))

def portifolio_risk(dictOfStocks, startDate):
     data = pd.DataFrame()
     totalNumberOfStocks = 0
     weights = []

     for stock in dictOfStocks:
         totalNumberOfStocks += dictOfStocks[stock]
         data[stock] = wb.DataReader(stock,data_source='yahoo',start=startDate)['Adj Close']

     for stock in dictOfStocks:
        weights.append(dictOfStocks[stock]/totalNumberOfStocks)

     daily_avg = np.log(data / data.shift(1))
     pfolio_var = (np.dot(np.array(weights).T, np.dot( daily_avg.cov() * 250, weights)))
     pfolio_vol = pow(pfolio_var,0.5)

     return pfolio_var, str(round(pfolio_vol, 5) * 100) + '%'

dictOfStocks = {
        'GOLL4.SA': 000,
        'ITSA4.SA': 100,
        'POMO4.SA': 100,
        'MOVI3.SA': 100
}

print(portifolio_risk(dictOfStocks,'2000-1-1'))