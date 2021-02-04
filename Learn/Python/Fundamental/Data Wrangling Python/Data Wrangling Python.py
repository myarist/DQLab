#!/usr/bin/env python
# coding: utf-8

# # [Membaca file dengan menggunakan pandas](https://academy.dqlab.id/main/livecode/79/142/578)

# In[2]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data)


# # [Membaca file dengan menggunakan head()](https://academy.dqlab.id/main/livecode/79/142/579)

# In[3]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data.head())


# # [Melakukan akses data kolom](https://academy.dqlab.id/main/livecode/79/142/580)

# In[4]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data['Age'])


# # [Melakukan akses data melalui baris](https://academy.dqlab.id/main/livecode/79/142/581)

# In[5]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data.iloc[5])


# # [Menampilkan suatu data dari baris dan kolom tertentu](https://academy.dqlab.id/main/livecode/79/142/582)

# In[6]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data['Age'].iloc[1])

print("Cuplikan Dataset:")

print(csv_data.head())


# # [Menampilkan data dalam range tertentu](https://academy.dqlab.id/main/livecode/79/142/583)

# In[7]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print("Menampilkan data ke 5 sampai kurang dari 10 dalam satu baris:")

print(csv_data.iloc[5:10])


# # [Menampilkan informasi statistik dengan Numpy](https://academy.dqlab.id/main/livecode/79/142/584)

# In[8]:


import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data.describe(exclude=['O']))


#  # [Melakukan pengecekan untuk nilai NULL yang ada](https://academy.dqlab.id/main/livecode/79/144/586)

# In[10]:


import pandas as pd

csv_data = pd.read_csv("shopping_data_missingvalue.csv")

print(csv_data.isnull())


# # [Mengisi dengan Mean](https://academy.dqlab.id/main/livecode/79/144/588)

# In[11]:


import pandas as pd

csv_data = pd.read_csv("shopping_data_missingvalue.csv")
print(csv_data.mean())
print("Dataset yang masih terdapat nilai kosong ! :")
print(csv_data.head(10))

csv_data=csv_data.fillna(csv_data.mean())
print("Dataset yang sudah diproses Handling Missing Values dengan Mean :")
print(csv_data.head(10))


# # [Mengisi dengan Median](https://academy.dqlab.id/main/livecode/79/144/589)

# In[12]:


import pandas as pd

csv_data = pd.read_csv("shopping_data_missingvalue.csv")
print("Dataset yang masih terdapat nilai kosong ! :")
print(csv_data.head(10))

csv_data=csv_data.fillna(csv_data.median())
print("Dataset yang sudah diproses Handling Missing Values dengan Median :")
print(csv_data.head(10))


# # [Praktek Normalisasi menggunakan Scikit Learn pada Python](https://academy.dqlab.id/main/livecode/79/144/593)

# In[13]:


import pandas as pd
import numpy as np
from sklearn import preprocessing

csv_data = pd.read_csv("shopping_data.csv")
array = csv_data.values

X = array[:,2:4] #memisahkan fitur dari dataset. 
Y = array[:,0:1]  #memisahkan class dari dataset

dataset=pd.DataFrame({'Customer ID':array[:,0],'Gender':array[:,1],'Age':array[:,2],'Income':array[:,3],'Spending Score':array[:,4]})
print("dataset sebelum dinormalisasi :")
print(dataset.head(10))

min_max_scaler = preprocessing.MinMaxScaler(feature_range=(0,1)) #inisialisasi normalisasi MinMax
data = min_max_scaler.fit_transform(X) #transformasi MinMax untuk fitur
dataset = pd.DataFrame({'Age':data[:,0],'Income':data[:,1],'Spending Score':data[:,2],'Customer ID':array[:,0],'Gender':array[:,1]})

print("dataset setelah dinormalisasi :")
print(dataset.head(10))

