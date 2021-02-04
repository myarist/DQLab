#!/usr/bin/env python
# coding: utf-8

# # [Diagram Pencar (Scatter Plot) Part 2](https://academy.dqlab.id/main/livecode/290/548/2730)

# In[1]:


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
plt.clf()

## mengambil data contoh
raw_data = pd.read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/dataset_statistic.csv", sep=';')

## melihat isi dari data
print(raw_data)

plt.figure()
# visualisasi diagram pencar untuk variabel 'Pendapatan' dan 'Total' menggunakan 'plot.scatter' dari pandas
raw_data.plot.scatter(x='Pendapatan', y='Total')
plt.title('plot.scatter dari pandas', size=14)
plt.tight_layout()
plt.show()

# visualisasi diagram pencar untuk variabel 'Pendapatan' dan 'Total' menggunakan 'plt.scatter' dari matplotlib
plt.scatter(x='Pendapatan', y='Total', data=raw_data)
plt.title('plt.scatter dari matplotlib', size=14)
plt.tight_layout()
plt.show()


# # [Diagram Pencar (Scatter Plot) Part 3](https://academy.dqlab.id/main/livecode/290/548/2731)

# In[2]:


import matplotlib.pyplot as plt
# visualisasi diagram pencar untuk variabel 'Pendapatan' dan 'Total' menggunakan 'plt.scatter' dari matplotlib.pyplot
plt.scatter(x='Pendapatan', y='Total', data=raw_data)
plt.xlabel('Pendapatan')
plt.ylabel('Total')
plt.show()


# # [Histogram Part 2](https://academy.dqlab.id/main/livecode/290/548/2733)

# In[3]:


import matplotlib.pyplot as plt
plt.clf()

plt.figure()
# melihat distribusi data kolom 'Pendapatan' menggunakan 'hist' dari pandas
raw_data.hist(column='Pendapatan')
plt.title('.hist dari pandas', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# melihat distribusi data kolom 'Pendapatan' menggunakan 'pyplot.hist' dari matplotlib.pyplot
plt.hist(x='Pendapatan', data=raw_data)
plt.xlabel('Pendapatan')
plt.title('pyplot.hist dari matplotlib.pyplot', size=14)
plt.tight_layout()
plt.show()


# # [Box and Whisker Plot Part 2](https://academy.dqlab.id/main/livecode/290/548/2735)

# In[4]:


import matplotlib.pyplot as plt
plt.clf()

# melihat box plot dari kolom 'Pendapatan' menggunakan method '.boxplot' dari pandas
plt.figure()
raw_data.boxplot(column='Pendapatan')
plt.title('.boxplot dari pandas', size=14)
plt.tight_layout()
plt.show()

# melihat box plot dari kolom 'Pendapatan' menggunakan method '.boxplot' dari matplotlib
plt.figure()
plt.boxplot(x = 'Pendapatan', data=raw_data)
plt.xlabel('Pendapatan')
plt.title('pyplot.boxplot dari matplotlib.pyplot', size=14)
plt.tight_layout()
plt.show()


# # [Bar Plot](https://academy.dqlab.id/main/livecode/290/548/2736)

# In[5]:


import matplotlib.pyplot as plt
plt.clf()

# hitung frekuensi dari masing-masing nilai pada kolom 'Produk'
class_freq = raw_data['Produk'].value_counts()

# lihat nilai dari class_freq
print(class_freq)

plt.figure()
# membuat bar plot dengan method `plot.bar()` dari pandas
class_freq.plot.bar()
plt.title('.bar dari pandas', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# membuat bar plot dengan method `plt.bar()` dari matplotlib
plt.bar(x=class_freq.index, height=class_freq.values)
plt.title('plt.bar dari matplotlib.pyplot', size=14)
plt.tight_layout()
plt.show()


# # [Pie Chart](https://academy.dqlab.id/main/livecode/290/548/2737)

# In[6]:


import matplotlib.pyplot as plt
plt.clf()

plt.figure()
# membuat pie chart menggunakan method 'pyplot.pie()' dari matplotlib
plt.pie(class_freq.values, labels=class_freq.index)
plt.title('plt.pie dari matplotlib.pyplot', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# membuat pie chart menggunakan method 'plot.pie' dari pandas
class_freq.plot.pie()
plt.title('plot.pie dari pandas', size=14)
plt.tight_layout()
plt.show()


# # [Transformasi Data dan Kaitannya dengan Distribusi Data](https://academy.dqlab.id/main/livecode/290/550/2750)

# In[7]:


from scipy import stats
import matplotlib.pyplot as plt
plt.clf()

plt.figure()
raw_data.hist()
plt.title('Histogram seluruh kolom', size=14)
plt.tight_layout()
plt.show()

plt.figure()
raw_data['Pendapatan'].hist()
plt.title('Histogram pendapatan', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# transformasi menggunakan akar lima
np.power(raw_data['Pendapatan'], 1/5).hist()
plt.title('Histogram pendapatan - ransformasi menggunakan akar lima', size=14)
plt.tight_layout()
plt.show()

# simpan hasil transformasi
pendapatan_akar_lima = np.power(raw_data['Pendapatan'], 1/5)

plt.figure()
# membuat qqplot pendapatan - transformasi menggunakan akar lima
stats.probplot(pendapatan_akar_lima, plot=plt)
plt.title('qqplot pendapatan - transformasi menggunakan akar lima', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# membuat qqplot pendapatan
stats.probplot(raw_data['Pendapatan'], plot=plt)
plt.title('qqplot pendapatan', size=14)
plt.tight_layout()
plt.show()


# # [Transformasi Box-Cox](https://academy.dqlab.id/main/livecode/290/550/2751)

# In[8]:


from scipy import stats
import matplotlib.pyplot as plt
plt.clf()

hasil, _ = stats.boxcox(raw_data['Pendapatan'])

plt.figure()
# Histogram
plt.hist(hasil)
plt.title('Histogram', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# QQPlot
stats.probplot(hasil, plot=plt)
plt.title('qqplot', size=14)
plt.tight_layout()
plt.show()


# # [Transformasi Data Kategorik ke Dalam Angka](https://academy.dqlab.id/main/livecode/290/550/2752)

# In[9]:


print(raw_data['Produk'])

data_dummy_produk = pd.get_dummies(raw_data['Produk'])

print(data_dummy_produk)


# # [Matriks Korelasi](https://academy.dqlab.id/main/livecode/290/551/2756)

# In[10]:


import seaborn as sns
import matplotlib.pyplot as plt
plt.clf()

# mengatur ukuran gambar/plot
plt.rcParams['figure.dpi'] = 100

plt.figure()
plt.matshow(raw_data.corr())
plt.title('Plot correlation matriks dengan .matshow', size=14)
plt.tight_layout()
plt.show()

plt.figure()
sns.heatmap(raw_data.corr(), annot=True)
plt.title('Plot correlation matriks dengan sns.heatmap', size=14)
plt.tight_layout()
plt.show()


# # [Grouped Box Plot](https://academy.dqlab.id/main/livecode/290/551/2760)

# In[11]:


import matplotlib.pyplot as plt
plt.clf()

plt.figure()
# boxplot biasa tanpa pengelompokkan
raw_data.boxplot(rot=90)
plt.title('Boxplot tanpa pengelompokkan', size=14)
plt.tight_layout()
plt.show()

plt.figure()
# box plot dengan pengelompokkan dilakukan oleh kolom 'Produk'
raw_data.boxplot(by='Produk')
plt.tight_layout()
plt.show()


# # [Grouped Histogram](https://academy.dqlab.id/main/livecode/290/551/2761)

# In[12]:


import matplotlib.pyplot as plt
plt.clf()

plt.figure()
raw_data[raw_data['Produk'] == 'A'].hist()
plt.tight_layout()
plt.show()

plt.figure()
raw_data[raw_data['Produk'] == 'B'].hist()
plt.tight_layout()
plt.show()

plt.figure()
raw_data[raw_data['Produk'] == 'C'].hist()
plt.tight_layout()
plt.show()

plt.figure()
raw_data[raw_data['Produk'] == 'D'].hist()
plt.tight_layout()
plt.show()

plt.figure()
raw_data[raw_data['Produk'] == 'E'].hist()
plt.tight_layout()
plt.show()


# # [Hex Bin Plot](https://academy.dqlab.id/main/livecode/290/551/2762)

# In[13]:


import matplotlib.pyplot as plt
plt.clf()

plt.figure()
raw_data.plot.hexbin(x='Pendapatan', y='Total', gridsize=25, rot=90)
plt.tight_layout()
plt.show()


# # [Scatter Matrix Plot](https://academy.dqlab.id/main/livecode/290/551/2763)

# In[14]:


from pandas.plotting import scatter_matrix
import matplotlib.pyplot as plt
plt.clf()

_, ax = plt.subplots(1, 1, figsize=(10,10))
scatter_matrix(raw_data, ax=ax)
plt.show()


# # [Quiz](https://academy.dqlab.id/main/livecode/290/551/2764)

# In[15]:


from pandas.plotting import scatter_matrix
import matplotlib.pyplot as plt
plt.clf()

_, ax = plt.subplots(1, 1, figsize=(10,10))
scatter_matrix(raw_data, diagonal='kde', ax=ax)
plt.show()

