#!/usr/bin/env python
# coding: utf-8

# # [Meng-import Package](https://academy.dqlab.id/main/livecode/295/565/2833)

# In[2]:


import matplotlib.pyplot as plt
import plotnine as p9
import pandas as pd


# # [Membaca Data](https://academy.dqlab.id/main/livecode/295/565/2834)

# In[3]:


import pandas as pd
df_penduduk = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/datakependudukandki-dqlab.csv')
df_inflasi = pd.read_csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/inflasi.csv')


# # [Menampilkan Data](https://academy.dqlab.id/main/livecode/295/566/2835)

# In[4]:


print (df_penduduk.head())


# # [Menjalankan Fungsi ggplot](https://academy.dqlab.id/main/livecode/295/566/2836)

# In[5]:


import matplotlib.pyplot as plt
from plotnine import *
ggplot(data=df_penduduk).draw()
plt.show()


# # [Menambahkan Variabel](https://academy.dqlab.id/main/livecode/295/566/2837)

# In[6]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
).draw()
plt.show()


# # [Mendefinisikan Objek Geometris](https://academy.dqlab.id/main/livecode/295/566/2838)

# In[7]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_col()
).draw()
plt.show()


# # [Membuat Horizontal Bar Chart](https://academy.dqlab.id/main/livecode/295/566/2839)

# In[8]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_col()
+  coord_flip()
).draw()
plt.tight_layout()
plt.show()


# # [Menambah Judul dan Mengubah Label](https://academy.dqlab.id/main/livecode/295/566/2840)

# In[9]:


import matplotlib.pyplot as plt
from plotnine import *
import plotnine
plotnine.options.figure_size=(12, 4.8)
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_col()
+ coord_flip()
+ labs(title='Jumlah penduduk per kabupaten/kota di DKI Jakarta (2013)',
x='Kabupaten/Kota',
y='Jumlah Penduduk')
).draw()
plt.show()


# # [Menampilkan Warna Berbeda](https://academy.dqlab.id/main/livecode/295/566/2841)

# In[10]:


import matplotlib.pyplot as plt
from plotnine import *
import plotnine
plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk)
+ aes(x='NAMA KELURAHAN', y='JUMLAH', fill='JENIS KELAMIN')
+ geom_col()
+ coord_flip()
+ labs(title='Jumlah penduduk per kabupaten/kota di DKI Jakarta (2013)',
x='Kabupaten/Kota',
y='Jumlah Penduduk')
).draw()
plt.show()


# # [Membuat Grafik dengan Variabel Berbeda](https://academy.dqlab.id/main/livecode/295/566/2842)

# In[11]:


import matplotlib.pyplot as plt
from plotnine import *
import plotnine
plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk[df_penduduk['NAMA KECAMATAN'] == 'CENGKARENG'])
+ aes(x='NAMA KELURAHAN', y='JUMLAH', fill='JENIS KELAMIN')
+ geom_col()
+ coord_flip()
+ labs(title='Jumlah penduduk per kelurahan di DKI Jakarta (2013)',
x='Kelurahan',
y='Jumlah Penduduk')
).draw()
plt.show()


# # [Memisahkan Grafik](https://academy.dqlab.id/main/livecode/295/566/2843)

# In[12]:


import matplotlib.pyplot as plt
from plotnine import *
import plotnine
plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk[df_penduduk['NAMA KECAMATAN'] == 'CENGKARENG'])
+ aes(x='NAMA KELURAHAN', y='JUMLAH', fill='JENIS KELAMIN')
+ geom_col(position = 'position_dodge')
+ coord_flip()
+ labs(title='Jumlah penduduk per kelurahan di DKI Jakarta (2013)',
x='Kelurahan',
y='Jumlah Penduduk')
).draw()
plt.show()


# # [Membuat Scatterplot](https://academy.dqlab.id/main/livecode/295/567/2846)

# In[13]:


import matplotlib.pyplot as plt
from plotnine import *

df_penduduk_luas_jumlah = df_penduduk.groupby(['NAMA KELURAHAN', 'LUAS WILAYAH (KM2)'])[['JUMLAH']].agg('sum').reset_index()

(ggplot(data=df_penduduk_luas_jumlah)
+ aes(y='LUAS WILAYAH (KM2)', x='JUMLAH')
+ geom_point()
).draw()
plt.show()


# # [Memberi Warna pada Scatterplot](https://academy.dqlab.id/main/livecode/295/567/2847)

# In[14]:


import matplotlib.pyplot as plt
from plotnine import *
import plotnine
plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_penduduk_luas_jumlah)
+ aes(y='LUAS WILAYAH (KM2)', x='JUMLAH', color='JUMLAH')
+ geom_point()
).draw()
plt.show()


# # [Membuat Histogram](https://academy.dqlab.id/main/livecode/295/567/2848)

# In[15]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_penduduk)
+ aes(x='LUAS WILAYAH (KM2)')
+ geom_histogram()
).draw()
plt.show()


# # [Membuat Histogram 2](https://academy.dqlab.id/main/livecode/295/567/2849)

# In[16]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_penduduk)
+ aes(x='LUAS WILAYAH (KM2)', y='stat(count/max(count))')
+ geom_histogram()
).draw()
plt.show()


# # [Membuat Boxplot](https://academy.dqlab.id/main/livecode/295/567/2850)

# In[17]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_penduduk)
+ aes(x='NAMA KABUPATEN/KOTA', y='JUMLAH')
+ geom_boxplot()
+ coord_flip()
).draw()
plt.tight_layout()
plt.show()


# # [Membuat Line Chart](https://academy.dqlab.id/main/livecode/295/567/2851)

# In[18]:


import matplotlib.pyplot as plt
from plotnine import *
df_inflasi['Bulan'] = pd.to_datetime(df_inflasi['Bulan'])
(ggplot(data=df_inflasi[df_inflasi['Negara']=='Indonesia'])
+ aes(x='Bulan', y='Inflasi')
+ geom_line()
).draw()
plt.show()


# # [Membuat 2 Line Chart](https://academy.dqlab.id/main/livecode/295/567/2852)

# In[19]:


import matplotlib.pyplot as plt
from plotnine import *
import plotnine
plotnine.options.figure_size=(10, 3.6)
(ggplot(data=df_inflasi)
+ aes(x='Bulan', y='Inflasi', color='Negara')
+ geom_line()
).draw()
plt.show()


# # [Mengubah Ukuran Plot](https://academy.dqlab.id/main/livecode/295/567/2853)

# In[20]:


import matplotlib.pyplot as plt
from plotnine import *
(ggplot(data=df_inflasi)
+ aes(x='Bulan', y='Inflasi', color='Negara')
+ geom_line()
+ theme(figure_size =(10, 5))
).draw()
plt.show()

