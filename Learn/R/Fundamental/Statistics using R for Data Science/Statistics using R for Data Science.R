data_intro <- read.csv("https://academy.dqlab.id/dataset/data_intro.csv", sep=";")

str(data_intro)

data_intro$ID.Pelanggan <- as.character(data_intro$ID.Pelanggan)
data_intro$Nama <- as.character(data_intro$Nama)

str(data_intro$ID.Pelanggan)
str(data_intro$Nama)

data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)

str(data_intro$Jenis.Kelamin)
str(data_intro$Produk)
str(data_intro$Tingkat.Kepuasan)

data_intro
str(data_intro)

library(pracma)

Mode(data_intro$Produk)
Mode(data_intro$Tingkat.Kepuasan)

median(data_intro$Pendapatan) 
median(data_intro$Harga) 
median(data_intro$Jumlah) 
median(data_intro$Total) 

mean(data_intro$Pendapatan)
mean(data_intro$harga)
mean(data_intro$Jumlah)
mean(data_intro$Total)

max(data_intro$Pendapatan)-min(data_intro$Pendapatan)

var(data_intro$Pendapatan)

sd(data_intro$Pendapatan)

summary(data_intro)

str(data_intro)

plot(data_intro$Jenis.Kelamin)
hist(data_intro$Pendapatan)
hist(data_intro$Harga)
hist(data_intro$Jumlah)
hist(data_intro$Total)
plot(data_intro$Tingkat.Kepuasan)

plot(data_intro$Pendapatan,data_intro$Total)

cor.test(data_intro$Pendapatan,data_intro$Total)

table(data_intro$Produk, data_intro$Tingkat.Kepuasan)
chisq.test(table(data_intro$Produk, data_intro$Tingkat.Kepuasan))

boxplot(Total~Jenis.Kelamin,data = data_intro)
t.test(Total~Jenis.Kelamin,data = data_intro)

