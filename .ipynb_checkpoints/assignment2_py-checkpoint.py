import sys
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

if len(sys.argv) != 4:
    print("Usage: python linear_regression_python.py <filename> <x_column> <y_column>")
    sys.exit(1)

filename = sys.argv[1]
x_col = sys.argv[2]
y_col = sys.argv[3]

data = pd.read_csv(filename)
model = LinearRegression()
model.fit(data[[x_col]], data[[y_col]])

plt.scatter(data[[x_col]], data[[y_col]], color='red')
plt.plot(data[[x_col]], model.predict(data[[x_col]]), color='blue')
plt.title(f'{y_col} vs {x_col}')
plt.xlabel(x_col)
plt.ylabel(y_col)
plt.savefig("linear_regression_python_output.png")
plt.show()

#!/usr/bin/env python
# coding: utf-8

# This notebook demonstrates a simple linear regression analysis using Python to model Salary based on Years of Experience 

# In[1]:


#reading the dataset 


# In[3]:


import pandas as pd
dataset = pd.read_csv("regression_data.csv")


# In[ ]:


#whoops 


# In[4]:


#pip install pandas


# In[5]:


import pandas as pd
dataset = pd.read_csv("regression_data.csv")


# In[ ]:


#imported data set 


# In[6]:


import matplotlib.pyplot as plt
plt.scatter(dataset["YearsExperience"], dataset["Salary"], color="red")


# In[7]:


#need to install matplotlib


# In[8]:


#pip install matplotlib


# In[ ]:


#trying again 


# In[9]:


import matplotlib.pyplot as plt
plt.scatter(dataset["YearsExperience"], dataset["Salary"], color="red")


# In[10]:


#pip install sklearn


# In[11]:


from sklearn.linear_model import LinearRegression
model = LinearRegression()
model.fit(dataset[["YearsExperience"]], dataset[["Salary"]])


# In[12]:


#pip install scikit-learn 


# In[13]:


#trying again now that i have sklearn installed 


# In[14]:


from sklearn.linear_model import LinearRegression
model = LinearRegression()
model.fit(dataset[["YearsExperience"]], dataset[["Salary"]])


# In[15]:


plt.plot(dataset["YearsExperience"], model.predict(dataset[["YearsExperience"]]), color="blue")
plt.title("Salary vs Experience")
plt.xlabel("Years of Experience")
plt.ylabel("Salary")
plt.show()


# In[16]:


#look at me go! 


# In[17]:


model.score(dataset[["YearsExperience"]], dataset[["Salary"]])  # R-squared


# In[ ]:




