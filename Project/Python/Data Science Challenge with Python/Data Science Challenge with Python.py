#!/usr/bin/env python
# coding: utf-8

# In[1]:


dic1 = {1:10, 2:20}
dic2 = {3:30, 4:40}
dic3 = {5:50, 6:60}
dic4 = {}
for x in (dic1, dic2, dic3):
    dic4.update(x)
print(dic4)


# # [Jumlah 7 Deret Pertama Fibonacci](https://academy.dqlab.id/main/projectcode/158/290/1280)

# In[2]:


# Buat fungsi penjumlahan deret Fibonacci
def calculateSum(n):
    if n <= 0:
        return 0
    fibo = [0] * (n + 1)
    fibo[1] = 1
    # Initialisasi hasil ke dalam variabel sm
    sm = fibo[0] + fibo[1]
    # Tambahkan suku-suku berikutnya
    for i in range(2, n + 1):
        fibo[i] = fibo[i - 1] + fibo[i - 2]
        sm += fibo[i]
    return sm
# Evaluasi hasil deret untuk n = 7    
print(calculateSum(7))

