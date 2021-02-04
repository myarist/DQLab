# [Code Pertama, Hello World!](https://academy.dqlab.id/main/livecode/1/3/635)


"Hello World"
1 + 5


# [Teks, Angka dan Rumus Perhitungan](https://academy.dqlab.id/main/livecode/1/3/6)


9
"Budi"
9 * 3


# [Menampilkan dengan Fungsi Print](https://academy.dqlab.id/main/livecode/1/3/705)


print("Hello World")
print(3 + 4)


# [Huruf Besar, Huruf Kecil dan Format Angka](https://academy.dqlab.id/main/livecode/1/3/636)


01
1
"01-01-1980"
"1-1-1980"
"Budi"
"BUDI"


# [Function](https://academy.dqlab.id/main/livecode/1/3/7)


c(5:10)


# [Variable](https://academy.dqlab.id/main/livecode/1/3/10)


budi_berat_kg <- 68
santi_berat_kg <- 54.5
budi_berat_kg
santi_berat_kg
pi <- 3.14
pi


# [Comment pada R](https://academy.dqlab.id/main/livecode/1/3/9)


2 + 2 # Ini adalah baris komentar


# [Vector](https://academy.dqlab.id/main/livecode/1/4/14)


# Ini adalah contoh vector untuk angka numerik dengan 3 data c(4, 5, 6)
c(4, 5, 6)

# Variable bernama angka dengan input berupa vector
angka <- c(4, 5, 6)

# Tampilkan isi variable angka dengan fungsi print
print(angka)


# [Deretan Nilai dengan Operator :](https://academy.dqlab.id/main/livecode/1/4/708)


angka1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(angka1)
angka2 <- c(1:10)
print(angka2)


# [Vector dengan Isi Teks](https://academy.dqlab.id/main/livecode/1/4/709)


# Variable nama_mahasiswa dengan input character
nama_mahasiswa <- c("Amira","Budi","Charlie")
print(nama_mahasiswa)


# [Index dan Accessor pada Vector](https://academy.dqlab.id/main/livecode/1/4/15)


# Buat vector variable bernama angka yang isinya 20 s/d 30
angka <- c(20:30)
print(angka)

# Tampilkan isi variable angka pada posisi ke 3
print(angka[3])

# Tampilkan isi variable angka pada posisi ke 5
print(angka[[5]])

# Tampilkan isi variable angka pada posisi ke 4 s/d 6
print(angka[4:6])

# Buat vector teks dengan nama kode_prodi yang diisi sesuai petunjuk soal
kode_prodi <- c("DKV","ILKOM","ICT")
# Tampilkan isi indeks ketiga dari kode_prodi
print(kode_prodi[3])


# [Named Vector](https://academy.dqlab.id/main/livecode/1/4/16)


# Membuat named vector dengan nama nilai
nilai <- c(statistik = 89, 
           fisika = 95, 
           ilmukomunikasi = 100)

# Menampilkan isi variable nilai
print(nilai)

# Menampilkan isi dengan nama fisika
print(nilai["fisika"])

# Buat variable profil sesuai permintaan soal
profil <- c(nama = "Budi", 
            tempat_tinggal = "Jakarta", 
            tingkat_pendidikan = "S1")

# Tampilkan variable profil
print(profil)


# [List](https://academy.dqlab.id/main/livecode/1/4/17)


# List disimpan dalam variable dengan nama list_random
list_random <- list(2, "Budi", 4)

# Menampilkan isi list
list_random 

# List disimpan dalam variable dengan nama dati2
dati2 <- list(nama = "Denpasar", 
              propinsi = "Bali")

# Menampilkan isi list dati2
dati2 

# Buat variable kota sesuai permintaan soal
kota <- list(nama_kota = "Makassar", 
             propinsi = "Sulawesi Selatan", 
             luas_km2 = 199.3)

# Tampilkan isi variable list kota
print(kota)


# [List Index](https://academy.dqlab.id/main/livecode/1/4/18)


# Membentuk list dengan 2 angka dan 1 character
list_saya <- list(2, "Budi", 4)

# Menampilkan index kedua dengan aksesor kurung siku tunggal 
list_saya[2]

# Menampilkan index kedua dengan aksesor kurung siku ganda
list_saya[[2]]

# Menampilkan index kedua s/d ketiga
list_saya[2:3]

list_satu <- list(1, "Online", TRUE)
list_satu[1]


# [Data Frame](https://academy.dqlab.id/main/livecode/1/4/20)


# Membuat dua variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)

# Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)

# Melihat isi data frame
info_mahasiswa

# Buat vector baru sebagai representasi akreditasi
akreditasi <- c("A","A","B","A","A")

# Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(info_mahasiswa, akreditasi)
info_mahasiswa


# [Cara Akses Data Frame](https://academy.dqlab.id/main/livecode/1/4/21)


# Membuat tiga variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

# Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)

# Menampilkan kolom jumlah_mahasiswa
info_mahasiswa$jumlah_mahasiswa

# Menampilkan kolom fakultas
info_mahasiswa$fakultas


# [Package ggplot2](https://academy.dqlab.id/main/livecode/1/5/766)


fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa

# Menggunakan package ggplot2
library("ggplot2")

# Membuat kanvas
gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas)) + 
  geom_bar(width=1, stat="identity")
gambar


# [Membuat Grafik Sebaran Mahasiswa (1)](https://academy.dqlab.id/main/livecode/1/5/22)


# Membuat dua vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

# Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa

# Menggunakan package ggplot2
library(ggplot2)

# Membuat kanvas
gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))

# Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

# Menambahkan judul grafik
gambar <- gambar + ggtitle("Jumlah Mahasiswa per Fakultas")

# Menambahkan caption pada sumbu x
gambar <- gambar + xlab("Nama Fakultas")

# Menambahkan caption pada sumbu y
gambar <- gambar + ylab("Jumlah Mahasiswa")

# Menggambar grafik
gambar


# [Membaca File Excel](https://academy.dqlab.id/main/livecode/1/5/24)


# Menggunakan package ggplot2
library(ggplot2)

# Menggunakan package openxlsx
library(openxlsx)

# Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

# Menampilkan data
print(mahasiswa)

# Menampilkan kolom Prodi
print(mahasiswa$Prodi)


# [Membuat Grafik Sebaran Mahasiswa (2)](https://academy.dqlab.id/main/livecode/1/5/770)


library(ggplot2)

# Menggunakan package openxlsx
library(openxlsx)

# Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

# Membuat kanvas
gambar <- ggplot(mahasiswa, aes(x=Fakultas, y=JUMLAH, fill=Fakultas))

# Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

# Menggambar grafik
gambar


# [Trend Jumlah Mahasiswa dari Tahun ke Tahun](https://academy.dqlab.id/main/livecode/1/5/767)


library(ggplot2)

# Menggunakan package openxlsx
library(openxlsx)

# Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

# Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, 
                               by=list(Kategori=mahasiswa$Fakultas, Tahun=mahasiswa$ANGKATAN), 
                               FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","tahun", "jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)

ggplot(summarybyfakultas, aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat="identity", aes(fill=tahun), width=0.8, position=position_dodge(width=0.8)) + 
  theme_classic()


# [Pie Chart](https://academy.dqlab.id/main/livecode/1/5/768)


library(ggplot2)
library(openxlsx)

# Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

# Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, 
                               by=list(Kategori=mahasiswa$Fakultas), 
                               FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, 
                              c("fakultas","jumlah_mahasiswa"))

piechart<- ggplot(summarybyfakultas, aes(x="", y=jumlah_mahasiswa, fill=fakultas)) + 
  geom_bar(width = 1, stat = "identity")

piechart <- piechart + coord_polar("y", start=0)
piechart <- piechart + ggtitle("Disribusi Mahasiswa per Fakultas")
piechart <- piechart + scale_fill_brewer(palette="Blues") + theme_minimal()
piechart <- piechart + guides(fill=guide_legend(title="Fakultas"))
piechart <- piechart + ylab("Jumlah Mahasiswa") 
piechart


# [Filtering](https://academy.dqlab.id/main/livecode/1/5/769)


library("ggplot2")
library("openxlsx")

# Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

# Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, 
                               by=list(Kategori=mahasiswa$Fakultas, Tahun=mahasiswa$ANGKATAN), 
                               FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","tahun", "jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)
summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),]

ggplot(summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),], 
       aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", aes(fill = tahun), width=0.8, position = position_dodge(width=0.8)) + 
  theme_classic() 
