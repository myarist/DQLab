# -*- coding: utf-8 -*-
"""
Created on Tue Aug 18 13:25:00 2020

@author: yusuf
"""

# Membaca file dengan menggunakan pandas

import pandas as pd

csv_data = pd.read_csv("shopping_data.csv")

print(csv_data)

# Membaca file dengan menggunakan head()

print(csv_data.head())

# Melakukan akses data kolom

print(csv_data.columns)

print(csv_data['Age'])

# Melakukan akses data melalui baris

print(csv_data.iloc[5])

# Menampilkan suatu data dari baris dan kolom tertentu

print(csv_data['Age'].iloc[1])

print("Cuplikan Dataset:")

print(csv_data.head())

print("Menampilkan data ke 5 sampai kurang dari 10 :")

print(csv_data['Age'].iloc[5:10])

print("Menampilkan data ke 5 sampai kurang dari 10 dalam satu baris:")

print(csv_data.iloc[5:10])

# Menampilkan informasi statistik dengan Numpy

print(csv_data.describe(include='all'))

print(csv_data.describe(exclude=['O']))

# Data Missing Hingga Normalisasi Data

print(csv_data.isnull().values.any())

print(csv_data.isnull().values.any())

print(csv_data.mean())

print(csv_data.mean())
print("Dataset yang masih terdapat nilai kosong ! :")
print(csv_data.head(10))

csv_data=csv_data.fillna(csv_data.mean())
print("Dataset yang sudah diproses Handling Missing Values dengan Mean :")
print(csv_data.head(10)) 

print(csv_data.median())

print("Dataset yang masih terdapat nilai kosong ! :")
print(csv_data.head(10))

csv_data=csv_data.fillna(csv_data.median())
print("Dataset yang sudah diproses Handling Missing Values dengan Median :")
print(csv_data.head(10))

# Praktek Normalisasi menggunakan Scikit Learn pada Python

import pandas as pd
from sklearn import preprocessing

csv_data = pd.read_csv("shopping_data.csv")
array = csv_data.values

X = array[:,2:5] #memisahkan fitur dari dataset. 
Y = array[:,0:1]  #memisahkan class dari dataset

dataset=pd.DataFrame({'Customer ID':array[:,0],'Gender':array[:,1],'Age':array[:,2],'Income':array[:,3],'Spending Score':array[:,4]})
print("dataset sebelum dinormalisasi :")
print(dataset.head(10))

min_max_scaler = preprocessing.MinMaxScaler(feature_range=(0,1)) #inisialisasi normalisasi MinMax
data = min_max_scaler.fit_transform(X) #transformasi MinMax untuk fitur
dataset = pd.DataFrame({'Age':data[:,0],'Income':data[:,1],'Spending Score':data[:,2],'Customer ID':array[:,0],'Gender':array[:,1]})

print("dataset setelah dinormalisasi :")
print(dataset.head(10))

