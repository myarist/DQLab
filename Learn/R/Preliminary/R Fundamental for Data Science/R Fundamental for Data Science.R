# 1

"Hello World"

# 2

"Hello World"
1 + 5

# 3

9
"Budi"

# 4

9 * 3

# 5

print("Hello World")
print(3 + 4)

# 6

01
1
"01-01-1980"
"1-1-1980"
"Budi"
"BUDI"

# 7

c(10:40)

# 8

c(5:10)

# 9

budi_berat_kg <- 68
santi_berat_kg <- 54.5

budi_berat_kg
santi_berat_kg

# 10

pi <- 3.14
pi

# 11

2 + 2 #Ini adalah baris komentar

# 12

2 + 2 #Ini adalah baris komentar

# 13

angka <- c(4, 5, 6)
print(angka)

# 14

angka1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(angka1)
angka2 <- c(1:10)
print(angka2)

# 15

nama_mahasiswa <- c("Amira","Budi","Charlie")
print(nama_mahasiswa)

# 16

angka <- c(20:30)
print(angka)

# 17

print(angka[3])

# 18

print(angka[[5]])

# 19

print(angka[4:6])

# 20

kode_prodi <- c("DKV","ILKOM","ICT")
print(kode_prodi[3])

# 21

nilai <- c(statistik = 89, fisika = 95, ilmukomunikasi = 100)
print(nilai)

# 22

print(nilai["fisika"])

# 23

profil <- c(nama = "Budi", tempat_tinggal = "Jakarta", tingkat_pendidikan = "S1")
print(profil)

# 24

list(2, "Budi", 4)

# 25

kota <- list(nama_kota = "Makassar", propinsi = "Sulawesi Selatan", luas_km2 = 199.3)
kota

# 26

## Membentuk list dengan 2 angka dan 1 character
list_saya <- list(2, "Budi", 4)

## Menampilkan index kedua dengan aksesor kurung siku tunggal 
list_saya[2]

## Menampilkan index kedua dengan aksesor kurung siku ganda
list_saya[[2]]

## Menampilkan index kedua s/d ketiga
list_saya[2:3]

# 27

list_satu <- list(1, "Online", TRUE)
list_satu[[1]]

# 28

## Membuat dua variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)

## Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)

## Melihat isi data frame
info_mahasiswa

## Buat vector baru sebagai representasi akreditasi
akreditasi <- c("A","A","B","A","A")

## Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(info_mahasiswa, akreditasi)
info_mahasiswa

# 29

## Membuat tiga variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

## Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)

## Menampilkan kolom jumlah_mahasiswa
info_mahasiswa$jumlah_mahasiswa

# 30

## Menampilkan kolom fakultas
info_mahasiswa$fakultas

# 31

library("ggplot2")

# 32

gambar <- ggplot(info_mahasiswa, 
                 aes(x=fakultas, 
                     y=jumlah_mahasiswa, 
                     fill=fakultas)) + 
  geom_bar(width=1, stat="identity")

gambar

# 33

gambar <- ggplot(info_mahasiswa, 
                 aes(x=fakultas, 
                     y=jumlah_mahasiswa, 
                     fill=fakultas))
gambar <- gambar + geom_bar(width=1, stat="identity")

gambar

# 34

gambar <- gambar + ggtitle("Jumlah Mahasiswa per Fakultas")
gambar

# 35

gambar <- gambar + xlab("Nama Fakultas")
gambar

# 36

gambar <- gambar + ylab("Jumlah Mahasiswa")
gambar

# 37

library(openxlsx)
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

# 38

print(mahasiswa)

# 39

print(mahasiswa$Prodi)

# 40

library(ggplot2)

## Menggunakan package openxlsx
library(openxlsx)

## Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx", sheet = "Sheet 1")

## Membuat kanvas
gambar <- ggplot(mahasiswa, aes(x=Fakultas, y=JUMLAH, fill=Fakultas))

## Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

## Menggambar grafik
gambar

# 41

library(ggplot2)

## Menggunakan package openxlsx
library(openxlsx)

## Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",sheet = "Sheet 1")

## Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH,
                               by=list(Kategori=mahasiswa$Fakultas,
                                       Tahun=mahasiswa$ANGKATAN), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, 
                              c("fakultas","tahun", "jumlah_mahasiswa"))

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)

ggplot(summarybyfakultas, 
       aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", 
           aes(fill = tahun), 
           width=0.8, 
           position = 
             position_dodge(width=0.8)) + 
  theme_classic() 

# 42

library(ggplot2)
library(openxlsx)

## Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",sheet = "Sheet 1")

## Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH,
                               by=list(Kategori=mahasiswa$Fakultas), FUN=sum)

summarybyfakultas <- setNames(summarybyfakultas, 
                              c("fakultas","jumlah_mahasiswa"))

piechart<- ggplot(summarybyfakultas, 
                  aes(x="", y=jumlah_mahasiswa, fill=fakultas)) + 
  geom_bar(width = 1, stat = "identity")

piechart <- piechart + coord_polar("y", start=0)
piechart <- piechart + ggtitle("Disribusi Mahasiswa per Fakultas")
piechart <- piechart + scale_fill_brewer(palette="Blues")+ theme_minimal()
piechart <- piechart + guides(fill=guide_legend(title="Fakultas"))
piechart <- piechart + ylab("Jumlah Mahasiswa") 
piechart

# 43

library("ggplot2")
library("openxlsx")

## Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",
                       sheet = "Sheet 1")

## Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH,
                               by=list(Kategori=mahasiswa$Fakultas,
                                       Tahun=mahasiswa$ANGKATAN), 
                               FUN=sum)

summarybyfakultas <- setNames(summarybyfakultas,
                              c("fakultas","tahun", "jumlah_mahasiswa"))

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)

ggplot(summarybyfakultas[summarybyfakultas$fakultas %in% 
                           c("ICT", "Ilmu Komunikasi"),], 
       aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", 
           aes(fill = tahun), 
           width=0.8, 
           position = position_dodge(width=0.8)) + 
  theme_classic()