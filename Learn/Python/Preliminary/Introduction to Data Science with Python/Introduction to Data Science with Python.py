#!/usr/bin/env python
# coding: utf-8

# # [Python “Hello World” & Statement](https://academy.dqlab.id/main/livecode/162/306/1398)

# In[1]:


print("Hello World.")
print("Saya Aksara, baru belajar Python.")


# # [Variables di Python](https://academy.dqlab.id/main/livecode/162/306/1399)

# In[3]:


bil1 = 10
Bil_2 = 20
Frasa = "Halo Dunia"
bil1, Bil_2 = 10, 20
salam = "Selamat Pagi"; Penutup = "Salam Sejahtera"


# # [Comments di Python](https://academy.dqlab.id/main/livecode/162/306/1401)

# In[4]:


#perintah pada baris ini tidak mempengaruhi program
'''
perintah ini tidak akan dieksekusi oleh Python
dan perintah ini juga tidak akan dieksekusi
perintah ini juga tidak akan dieksekusi
'''
print("jadi # digunakan untuk membuat comment pada Python")


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/162/307/1406)

# In[5]:


text = "Belajar Python di DQLab."
print(list(text))
print(tuple(text))
print(set(text))


# # [Menggunakan Library di Python](https://academy.dqlab.id/main/livecode/162/307/1408)

# In[6]:


import math
import numpy as np
import pandas as pd
import seaborn as sns

