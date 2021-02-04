#!/usr/bin/env python
# coding: utf-8

# # [Code Hello World](https://academy.dqlab.id/main/livecode/45/110/524)

# In[1]:


print(10*2+5)
print("Academy DQLab")


# # [Melakukan Comment Pada Python](https://academy.dqlab.id/main/livecode/45/110/525)

# In[2]:


print(10*2+5) #fungsi matematika
print("Academy DQLab") #fungsi mencetak kalimat


# # [Printing Data Type](https://academy.dqlab.id/main/livecode/45/110/527)

# In[3]:


var_string="Belajar Python DQLAB"
var_int=10
var_float=3.14
var_list=[1,2,3,4]
var_tuple=("satu","dua","tiga")
var_dict={"nama":"Ali", 'umur':20}


print(var_string)
print(var_int)
print(var_float)
print(var_list)
print(var_tuple)
print(var_dict)

print(type(var_string))
print(type(var_int))
print(type(var_float))
print(type(var_list))
print(type(var_tuple))
print(type(var_dict))


# # [IF Statement](https://academy.dqlab.id/main/livecode/45/111/529)

# In[4]:


i = 7 #inisialisasi variable i yang memiliki nilai 10

if(i==10): #pengecekan nilai i apakah sama dengan 10
    print("ini adalah angka 10") #jika TRUE maka akan mencetak kalimat ini


# # [IF … ELSE …](https://academy.dqlab.id/main/livecode/45/111/530)

# In[5]:


i = 5 #inisialisasi variable i yang memiliki nilai 10

if(i==10): #pengecekan nilai i apakah sama dengan 10
    print("ini adalah angka 10") #jika TRUE maka akan mencetak kalimat ini
else:
    print("bukan angka 10") #jika FALSE akan mencetak kalimat ini


# # [IF … ELIF … ELSE ….](https://academy.dqlab.id/main/livecode/45/111/531)

# In[6]:


i=3

if(i==5):
     print("ini adalah angka 5")
elif(i>5):
     print("lebih besar dari 5")
else:
     print("lebih kecil dari 5")


# # [NESTED IF](https://academy.dqlab.id/main/livecode/45/111/532)

# In[7]:


if (i<7):
	print("nilai i kurang dari 7")
	if (i<3):
		print("nilai i kurang dari 7 dan kurang dari 3")
	else:
		print("nilai i kurang dari 7 tapi lebih dari 3")


# # [Praktek Operasi Matematika](https://academy.dqlab.id/main/livecode/45/112/534)

# In[8]:


a=10
b=5
selisih = a-b
jumlah = a+b
kali = a*b
bagi = a/b
print("Hasil penjumlahan dan b adalah", jumlah)
print("Selisih a dan b adalah :",selisih)
print("Hasil perkalian a dan b adalah :",kali)
print("Hasil pembagian a dan b adalah:",bagi)


# # [Operasi modulus](https://academy.dqlab.id/main/livecode/45/112/536)

# In[9]:


c=10
d=3

modulus=c%d
print("Hasil modulus",modulus)


# # [Tugas Mid Praktek](https://academy.dqlab.id/main/livecode/45/112/538)

# In[10]:


angka=5

if(angka%2 == 0):
    print("angka termasuk bilangan genap")
else:
    print("angka termasuk bilangan ganjil")


# # [while](https://academy.dqlab.id/main/livecode/45/113/540)

# In[11]:


j = 0 #nilai awal j =0

while j<6: #ketika j kurang dari 6 lakukan perulangan, jika tidak stop perulangan
    print("Ini adalah perulangan ke -",j) #lakukan perintah ini ketika perulangan
    j=j+1 #setiap kali diakhir perulangan update nilai dengan ditambah 1. 


# # [for (1)](https://academy.dqlab.id/main/livecode/45/113/542)

# In[12]:


for i in range (1,6): #perulangan for sebagai inisialisasi dari angka 1 hingga angka yang lebih kecil daripada 6.

    print("Ini adalah perulangan ke -", i) #perintah jika looping akan tetap berjalan


# # [for (2) with access element](https://academy.dqlab.id/main/livecode/45/113/543)

# In[13]:


for i in range (1,11):
    if(i%2 == 0):
        print("Angka genap",i)
    else:
         print("Angka ganjil",i)


# # [Membuat fungsi sendiri](https://academy.dqlab.id/main/livecode/45/114/545)

# In[14]:


# Membuat Fungsi
def salam():
    print("Hello, Selamat Pagi")

## Pemanggilan Fungsi
salam()


# # [Parameter pada fungsi](https://academy.dqlab.id/main/livecode/45/114/546)

# In[15]:


def luas_segitiga(alas, tinggi): #alas dan tinggi merupakan parameter yang masuk
    luas = (alas * tinggi) / 2
    print("Luas segitiga: %f" % luas);

# Pemanggilan fungsi
##4 dan 6 merupakan parameter yang diinputkan kedalam fungsi luas segitiga
luas_segitiga(4, 6) 


# # [Fungsi dengan Return Value](https://academy.dqlab.id/main/livecode/45/114/547)

# In[16]:


def luas_segitiga(alas, tinggi): #alas dan tinggi merupakan parameter yang masuk
    luas = (alas * tinggi) / 2
    return luas

# Pemanggilan fungsi
##4 dan 6 merupakan parameter yang diinputkan kedalam fungsi luas segitiga 
print("Luas segitiga: %d" % luas_segitiga(4, 6))


# # [Import Package dan Menggunakan modul](https://academy.dqlab.id/main/livecode/45/115/549)

# In[17]:


import math
print("Nilai pi adalah:", math.pi)# math.pi merupakan sintak untuk memanggil fungsi


# # [Import dengan Module Rename atau Alias](https://academy.dqlab.id/main/livecode/45/115/550)

# In[18]:


import math as m  #menggunakan m sebagai module rename atau alias
print("Nilai pi adalah:", m.pi) #m.pi merupakan sintak untuk memanggil fungsi​


# # [Import Sebagian Fungsi](https://academy.dqlab.id/main/livecode/45/115/560)

# In[19]:


from math import pi

print("Nilai pi adalah", pi)


# # [Import Semua isi Moduls](https://academy.dqlab.id/main/livecode/45/115/561)

# In[20]:


from math import *

print("Nilai e adalah:", e)


# # [Membaca Teks File (CSV)](https://academy.dqlab.id/main/livecode/45/116/552)

# In[22]:


import csv

# tentukan lokasi file, nama file, dan inisialisasi csv
f = open('penduduk_gender_head.csv', 'r')
reader = csv.reader(f)

# membaca baris per baris
for row in reader:
     print (row)

# menutup file csv
f.close()


# # [Membaca file CSV dengan menggunakan PANDAS](https://academy.dqlab.id/main/livecode/45/116/553)

# In[23]:


import pandas as pd

table = pd.read_csv("https://academy.dqlab.id/dataset/penduduk_gender_head.csv")
table.head()
print(table)


# # [Bar Chart](https://academy.dqlab.id/main/livecode/45/117/555)

# In[24]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

table = pd.read_csv("https://academy.dqlab.id/dataset/penduduk_gender_head.csv")
table.head()
x_label = table['NAMA KELURAHAN']
plt.bar(x=np.arange(len(x_label)),height=table['LAKI-LAKI WNI'])
plt.show()


# # [Parameter dalam Grafik (Memberikan Nilai Axis dari data CSV)](https://academy.dqlab.id/main/livecode/45/117/556)

# In[25]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

table = pd.read_csv("https://academy.dqlab.id/dataset/penduduk_gender_head.csv")
table.head()

x_label = table['NAMA KELURAHAN']
plt.bar(x=np.arange(len(x_label)),height=table['LAKI-LAKI WNI'])
plt.xticks(np.arange(len(x_label)), table['NAMA KELURAHAN'], rotation=30)
plt.show()


# # [Menambah Title dan Label pada Grafik](https://academy.dqlab.id/main/livecode/45/117/557)

# In[26]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


table = pd.read_csv("https://academy.dqlab.id/dataset/penduduk_gender_head.csv")
table.head()

x_label = table['NAMA KELURAHAN']
plt.bar(x=np.arange(len(x_label)),height=table['LAKI-LAKI WNI'])
plt.xticks(np.arange(len(x_label)), table['NAMA KELURAHAN'], rotation=90)
plt.xlabel('Keluarahan di Jakarta pusat')
plt.ylabel('Jumlah Penduduk Laki - Laki')
plt.title('Persebaran Jumlah Penduduk Laki-Laki di Jakarta Pusat')

plt.show()

