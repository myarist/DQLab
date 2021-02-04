#!/usr/bin/env python
# coding: utf-8

# # [Program pertama: "Hello World"](https://academy.dqlab.id/main/livecode/157/283/1247)

# In[1]:


print("Hello World!")


# # [Program Pertamaku](https://academy.dqlab.id/main/livecode/157/283/1248)

# In[2]:


print("Halo Dunia")
print("Riset Bahasa Python")


# # [Struktur Program Python - Part 1](https://academy.dqlab.id/main/livecode/157/283/1249)

# In[3]:


# Statement
print("Belajar Python menyenangkan") 
print("Halo Dunia")
print("Hello World!")
# Variables & Literals
bilangan1 = 5
bilangan2 = 10
kalimat1 = "Belajar Bahasa Python"
# Operators
print(bilangan1 + bilangan2)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/283/1250)

# In[4]:


bilangan1 = 20
bilangan2 = 10
print(bilangan1 - bilangan2)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/283/1251)

# In[5]:


harga_asli = 20000
potongan = 2000
harga_setelah_potongan = harga_asli - potongan
harga_final = harga_setelah_potongan * 1.1
print(harga_final)


# # [Sequence Type – Part 1](https://academy.dqlab.id/main/livecode/157/284/1262)

# In[6]:


contoh_list = [1, 'dua', 3, 4.0, 5]
print(contoh_list[0])
print(contoh_list[3])
contoh_list = [1, 'dua', 3, 4.0, 5]
contoh_list[3] = 'empat'
print(contoh_list[3])


# # [Sequence Type – Part 2](https://academy.dqlab.id/main/livecode/157/284/1263)

# In[7]:


contoh_tuple = ('Januari','Februari','Maret','April')
print(contoh_tuple[0])
contoh_tuple = ('Januari','Februari','Maret','April')
contoh_tuple[0] = 'Desember'


# # [Set Type](https://academy.dqlab.id/main/livecode/157/284/1264)

# In[8]:


contoh_list = ['Dewi','Budi','Cici','Linda','Cici'] 
print(contoh_list)
contoh_set = {'Dewi','Budi','Cici','Linda','Cici'}
print(contoh_set)
contoh_frozen_set = ({'Dewi','Budi','Cici','Linda','Cici'})
print(contoh_frozen_set)


# # [Mapping Type](https://academy.dqlab.id/main/livecode/157/284/1265)

# In[9]:


person = {'nama': 'John Doe', 'pekerjaan': 'Programmer'}
print(person['nama'])
print(person['pekerjaan'])


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/284/1266)

# In[10]:


sepatu = {"nama barang": "Sepatu Niko", "harga": 150000, "diskon": 30000 }
baju = {"nama barang": "Baju Unikloh", "harga": 80000, "diskon": 8000 }
celana = {"nama barang": "Celana Lepis", "harga": 200000, "diskon": 60000 }


#  # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/284/1267)

# In[11]:


sepatu = {"nama": "Sepatu Niko", "harga": 150000, "diskon": 30000} 
baju = {"nama": "Baju Unikloh", "harga": 80000, "diskon": 8000} 
celana = {"nama": "Celana Lepis", "harga": 200000, "diskon": 60000} 
daftar_belanja = [sepatu, baju, celana]


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/284/1268)

# In[12]:


# Data yang dinyatakan ke dalam dictionary
sepatu = {"nama": "Sepatu Niko", "harga": 150000, "diskon": 30000} 
baju = {"nama": "Baju Unikloh", "harga": 80000, "diskon": 8000} 
celana = {"nama": "Celana Lepis", "harga": 200000, "diskon": 60000}
# Hitunglah harga masing-masing data setelah dikurangi diskon
harga_sepatu = sepatu["harga"] - sepatu["diskon"] 
harga_baju = baju["harga"] - baju["diskon"]
harga_celana = celana["harga"] - celana["diskon"]
# Hitung harga total
total_harga = harga_sepatu + harga_baju + harga_celana
# Hitung harga kena pajak
total_pajak = total_harga * 0.1
# Cetak total_harga + total_pajak
print(total_harga + total_pajak)


# # [Nilai Prioritas Operator dalam Python – Part 1](https://academy.dqlab.id/main/livecode/157/293/1295)

# In[13]:


# Kode awal
total_harga = 150000
potongan_harga = 0.3
pajak = 0.1 # pajak dalam persen ~ 10%
harga_bayar = 1 - 0.3 # baris pertama
harga_bayar *= total_harga # baris kedua
pajak_bayar = pajak * harga_bayar # baris ketiga
harga_bayar += pajak_bayar # baris ke-4
print("Kode awal - harga_bayar=", harga_bayar)
# Penyederhanaan baris kode dengan menerapkan prioritas operator
total_harga = 150000
potongan_harga = 0.3
pajak = 0.1 # pajak dalam persen ~ 10%
harga_bayar = (1 - 0.3) * total_harga #baris pertama 
harga_bayar += harga_bayar * pajak # baris kedua
print("Penyederhanaan kode - harga_bayar=", harga_bayar)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/293/1298)

# In[14]:


sepatu = { "nama" : "Sepatu Niko", "harga": 150000, "diskon": 30000 }
baju = { "nama" : "Baju Unikloh", "harga": 80000, "diskon": 8000 }
celana = { "nama" : "Celana Lepis", "harga": 200000, "diskon": 60000 }
harga_sepatu = sepatu["harga"] - sepatu["diskon"]
harga_baju = baju["harga"] - baju["diskon"]
harga_celana = celana["harga"] - celana["diskon"]
total_harga = (harga_sepatu + harga_baju + harga_celana) * 1.1 
print(total_harga)


# # [Python Conditioning for Decision – Part 2](https://academy.dqlab.id/main/livecode/157/294/1300)

# In[15]:


# Statement if
x = 4
if x % 2 == 0: # jika sisa bagi x dengan 2 sama dengan 0
    print("x habis dibagi dua") # statemen aksi lebih menjorok ke dalam
# Statement if ... elif ... else
x = 7
if x % 2 == 0: # jika sisa bagi x dengan 2 sama dengan 0
    print("x habis dibagi dua")
elif x % 3 == 0: # jika sisa bagi x dengan 3 sama dengan 0
    print("x habis dibagi tiga")
elif x % 5 == 0: # jika sisa bagi x dengan 5 sama dengan 0
    print("x habis dibagi lima")
else:
    print("x tidak habis dibagi dua, tiga ataupun lima")


# # [Python Conditioning for Decision – Part 3](https://academy.dqlab.id/main/livecode/157/294/1301)

# In[16]:


jam = 13
if jam >= 5 and jam < 12: # selama jam di antara 5 s.d. 12
    print("Selamat pagi!")
elif jam >= 12 and jam < 17: # selama jam di antara 12 s.d. 17
    print("Selamat siang!")
elif jam >= 17 and jam < 19: # selama jam di antara 17 s.d. 19
    print("Selamat sore!")
else: # selain kondisi di atas
    print("Selamat malam!")


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/294/1302)

# In[17]:


tagihan_ke = 'Mr. Yoyo'
warehousing = { 'harga_harian': 1000000, 'total_hari':15 } 
cleansing = { 'harga_harian': 1500000, 'total_hari':10 } 
integration = { 'harga_harian':2000000, 'total_hari':15 } 
transform = { 'harga_harian':2500000, 'total_hari':10 }
sub_warehousing = warehousing['harga_harian'] * warehousing['total_hari']
sub_cleansing = cleansing['harga_harian'] * cleansing['total_hari'] 
sub_integration = integration['harga_harian'] * integration['total_hari'] 
sub_transform = transform['harga_harian'] * transform['total_hari']
total_harga = sub_warehousing + sub_cleansing + sub_integration + sub_transform
print("Tagihan kepada:") 
print(tagihan_ke)
print("Selamat pagi, anda harus membayar tagihan sebesar:") 
print(total_harga)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/294/1303)

# In[18]:


jam = 17
tagihan_ke = 'Mr. Yoyo'
warehousing = { 'harga_harian': 1000000, 'total_hari':15 } 
cleansing = { 'harga_harian': 1500000, 'total_hari':10 } 
integration = { 'harga_harian':2000000, 'total_hari':15 } 
transform = { 'harga_harian':2500000, 'total_hari':10 }
sub_warehousing = warehousing['harga_harian']*warehousing['total_hari'] 
sub_cleansing = cleansing['harga_harian']*cleansing['total_hari'] 
sub_integration = integration['harga_harian']*integration['total_hari'] 
sub_transform = transform['harga_harian']*transform['total_hari']
total_harga = sub_warehousing+sub_cleansing+sub_integration+sub_transform
print("Tagihan kepada:")
print(tagihan_ke)
if jam > 19:
    print("Selamat malam, anda harus membayar tagihan sebesar:")
elif jam > 17 :
    print("Selamat sore, anda harus membayar tagihan sebesar:") 
elif jam > 12:
    print("Selamat siang, anda harus membayar tagihan sebesar:")
else:
    print("Selamat pagi, anda harus membayar tagihan sebesar:") 
print(total_harga)


# # [Python while loops – Part 1](https://academy.dqlab.id/main/livecode/157/294/1305)

# In[19]:


# Tagihan
tagihan = [50000, 75000, 125000, 300000, 200000]
# Tanpa menggunakan while loop
total_tagihan = tagihan[0] + tagihan[1] + tagihan[2] + tagihan[3] + tagihan[4]
print(total_tagihan)
# Dengan menggunakan while loop
i = 0 # sebuah variabel untuk mengakses setiap elemen tagihan satu per satu
jumlah_tagihan = len(tagihan) # panjang (jumlah elemen dalam) list tagihan
total_tagihan = 0 # mula-mula, set total_tagihan ke 0
while i < jumlah_tagihan: # selama nilai i kurang dari jumlah_tagihan
    total_tagihan += tagihan[i] # tambahkan tagihan[i] ke total_tagihan
    i += 1 # tambahkan nilai i dengan 1 untuk memproses tagihan selanjutnya.
print(total_tagihan)


# # [Python while loops – Part 2](https://academy.dqlab.id/main/livecode/157/294/1306)

# In[20]:


tagihan = [50000, 75000, -150000, 125000, 300000, -50000, 200000]
i = 0
jumlah_tagihan = len(tagihan)
total_tagihan = 0
while i < jumlah_tagihan:
    # jika terdapat tagihan ke-i yang bernilai minus (di bawah nol),
    # pengulangan akan dihentikan
    if tagihan[i] < 0:
        total_tagihan = -1
        print("terdapat angka minus dalam tagihan, perhitungan dihentikan!")
        break
    total_tagihan += tagihan[i]
    i += 1
print(total_tagihan)


# # [Python while loops – Part 3](https://academy.dqlab.id/main/livecode/157/294/1307)

# In[21]:


tagihan = [50000, 75000, -150000, 125000, 300000, -50000, 200000]
i = 0
jumlah_tagihan = len(tagihan)
total_tagihan = 0
while i < jumlah_tagihan:
    # jika terdapat tagihan ke-i yang bernilai minus (di bawah nol),
    # abaikan tagihan ke-i dan lanjutkan ke tagihan berikutnya
    if tagihan[i] < 0:
        i += 1
        continue
    total_tagihan += tagihan[i]
    i += 1
print(total_tagihan)


# # [Python for loops – Part 1](https://academy.dqlab.id/main/livecode/157/294/1308)

# In[22]:


list_tagihan = [50000, 75000, -150000, 125000, 300000, -50000, 200000]
total_tagihan = 0
for tagihan in list_tagihan: # untuk setiap tagihan dalam list_tagihan
    total_tagihan += tagihan # tambahkan tagihan ke total_tagihan
print(total_tagihan)


# # [Python for loops – Part 2](https://academy.dqlab.id/main/livecode/157/294/1309)

# In[23]:


list_tagihan = [50000, 75000, -150000, 125000, 300000, -50000, 200000]
total_tagihan = 0
for tagihan in list_tagihan:
    if tagihan < 0:
        print("terdapat angka minus dalam tagihan, perhitungan dihentikan!")
        break
    total_tagihan += tagihan
print(total_tagihan)


# # [Python for loops – Part 3](https://academy.dqlab.id/main/livecode/157/294/1310)

# In[24]:


list_daerah = ['Malang', 'Palembang', 'Medan']
list_buah = ['Apel', 'Duku', 'Jeruk']
for nama_daerah in list_daerah:
    for nama_buah in list_buah:
        print(nama_buah+" "+nama_daerah)


# # [Tugas Praktek](https://academy.dqlab.id/main/livecode/157/294/1311)

# In[25]:


list_cash_flow = [2500000, 5000000, -1000000, -2500000, 5000000, 10000000,
				  -5000000, 7500000, 10000000, -1500000, 25000000, -2500000]
total_pengeluaran, total_pemasukan = 0, 0
for dana in list_cash_flow :
    if dana > 0:
        total_pemasukan += dana
    else:
        total_pengeluaran += dana
total_pengeluaran *= -1
print(total_pengeluaran) 
print(total_pemasukan)


# # [Ekspedisi Pamanku](https://academy.dqlab.id/main/livecode/157/295/1313)

# In[26]:


# Data
uang_jalan = 1500000
jumlah_hari = 31
list_plat_nomor = [8993, 2198, 2501, 2735, 3772, 4837, 9152]
# Pengecekan kendaraan dengan nomor pelat ganjil atau genap 
# Deklarasikan kendaraan_genap dan kendaraan_ganjil = 0
kendaraan_genap = 0 
kendaraan_ganjil = 0
for plat_nomor in list_plat_nomor:
    if plat_nomor % 2 == 0:
        kendaraan_genap += 1
    else:
        kendaraan_ganjil += 1
# Total pengeluaran untuk kendaraan dengan nomor pelat ganjil 
# dan genap dalam 1 bulan
i = 1
total_pengeluaran = 0
while i <= jumlah_hari:
    if i % 2 == 0:
        total_pengeluaran += (kendaraan_genap * uang_jalan)
    else:
        total_pengeluaran += (kendaraan_ganjil * uang_jalan)
    i += 1
# Cetak total pengeluaran
print(total_pengeluaran)

