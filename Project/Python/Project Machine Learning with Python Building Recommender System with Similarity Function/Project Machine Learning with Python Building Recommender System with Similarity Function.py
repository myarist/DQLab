#!/usr/bin/env python
# coding: utf-8

# # [Import Basics Library and File Unloading](https://academy.dqlab.id/main/projectcode/214/392/1969)

# In[2]:


#import library yang dibutuhkan
import pandas as pd
import numpy as np

#lakukan pembacaan dataset
movie_rating_df = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/movie_rating_df.csv') #untuk menyimpan movie_rating_df.csv


# In[3]:


movie_rating_df.head()


# # [Menampilkan 5 data teratas dan tipe data](https://academy.dqlab.id/main/projectcode/214/392/1970)

# In[4]:


#tampilkan 5 baris teratas dari movive_rating_df
print(movie_rating_df.head())

#tampilkan info mengenai tipe data dari tiap kolom
print(movie_rating_df.info())


# # [Add Actors Dataframe](https://academy.dqlab.id/main/projectcode/214/392/1971)

# In[5]:


#Simpan actor_name.csv pada variable name_df 
name_df = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/actor_name.csv')

#Tampilkan 5 baris teratas dari name_df
print(name_df.head())

#Tampilkan informasi mengenai tipe data dari tiap kolom pada name_df
print(name_df.info())


# # [Add Directors and Writers Dataframe](https://academy.dqlab.id/main/projectcode/214/392/1972)

# In[6]:


#Menyimpan dataset pada variabel director_writers
director_writers = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/directors_writers.csv')

#Manampilkan 5 baris teratas
print(director_writers.head())

#Menampilkan informasi tipe data
print(director_writers.info())


# # [Convert into List](https://academy.dqlab.id/main/projectcode/214/392/1973)

# In[7]:


import pandas as pd
director_writers = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/directors_writers.csv')

#Mengubah director_name menjadi list
director_writers['director_name'] = director_writers['director_name'].apply(lambda row: row.split(','))
director_writers['writer_name'] = director_writers['writer_name'].apply(lambda row: row.split(','))

#Tampilkan 5 data teratas
print(director_writers.head())


# # [Update name_df](https://academy.dqlab.id/main/projectcode/214/393/1974)

# In[8]:


name_df = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/actor_name.csv')
#Kita hanya akan membutuhkan kolom nconst, primaryName, dan knownForTitles
name_df = name_df[['nconst','primaryName','knownForTitles']]

#Tampilkan 5 baris teratas dari name_df
print(name_df.head())


# # [Movies per Actor](https://academy.dqlab.id/main/projectcode/214/393/1975)

# In[9]:


#Melakukan pengecekan variasi
print(name_df['knownForTitles'].apply(lambda x: len(x.split(','))).unique())

#Mengubah knownForTitles menjadi list of list
name_df['knownForTitles'] = name_df['knownForTitles'].apply(lambda x: x.split(','))

#Mencetak 5 baris teratas
print(name_df.head())


# # [Korespondensi 1 - 1](https://academy.dqlab.id/main/projectcode/214/393/1976)

# In[10]:


import numpy as np

#menyiapkan bucket untuk dataframe
df_uni = []

for x in ['knownForTitles']:
	#mengulang index dari tiap baris sampai tiap elemen dari knownForTitles
	idx = name_df.index.repeat(name_df['knownForTitles'].str.len())

	#memecah values dari list di setiap baris dan menggabungkan nya dengan rows lain menjadi dataframe
	df1 = pd.DataFrame({
		x: np.concatenate(name_df[x].values)
	})

	#mengganti index dataframe tersebut dengan idx yang sudah kita define di awal
	df1.index = idx

	#untuk setiap dataframe yang terbentuk, kita menambahkan ke dataframe bucket
	df_uni.append(df1)

#menggabungkan semua dataframe menjadi satu
df_concat = pd.concat(df_uni, axis=1)

#join dengan value dari dataframe yang awal
unnested_df = df_concat.join(name_df.drop(['knownForTitles'], 1), how='left')

#select kolom sesuai dengan dataframe awal
unnested_df = unnested_df[name_df.columns.tolist()]
print(unnested_df)


# # [Mengelompokkan primaryName menjadi list group by knownForTitles](https://academy.dqlab.id/main/projectcode/214/394/1977)

# In[11]:


unnested_drop = unnested_df.drop(['nconst'], axis=1)

#menyiapkan bucket untuk dataframe
df_uni = []

for col in ['primaryName']:
    #agregasi kolom PrimaryName sesuai group_col yang sudah di define di atas
    dfi = unnested_drop.groupby(['knownForTitles'])[col].apply(list)
    #Lakukan append
    df_uni.append(dfi)
df_grouped = pd.concat(df_uni, axis=1).reset_index()
df_grouped.columns = ['knownForTitles','cast_name']
print(df_grouped)


# # [Join table](https://academy.dqlab.id/main/projectcode/214/395/1978)

# In[12]:


movie_rating_df = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/movie_rating_df.csv')

#join antara movie table dan cast table 
base_df = pd.merge(df_grouped, movie_rating_df, left_on='knownForTitles', right_on='tconst', how='inner')

#join antara base_df dengan director_writer table
base_df = pd.merge(base_df, director_writers, left_on='tconst', right_on='tconst', how='left')
print(base_df.head())


# # [Cleaning data](https://academy.dqlab.id/main/projectcode/214/395/1980)

# In[13]:


#Melakukan drop terhadap kolom knownForTitles
base_drop = base_df.drop(['knownForTitles'], axis=1)
print(base_drop.info())

#Mengganti nilai NULL pada kolom genres dengan 'Unknown'
base_drop['genres'] = base_drop['genres'].fillna('Unknown')

#Melakukan perhitungan jumlah nilai NULL pada tiap kolom
print(base_drop.isnull().sum())

#Mengganti nilai NULL pada kolom dorector_name dan writer_name dengan 'Unknown'
base_drop[['director_name','writer_name']] = base_drop[['director_name','writer_name']].fillna('unknown')

#karena value kolom genres terdapat multiple values, jadi kita akan bungkus menjadi list of list
base_drop['genres'] = base_drop['genres'].apply(lambda x: x.split(','))


# # [Reformat table base_df](https://academy.dqlab.id/main/projectcode/214/395/1981)

# In[14]:


#Drop kolom tconst, isAdult, endYear, originalTitle
base_drop2 = base_drop.drop(['tconst','isAdult','endYear','originalTitle'], axis=1)

base_drop2 = base_drop2[['primaryTitle','titleType','startYear','runtimeMinutes','genres','averageRating','numVotes','cast_name','director_name','writer_name']]

base_drop2.columns = ['title','type','start','duration','genres','rating','votes','cast_name','director_name','writer_name']
print(base_drop2.head())


# # [Klasifikasi Metadata](https://academy.dqlab.id/main/projectcode/214/396/1982)

# In[15]:


#Klasifikasi berdasar title, cast_name, genres, director_name, dan writer_name
feature_df = base_drop2[['title', 'cast_name', 'genres', 'director_name', 'writer_name']]

#Tampilkan 5 baris teratas
print(feature_df.head())


# # [Pertanyaan 1: Bagaimana cara membuat fungsi untuk strip spaces dari setiap row dan setiap elemennya?](https://academy.dqlab.id/main/projectcode/214/396/1983)

# In[16]:


def sanitize(x):
    try:
        #kalau cell berisi list
        if isinstance(x, list):
            return [i.replace(' ','').lower() for i in x]
        #kalau cell berisi string
        else:
            return [x.replace(' ','').lower()]
    except:
        print(x)
        
#Kolom : cast_name, genres, writer_name, director_name        
feature_cols = ['cast_name','genres','writer_name','director_name']

#Apply function sanitize 
for col in feature_cols:
    feature_df[col] = feature_df[col].apply(sanitize)


# # [Pertanyaan 2: Bagaimana cara membuat fungsi untuk membuat metadata soup (menggabungkan semua feature menjadi 1 bagian kalimat) untuk setiap judulnya?](https://academy.dqlab.id/main/projectcode/214/396/1984)

# In[17]:


#kolom yang digunakan : cast_name, genres, director_name, writer_name
def soup_feature(x):
    return ' '.join(x['cast_name']) + ' ' + ' '.join(x['genres']) + ' ' + ' '.join(x['director_name']) + ' ' + ' '.join(x['writer_name'])

#membuat soup menjadi 1 kolom 
feature_df['soup'] = feature_df.apply(soup_feature, axis=1)


# # [Pertanyaan 3: Cara menyiapkan CountVectorizer (stop_words = english) dan fit dengan soup yang kita buat di atas](https://academy.dqlab.id/main/projectcode/214/396/1985)

# In[19]:


#import CountVectorizer 
from sklearn.feature_extraction.text import CountVectorizer

#definisikan CountVectorizer dan mengubah soup tadi menjadi bentuk vector
count = CountVectorizer(stop_words='english')
count_matrix = count.fit_transform(feature_df['soup'])

print(count)
print(count_matrix.shape)


# # [Pertanyaan 4: Cara membuat model similarity antara count matrix](https://academy.dqlab.id/main/projectcode/214/396/1986)

# In[20]:


#Import cosine_similarity
from sklearn.metrics.pairwise import cosine_similarity

#Gunakan cosine_similarity antara count_matrix 
cosine_sim = cosine_similarity(count_matrix, count_matrix)

#print hasilnya
print(cosine_sim) 


#  # [Pertanyaan 5: Cara membuat content based recommender system](https://academy.dqlab.id/main/projectcode/214/396/1987)

# In[21]:


indices = pd.Series(feature_df.index, index=feature_df['title']).drop_duplicates()

def content_recommender(title):
    #mendapatkan index dari judul film (title) yang disebutkan
    idx = indices[title]

    #menjadikan list dari array similarity cosine sim 
    #hint: cosine_sim[idx]
    sim_scores = list(enumerate(cosine_sim[idx]))

    #mengurutkan film dari similarity tertinggi ke terendah
    sim_scores = sorted(sim_scores, key=lambda x: x[1], reverse=True)

    #untuk mendapatkan list judul dari item kedua sampe ke 11
    sim_scores = sim_scores[1:11]

    #mendapatkan index dari judul-judul yang muncul di sim_scores
    movie_indices = [i[0] for i in sim_scores]

    #dengan menggunakan iloc, kita bisa panggil balik berdasarkan index dari movie_indices
    return base_df.iloc[movie_indices]

#aplikasikan function di atas
print(content_recommender('The Lion King'))

