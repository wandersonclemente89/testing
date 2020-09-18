# -*- coding: utf-8 -*-
"""
Created on Fri Mar 27 19:22:56 2020

@author: wanderson.barros
"""

import numpy as np
from pandas_datareader import data as wb
import matplotlib.pyplot as plt
import pandas as pd


def stock_return(stock, startDate, meanType):
    data = wb.DataReader(stock, data_source='yahoo', start=startDate)

    if meanType == 'S':
        data['simple_return'] = (data['Adj Close'] / data['Adj Close'].shift(1)) - 1
        # Média de retorno diário
        # avg_daily=data['simple_return'].mean()
        # Média de retorno anual
        avg_annual = data['simple_return'].mean() * 250
        # Gráfico
        data['simple_return'].plot(figsize=(8, 5))
    # plt.show()
    elif meanType == 'L':
        data['log_return'] = np.log(data['Adj Close'] / data['Adj Close'].shift(1))
        # Média de retorno diário
        # avg_daily=data['log_return'].mean()
        # Média de retorno anual
        avg_annual = data['log_return'].mean() * 250
        # Gráfico
        data['log_return'].plot(figsize=(8, 5))
    # plt.show()
    else:
        print('Invalid mean type! \n please choose either \'S\' or \'L\'.')
        return

    # return str(round(avg_daily,5) * 100
    return round(avg_annual, 5) * 100


def stock_portifolio_return(dictOfStocks, startDate):
    data = pd.DataFrame()
    totalNumberOfStocks = 0
    weights = []

    for stock in dictOfStocks:
        totalNumberOfStocks += dictOfStocks[stock]
        data[stock] = wb.DataReader(stock, data_source='yahoo', start=startDate)['Adj Close']

    (data / data.iloc[0] * 100).plot(figsize=(15, 6))
    plt.show()

    for stock in dictOfStocks:
        weights.append(dictOfStocks[stock] / totalNumberOfStocks)

    annual_return = ((data / data.shift(1)) - 1).mean() * 250

    return str(round(np.dot(annual_return, np.array(weights)), 5) * 100) + '%'


def stock_indice_comparison(listOfStocks, startDate):
    data = pd.DataFrame()
    for stock in listOfSttocks:
        data[stock] = wb.DataReader(stock, data_source='yahoo', start=startDate)['Adj Close']

    (data / data.iloc[0] * 100).plot(figsize=(15, 6))
    plt.show()


dictOfStocks = {
    'GOLL4.SA': 200,
    'ITSA4.SA': 100,
    'POMO4.SA': 100,
    'MOVI3.SA': 100
}

listOfSttocks = ['GOLL4.SA', "ITSA4.SA", '^BVSP']

# print(stockPortifolioReturn(dictOfStocks,'2002-1-1'))
# stockPortifolioReturn(dictOfStocks,'1995-1-1')
# print(stock_indice_comparison(listOfSttocks,'2006-1-1'))
# stockReturn('GOLL4.SA','1995-1-1','L')
