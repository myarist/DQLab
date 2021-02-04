#!/usr/bin/env python
# coding: utf-8

# # [Import Library dan File Unloading](https://academy.dqlab.id/main/projectcode/212/378/1876)

# In[1]:


#import library yang dibutuhkan
import pandas as pd
import numpy as np

#lakukan pembacaan dataset
movie_df = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/title.basics.tsv', sep='\t') #untuk menyimpan title_basics.tsv
rating_df = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/title.ratings.tsv', sep='\t') #untuk menyimpan title.ratings.tsv


# # [5 Data teratas dari table movie](https://academy.dqlab.id/main/projectcode/212/379/1877)

# In[2]:


print(movie_df.head())


# # [Tipe Data dari Setiap Kolom](https://academy.dqlab.id/main/projectcode/212/379/1922)

# In[3]:


print(movie_df.info())


# # [Pengecekan Data dengan Nilai NULL](https://academy.dqlab.id/main/projectcode/212/379/1923)

# In[4]:


print(movie_df.isnull().sum())


# # [Analisis Kolom dengan data bernilai NULL - part 1](https://academy.dqlab.id/main/projectcode/212/379/1931)

# In[5]:


print(movie_df.loc[(movie_df['primaryTitle'].isnull()) | (movie_df['originalTitle'].isnull())])


# # [Membuang Data dengan Nilai NULL - part 1](https://academy.dqlab.id/main/projectcode/212/379/1932)

# In[6]:


#mengupdate movie_df dengan membuang data-data bernilai NULL
movie_df = movie_df.loc[(movie_df['primaryTitle'].notnull()) & (movie_df['originalTitle'].notnull())]

#menampilkan jumlah data setelah data dengan nilai NULL dibuang
print(len(movie_df))


# # [Analisis Kolom dengan data bernilai NULL - part 2](https://academy.dqlab.id/main/projectcode/212/379/1933)

# In[7]:


print(movie_df.loc[movie_df['genres'].isnull()])


# # [Membuang Data dengan Nilai NULL - part 2](https://academy.dqlab.id/main/projectcode/212/379/1934)

# In[8]:


#mengupdate movie_df dengan membuang data-data bernilai NULL
movie_df = movie_df.loc[movie_df['genres'].notnull()]

#menampilkan jumlah data setelah data dengan nilai NULL dibuang
print(len(movie_df))


# # [Mengubah Nilai '\\N'](https://academy.dqlab.id/main/projectcode/212/379/1935)

# In[9]:


#mengubah nilai '\\N' pada startYear menjadi np.nan dan cast kolomnya menjadi float64
movie_df['startYear'] = movie_df['startYear'].replace('\\N', np.nan)
movie_df['startYear'] = movie_df['startYear'].astype('float64')

print(movie_df['startYear'].unique()[:5])
#mengubah nilai '\\N' pada endYear menjadi np.nan dan cast kolomnya menjadi float64
movie_df['endYear'] = movie_df['endYear'].replace('\\N', np.nan)
movie_df['endYear'] = movie_df['endYear'].astype('float64')
print(movie_df['endYear'].unique()[:5])

#mengubah nilai '\\N' pada runtimeMinutes menjadi np.nan dan cast kolomnya menjadi float64
movie_df['runtimeMinutes'] = movie_df['runtimeMinutes'].replace('\\N', np.nan)
movie_df['runtimeMinutes'] = movie_df['runtimeMinutes'].astype('float64')
print(movie_df['runtimeMinutes'].unique()[:5])


# # [Mengubah nilai genres menjadi list](https://academy.dqlab.id/main/projectcode/212/379/1936)

# In[11]:


def transform_to_list(x):
    if ',' in x: 
    #ubah menjadi list apabila ada data pada kolom genre
        return x.split(',')
    else: 
    #jika tidak ada data, ubah menjadi list kosong
        return []

movie_df['genres'] = movie_df['genres'].apply(lambda x: transform_to_list(x))


# In[12]:


movie_df


# # [Menampilkan 5 data teratas](https://academy.dqlab.id/main/projectcode/212/380/1937)

# In[13]:


print(rating_df.head())


# # [Menampilkan tipe data](https://academy.dqlab.id/main/projectcode/212/380/1938)

# In[14]:


print(rating_df.info())


# # [Inner Join table movie dan table rating](https://academy.dqlab.id/main/projectcode/212/381/1939)

# In[15]:


#Lakukan join pada kedua table
movie_rating_df = pd.merge(movie_df, rating_df, on='tconst', how='inner')

#Tampilkan 5 data teratas
print(movie_rating_df.head())

#Tampilkan tipe data dari tiap kolom
print(movie_rating_df.info())


# # [Memperkecil ukuran Table](https://academy.dqlab.id/main/projectcode/212/381/1940)

# In[16]:


movie_rating_df = movie_rating_df.dropna(subset=['startYear','runtimeMinutes'])

#Untuk memastikan bahwa sudah tidak ada lagi nilai NULL
print(movie_rating_df.info())


# # [Pertanyaan 1: Berapa nilai C?](https://academy.dqlab.id/main/projectcode/212/382/1941)

# In[17]:


C = movie_rating_df['averageRating'].mean()
print(C)


# # [Pertanyaan 2: Berapa nilai m?](https://academy.dqlab.id/main/projectcode/212/382/1942)

# In[19]:


m = movie_rating_df['numVotes'].quantile(0.8)
print(m)


# # [Pertanyaan 3: Bagaimana cara membuat fungsi weighted formula?](https://academy.dqlab.id/main/projectcode/212/382/1943)

# In[20]:


def imdb_weighted_rating(df, var=0.8):
    v = df['numVotes']
    R = df['averageRating']
    C = df['averageRating'].mean()
    m = df['numVotes'].quantile(var)
    df['score'] = (v/(m+v))*R + (m/(m+v))*C #Rumus IMDb 
    return df['score']
    
imdb_weighted_rating(movie_rating_df)

#melakukan pengecekan dataframe
print(movie_rating_df.head())


# # [Pertanyaan 4: Bagaimana cara membuat simple recommender system?](https://academy.dqlab.id/main/projectcode/212/382/1944)

# In[21]:


def simple_recommender(df, top=100):
    df = df.loc[df['numVotes'] >= m]
    df = df.sort_values(by='score', ascending=False) 
    
    #Ambil data 100 teratas
    df = df[:top]
    return df
    
#Ambil data 25 teratas     
print(simple_recommender(movie_rating_df, top=25))


# # [Pertanyaan 5: Bagaimana cara membuat simple recommender system dengan user preferences?](https://academy.dqlab.id/main/projectcode/212/382/1945)

# In[22]:


df = movie_rating_df.copy()

def user_prefer_recommender(df, ask_adult, ask_start_year, ask_genre, top=100):
    #ask_adult = yes/no
    if ask_adult.lower() == 'yes':
        df = df.loc[df['isAdult'] == 1]
    elif ask_adult.lower() == 'no':
        df = df.loc[df['isAdult'] == 0]

    #ask_start_year = numeric
    df = df.loc[df['startYear'] >= int(ask_start_year)]

    #ask_genre = 'all' atau yang lain
    if ask_genre.lower() == 'all':
        df = df
    else:
        def filter_genre(x):
            if ask_genre.lower() in str(x).lower():
                return True
            else:
                return False
        df = df.loc[df['genres'].apply(lambda x: filter_genre(x))]

    df = df.loc[df['numVotes'] >= m] #Mengambil film dengan m yang lebih besar dibanding numVotes
    df = df.sort_values(by='score', ascending=False)
    
    #jika kamu hanya ingin mengambil 100 teratas
    df = df[:top]
    return df

print(user_prefer_recommender(df,
                       ask_adult = 'no',
                        ask_start_year = 2000,
                       ask_genre = 'drama'
                       ))

