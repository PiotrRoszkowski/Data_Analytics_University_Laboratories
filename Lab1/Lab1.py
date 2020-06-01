# Author: Piotr Roszkowski

# EXERCISE 1
import pandas as pd
data = pd.read_csv("Data1.csv")
print(data)

# EXERCISE 2
data2 = data.set_index(data.columns[0])
print(data)

# EXERCISE 3
import matplotlib.pyplot as plt
data2.index = pd.to_datetime(data2.index)
data2.plot()
plt.xlabel('Date')
plt.ylabel('Values')
plt.grid()

# EXERCISE 4
data.hist(bins = 21)
import seaborn as sns
sns.set()
dataMelted = pd.melt(data.reset_index(), \
id_vars = 'index', value_vars=['theta_1', 'theta_2', 'theta_3', 'theta_4', 'theta_5', 'theta_6'], \
value_name = "Theta", var_name = "Date time")
g = sns.FacetGrid(dataMelted, sharex = False)
g = g.map(plt.hist, dataMelted.columns[2], bins = 70)

# EXERCISE 5
for i in range(6):
    fig, ax = plt.subplots()
    theta = pd.Series(data.iloc[:, i+1])
    ax = theta.plot.kde(bw_method=0.3)
    plt.xlabel(data.columns[i+1])
    plt.grid()

# EXERCISE 6
data = data2['2018-01-01':'2019-01-01']
data.plot()
plt.xlabel('Date')
plt.ylabel('Values')
plt.grid()
for i in range(4):
    fig, ax = plt.subplots()
    theta = pd.Series(data.iloc[:, i])
    ax = theta.plot.kde(bw_method=0.3)
    plt.xlabel(data.columns[i])
    plt.grid()