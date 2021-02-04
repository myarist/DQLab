#!/usr/bin/env python
# coding: utf-8

# # [Memanggil library di Python](https://academy.dqlab.id/main/livecode/163/308/1418)

# In[18]:


import numpy as np
import pandas as pd


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/309/1420)

# In[19]:


import pandas as pd
order_df = pd.read_csv("order.csv")


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/309/1423)

# In[20]:


import pandas as pd
order_df = pd.read_csv("order.csv")
print(order_df.shape)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/309/1425)

# In[21]:


import pandas as pd
order_df = pd.read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/order.csv")
print(order_df.head(10))


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/309/1430)

# In[22]:


import pandas as pd
order_df = pd.read_csv("order.csv")
# Quick summary dari segi kuantitas, harga, freight value, dan weight
print(order_df.describe())
# Median median dari total pembelian konsumen per transaksi
print(order_df.loc[:, "price"].median())


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/310/1432)

# In[23]:


import pandas as pd
import matplotlib.pyplot as plt
order_df = pd.read_csv("order.csv")
# plot histogram kolom: price
order_df[["price"]].hist(figsize=(4, 5), bins=10, xlabelsize=8, ylabelsize=8)
plt.show()  # Untuk menampilkan histogram plot


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/310/1434)

# In[24]:


import pandas as pd
order_df = pd.read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/order.csv")
# Standar variasi kolom product_weight_gram
order_df.loc[:, "product_weight_gram"].std()
# Varians kolom product_weight_gram
order_df.loc[:, "product_weight_gram"].var()


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/310/1436)

# In[25]:


import pandas as pd
order_df = pd.read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/order.csv")
# Hitung quartile 1
Q1 = order_df[["product_weight_gram"]].quantile(0.25)
# Hitung quartile 3
Q3 = order_df[["product_weight_gram"]].quantile(0.75)
# Hitung inter quartile range dan cetak ke console
IQR = Q3 - Q1
print(IQR)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/310/1438)

# In[26]:


import pandas as pd
order_df = pd.read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/order.csv")
# Ganti nama kolom freight_value menjadi shipping_cost
order_df.rename(columns={"freight_value": "shipping_cost"}, inplace=True)
print(order_df)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/310/1440)

# In[27]:


import pandas as pd
order_df = pd.read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/order.csv")
# Hitung rata rata dari price per payment_type
rata_rata = order_df["price"].groupby(order_df["payment_type"]).mean()
print(rata_rata)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/163/310/1442)

# In[ ]:


import pandas as pd
order_df = pd.read_csv("order.csv")
# Hitung harga maksimum pembelian customer
sort_harga = order_df.sort_values(by="customer", ascending=False)
print(sort_harga)


# # [Tugas dari Andra](https://academy.dqlab.id/main/livecode/163/311/1444)

# In[16]:


import pandas as pd
import matplotlib.pyplot as plt
order_df = pd.read_csv("order.csv")
# Median price yang dibayar customer dari masing-masing metode pembayaran. 
median_price = order_df["price"].groupby(order_df["payment_type"]).median()
print(median_price)
# Ubah freight_value menjadi shipping_cost dan cari shipping_cost 
# termahal dari data penjualan tersebut menggunakan sort.
order_df.rename(columns={"freight_value": "shipping_cost"}, inplace=True)
sort_value = order_df.sort_values(by="shipping_cost", ascending=0)
print(sort_value)
# Untuk product_category_name, berapa rata-rata weight produk tersebut 
# dan standar deviasi mana yang terkecil dari weight tersebut, 
mean_value = order_df["product_weight_gram"].groupby(order_df["product_category_name"]).mean()
print(mean_value)
std_value = order_df["product_weight_gram"].groupby(order_df["product_category_name"]).std()
print(std_value)
# Buat histogram quantity penjualan dari dataset tersebutuntuk melihat persebaran quantity 
# penjualan tersebut dengan bins = 5 dan figsize= (4,5)
order_df[["quantity"]].hist(figsize=(4, 5), bins=5)
plt.show()

