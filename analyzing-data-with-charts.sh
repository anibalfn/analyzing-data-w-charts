#!/usr/bin/env python
# coding: utf-8

# In[ ]:


### Imports

import pandas as pd
import plotly_express as px
data = pd.read_excel("vendas.xlsx")


# In[ ]:


### Shows the first five data conjunct of the document;
data.head()


# In[ ]:


### Shows the last five data conjunct of the document;
data.tail()


# In[ ]:


### Verify how many rows and columns exists in the document;
data.shape


# In[ ]:


### Generate important data about the document;
data.info()


# In[ ]:


### Generate statistics about all quantitative columns;
data.describe()


# In[ ]:


### Accessing only a column;
data['loja']


# In[ ]:


### Obtaining unique values from a column;
data['loja'].unique()


# In[ ]:


### Counting column values;
data['loja'].value_counts()


# In[ ]:


### To obtain relative value;
data['loja'].value_counts(normalize=True)


# In[ ]:


### Agrouping data utilizing groupby()
### Billing per store:
data.groupby('loja').preco.sum ()


# In[ ]:


### Billing per store medium:
data.groupby('loja').preco.mean ()


# In[ ]:


### Making charts: counting of orders per shop
px.histogram(data, x='loja', color='regiao', text_auto=True)


# In[ ]:


### Creating multiple charts

columns = ['loja', 'cidade', 'estado', 'tamanho', 'local_consumo']
for coluna in columns:
    fig = px.histogram(data, x=coluna, y='preco', color='forma_pagamento', text_auto=True)
    fig.show()


# In[ ]:


### Export charts as img;
### fig.write_image("exports/chart.jpg") -- Change the directory to the directory you want;

### Export charts as HTML:
### fig.write_html("filename(include path).html")
### fig.write_html("sample/test.html") #Save the file as test.html under the sample directory. 


# In[ ]:





# In[ ]:





# In[ ]:




