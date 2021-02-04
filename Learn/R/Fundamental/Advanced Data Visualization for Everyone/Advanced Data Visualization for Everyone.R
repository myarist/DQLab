# [Konsep Grammar of Graphic](https://academy.dqlab.id/main/livecode/259/469/2337)


library(ggplot2)


# [Mengingat Kembali](https://academy.dqlab.id/main/livecode/259/469/2338)


library(ggplot2)
qplot(x = carat, y = price, colour = clarity, data = diamonds)


# [Pembuatan Grafik dengan ggplot](https://academy.dqlab.id/main/livecode/259/469/2339)


library(ggplot2)

ggplot(data = diamonds,
       mapping = aes(x = carat, y = price, colour = clarity)) +
  geom_point()


# [Kode 3 Rupa](https://academy.dqlab.id/main/livecode/259/469/2340)


library(ggplot2)
# Cara 1
diamonds_c1 <- 
  ggplot(data = diamonds,
         mapping = aes(x = carat, y = price, colour = clarity)) +
  geom_point()

summary(diamonds_c1)

# Cara 2
diamonds_c2 <- 
  ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price, colour = clarity))

summary(diamonds_c2)

# Cara 3
diamonds_c3 <-
  ggplot() +
  geom_point(data = diamonds, 
             mapping = aes(x = carat, y = price, colour = clarity))

summary(diamonds_c3)


# [Yin dan Yang](https://academy.dqlab.id/main/livecode/259/469/2344)


library(dplyr)


# [Paket dplyr](https://academy.dqlab.id/main/livecode/259/469/2345)


TRUE


# [Transformasi Data](https://academy.dqlab.id/main/livecode/259/469/2346)


library(dplyr)
glimpse(storms)

# Tanpa menggunakan %>% 
storms1 <- select(storms, year, month, wind, pressure)
storms2 <- filter(storms1, between(year, 2000, 2015))
storms3 <- mutate(storms2, month = factor(month.name[storms2$month], levels = month.name))
storms4 <- group_by(storms3, month)
storms_nopipe <- summarise(storms4, avg_wind = mean(wind), avg_pressure = mean(pressure))

glimpse(storms_nopipe)


# Menggunakan %>% 
storms_pipe <-
  storms %>%
  select(year, month, wind, pressure) %>%
  filter(between(year, 2000, 2015)) %>%
  mutate(month = factor(month.name[month], levels = month.name)) %>%
  group_by(month) %>%
  summarise(avg_wind = mean(wind),
            avg_pressure = mean(pressure))
glimpse(storms_pipe) 

# Komparasi metode tanpa pipe dan dengan pipe
identical(storms_nopipe, storms_pipe) 


# [Import Dataset](https://academy.dqlab.id/main/livecode/259/470/2349)


library(readr)

indodapoer <- read_tsv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/indodapoer.tsv.gz")
nrow(indodapoer)
ncol(indodapoer)


# [Wild Names and How to Tame Them](https://academy.dqlab.id/main/livecode/259/470/2350)


install.packages("janitor", repos = "http://cran.us.r-project.org")
library(janitor)

head(colnames(indodapoer), 15)
indodapoer <- clean_names(indodapoer)
head(colnames(indodapoer), 15)


# [Produk Domestik Regional Bruto](https://academy.dqlab.id/main/livecode/259/471/2352)


library(stringr)
library(dplyr)

pdrb_pjawa <- 
  indodapoer %>%
  filter(
    area_name %in% c(
      "Banten, Prop.",
      "DKI Jakarta, Prop.",
      "Jawa Barat, Prop.",
      "Jawa Tengah, Prop.",
      "DI Yogyakarta, Prop.",
      "Jawa timur, Prop."
    )
  ) %>%
  transmute(
    provinsi = str_remove(area_name, ", Prop."),
    tahun = year,
    pdrb_nonmigas = total_gdp_excluding_oil_and_gas_in_idr_million_constant_price) %>% 
  filter(!is.na(pdrb_nonmigas))

glimpse(pdrb_pjawa)


# [Grafik PDRB Non-Migas](https://academy.dqlab.id/main/livecode/259/471/2353)


library(dplyr)
library(ggplot2)
library(forcats)

pdrb_pjawa %>%
  mutate(
    provinsi = fct_reorder2(provinsi, tahun, pdrb_nonmigas)
  ) %>%
  ggplot(aes(tahun, pdrb_nonmigas, colour = provinsi)) +
  geom_line()


# [Direct Labeling](https://academy.dqlab.id/main/livecode/259/471/2354)


library(ggplot2)
library(dplyr)
library(directlabels)

pdrb_pjawa %>% 
  ggplot(aes(tahun, pdrb_nonmigas)) +
  geom_line(aes(colour = provinsi), show.legend = FALSE) +
  geom_dl(
    aes(label = provinsi), 
    method = "last.points",
    position = position_nudge(x = 0.3) # agar teks tidak berhimpitan dengan garis
  )


# [Finalisasi Grafik](https://academy.dqlab.id/main/livecode/259/471/2355)


library(ggplot2)
library(dplyr)
library(directlabels)
library(hrbrthemes)

pdrb_pjawa %>% 
  ggplot(aes(tahun, pdrb_nonmigas / 1e6)) +
  geom_line(aes(colour = provinsi), show.legend = FALSE) +
  geom_dl(
    aes(label = provinsi), 
    method = "last.points",
    position = position_nudge(x = 0.3) # agar teks tidak berhimpitan dengan garis
  ) +
  labs(
    x = NULL,
    y = NULL,
    title = "PDRB Non-Migas di Pulau Jawa Hingga Tahun 2011",
    subtitle = "PDRB atas dasar harga konstan, dalam satuan triliun",
    caption =  "Data: INDO-DAPOER, The World Bank"
  ) +
  coord_cartesian(clip = "off") +
  theme_ipsum(grid = "Y", ticks = TRUE)


# [Seluas Apa?](https://academy.dqlab.id/main/livecode/259/471/2356)


library(dplyr)
library(stringr)

luas_provinsi <- 
  indodapoer %>% 
  filter(str_detect(area_name, "Prop")) %>% 
  filter(year == 2009) %>%
  transmute(
    provinsi = str_remove(area_name, ", Prop."),
    luas_wilayah = total_area_in_km2)

glimpse(luas_provinsi)


# [Komparasi Luas Wilayah](https://academy.dqlab.id/main/livecode/259/471/2357)


library(treemapify)
library(ggplot2)
library(dplyr)

luas_provinsi  %>% 
  ggplot(aes(area = luas_wilayah)) +
  geom_treemap() +
  geom_treemap_text(aes(label = provinsi))


# [Modifikasi Grafik](https://academy.dqlab.id/main/livecode/259/471/2358)


library(ggplot2)
library(hrbrthemes)
library(dplyr)
library(treemapify)
library(scales)

luas_provinsi %>% 
  ggplot(aes(
    area = luas_wilayah, 
    fill = luas_wilayah)
  ) +
  geom_treemap() +
  geom_treemap_text(
    aes(label = provinsi), 
    family = "Arial Narrow",
    colour = "white",
    reflow = TRUE,
    grow = TRUE
  ) +
  scale_fill_viridis_c(
    guide = guide_colourbar(
      barwidth = 30,
      barheight = 0.8
    ),
    labels = label_number(
      big.mark = ".", 
      decimal.mark = ",", 
      suffix = " km2")
  ) +
  labs(
    fill = "Luas\nwilayah",
    title = "Perbandingan Luas 33 Provinsi di Indonesia",
    subtitle = "Berdasarkan data tahun 2009, sehingga Kalimantan Utara tidak tercantum dalam grafik",
    caption = "Data: INDO-DAPOER, The World Bank"
  ) +
  theme_ipsum() +
  theme(legend.position = "bottom")


# [Perjalanan Ini](https://academy.dqlab.id/main/livecode/259/471/2361)


library(dplyr)
library(stringr)

jalan_kabkota  <- 
  indodapoer %>% 
  filter(str_detect(area_name, ", Prop.", negate = TRUE)) %>% 
  filter(year == 2008) %>%
  transmute(
    kabkota = area_name,
    jalan_rusak_parah = length_of_district_road_bad_damage_in_km_bina_marga_data,
    jalan_rusak_ringan = length_of_district_road_light_damage_in_km_bina_marga_data,
    jalan_cukup_baik = length_of_district_road_fair_in_km_bina_marga_data,
    jalan_sangat_baik = length_of_district_road_good_in_km_bina_marga_data)

glimpse(jalan_kabkota )


# [Pivot](https://academy.dqlab.id/main/livecode/259/471/2362)


library(tidyr)
library(dplyr)

glimpse(jalan_kabkota)
jalan_kabkota  <- 
  jalan_kabkota %>% 
  pivot_longer(
    cols = starts_with("jalan_"),
    names_to = "kondisi",
    names_prefix = "jalan_",
    values_to = "panjang_jalan")

glimpse(jalan_kabkota)


# [The Next Step](https://academy.dqlab.id/main/livecode/259/471/2363)


library(dplyr)
library(stringr)

jalan_kabkota <-
  jalan_kabkota %>%
  mutate(
    status = case_when(
      str_detect(kabkota, ", Kab") ~ "Kabupaten",
      str_detect(kabkota, ", Kota") ~ "Kota",
      str_detect(kabkota, "City") ~ "Kota",
      TRUE ~ NA_character_
    ),
    kondisi = factor(
      kondisi,
      levels = c("rusak_parah", "rusak_ringan", "cukup_baik", "sangat_baik"),
      labels = c("Rusak parah", "Rusak ringan", "Cukup baik", "Sangat baik")
    )
  )

glimpse(jalan_kabkota)


# [Grafik Kondisi Jalan](https://academy.dqlab.id/main/livecode/259/471/2364)


install.packages("ggridges",repos = "http://cran.us.r-project.org")
library(ggplot2)
library(dplyr)
library(ggridges)

jalan_kabkota_plot <- 
  jalan_kabkota  %>% 
  ggplot(aes(panjang_jalan, kondisi)) +
  facet_wrap(~status) +
  geom_density_ridges_gradient(
    aes(fill = after_stat(x)), 
    show.legend = FALSE)

jalan_kabkota_plot


# [Transformasi Logaritmik](https://academy.dqlab.id/main/livecode/259/471/2365)


install.packages("ggridges",repos = "http://cran.us.r-project.org")
library(ggplot2)
library(dplyr)
library(ggridges)

jalan_kabkota_plot <-
  jalan_kabkota %>%
  ggplot(aes(panjang_jalan, kondisi)) +
  facet_wrap(~status) +
  geom_density_ridges_gradient(
    aes(fill = after_stat(x)),
    show.legend = FALSE)

jalan_kabkota_plot +
  geom_vline(xintercept = 100, linetype = "dashed", colour = "darkslategray4") +
  scale_x_continuous(trans = "log10")


# [Finalisasi](https://academy.dqlab.id/main/livecode/259/471/2366)


install.packages("ggridges",repos = "http://cran.us.r-project.org")
library(ggplot2)
library(dplyr)
library(ggridges)
library(hrbrthemes)

jalan_kabkota_plot <-
  jalan_kabkota %>%
  ggplot(aes(panjang_jalan, kondisi)) +
  facet_wrap(~status) +
  geom_density_ridges_gradient(
    aes(fill = after_stat(x)),
    show.legend = FALSE)

jalan_kabkota_plot +
  geom_vline(xintercept = 100, linetype = "dashed", colour = "darkslategray4") +
  scale_x_continuous(trans = "log10") +
  scale_fill_viridis_c(option = "magma") +
  labs(
    x = "Panjang jalan (Km)",
    y = NULL,
    title = "Jalan Kabupaten/Kota Berdasarkan Kondisi",
    subtitle = "Berdasarkan data tahun 2008, garis vertikal menunjukan panjang jalan 100 Km",
    caption = "Data: INDO-DAPOER, The World Bank"
  ) +
  theme_ipsum(grid = FALSE, ticks = TRUE)


# [Fasilitas Kesehatan di Kalimantan](https://academy.dqlab.id/main/livecode/259/471/2367)


library(dplyr)
library(ggplot2)
library(tidyr)
library(stringr)
library(forcats)

faskes_kalimantan <-
  indodapoer %>%
  filter(str_detect(area_name, "Kalimantan")) %>%
  filter(year == 2011) %>%
  transmute(
    provinsi = str_remove(area_name, ", Prop."),
    rumahsakit = number_of_hospitals,
    polindes = number_of_polindes_poliklinik_desa_village_polyclinic,
    puskesmas = number_of_puskesmas_and_its_line_services
  ) %>%
  pivot_longer(
    cols = -provinsi,
    names_to = "faskes",
    values_to = "jumlah"
  ) %>%
  filter(!is.na(jumlah)) %>%
  mutate(
    provinsi = fct_reorder(provinsi, jumlah, sum),
    jumlah = ceiling(jumlah / 10)
  )

glimpse(faskes_kalimantan)


# [Waffle Charts](https://academy.dqlab.id/main/livecode/259/471/2368)


install.packages("waffle", repos = "https://cinc.rud.is")
library(waffle)
library(ggplot2)
library(dplyr)

faskes_kalimantan_plot <- 
  faskes_kalimantan %>% 
  ggplot(aes(fill = faskes, values = jumlah)) +
  facet_wrap(~provinsi) +
  geom_waffle(colour = "white")

faskes_kalimantan_plot


# [Mengatur Warna dan Label](https://academy.dqlab.id/main/livecode/259/471/2369)


install.packages("waffle", repos = "https://cinc.rud.is")
library(waffle)
library(ggplot2)
library(dplyr)

faskes_kalimantan_plot <-
  faskes_kalimantan %>%
  ggplot(aes(fill = faskes, values = jumlah)) +
  facet_wrap(~provinsi) +
  geom_waffle(colour = "white")

faskes_kalimantan_plot <- 
  faskes_kalimantan_plot +
  scale_fill_manual(
    values = c(
      "polindes" = "seagreen3",
      "puskesmas" = "steelblue",
      "rumahsakit" = "cyan4"
    ),
    labels = c(
      "polindes" = "Poliklinik Desa",
      "puskesmas" = "Puskesmas",
      "rumahsakit" = "Rumah Sakit"
    )
  ) +
  labs(
    fill = NULL,
    title = "Fasilitas Kesehatan di Kalimantan",
    subtitle = "Berdasarkan data tahun 2011, satu petak menyatakan ±10 faskes",
    caption = "Data: INDO-DAPOER, The World Bank"
  )

faskes_kalimantan_plot


# [Finalisasi Waffle Charts](https://academy.dqlab.id/main/livecode/259/471/2370)


install.packages("waffle", repos = "https://cinc.rud.is")
library(waffle)
library(ggplot2)
library(dplyr)

faskes_kalimantan_plot <-
  faskes_kalimantan %>%
  ggplot(aes(fill = faskes, values = jumlah)) +
  facet_wrap(~provinsi) +
  geom_waffle(colour = "white")

faskes_kalimantan_plot <-
  faskes_kalimantan_plot +
  scale_fill_manual(
    values = c(
      "polindes" = "seagreen3",
      "puskesmas" = "steelblue",
      "rumahsakit" = "cyan4"
    ),
    labels = c(
      "polindes" = "Poliklinik Desa",
      "puskesmas" = "Puskesmas",
      "rumahsakit" = "Rumah Sakit"
    )
  ) +
  labs(
    fill = NULL,
    title = "Fasilitas Kesehatan di Kalimantan",
    subtitle = "Berdasarkan data tahun 2011, satu petak menyatakan ±10 faskes",
    caption = "Data: INDO-DAPOER, The World Bank"
  )

faskes_kalimantan_plot +
  coord_equal() +
  theme(
    text = element_text(family = "Arial Narrow"),
    plot.title.position = "plot",
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    plot.subtitle = element_text(face = "plain", size = 12, hjust = 0.5),
    plot.caption = element_text(face = "italic", size = 9),
    legend.position = "bottom",
    panel.background = element_blank(),
    panel.grid = element_blank(),
    strip.background = element_blank(),
    strip.text = element_text(face = "italic", size = 9, hjust = 0),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank()
  )


# [Jumlah Rata-rata Likes per Hari](https://academy.dqlab.id/main/livecode/259/474/2373)


install.packages("ggtext",repos = "http://cran.us.r-project.org")
library(ggtext)
library(forcats)
library(ggplot2)
library(dplyr)
library(readr)

igstats <- read_csv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/igstats.csv")
glimpse(igstats)

igstats_plot  <- 
  igstats %>%
  mutate(day = fct_reorder(day, avglikes)) %>%
  ggplot() +
  geom_segment(aes(
    x = 0,
    xend = avglikes,
    y = day,
    yend = day
  ),
  colour = "white",
  linetype = "longdash"
  ) +
  geom_point(
    aes(avglikes, day, fill = is_weekend),
    shape = "circle filled",
    size = 18,
    colour = "white",
    show.legend = FALSE
  ) +
  geom_text(
    aes(avglikes, day, label = round(avglikes)),
    colour = "white",
    family = "Lacquer",
    size = 7
  ) +
  geom_text(
    aes(x = 0, day, label = day),
    colour = "white",
    nudge_y = 0.15,
    hjust = "left",
    family = "Lacquer"
  ) +
  geom_curve(
    aes(
      x = 185,
      xend = 174,
      y = 6.3,
      yend = 6
    ),
    colour = "white",
    curvature = -0.3,
    arrow = arrow(length = unit(0.1, "inches"), type = "closed")
  ) +
  geom_curve(
    aes(
      x = 185,
      xend = 230,
      y = 6.8,
      yend = 7.2
    ),
    colour = "white",
    curvature = -0.25,
    arrow = arrow(length = unit(0.1, "inches"), type = "closed")
  ) +
  annotate(
    geom = "richtext",
    x = 200,
    y = 6.5,
    label = "<span style='color:Blue'>Blue</span> is weekday,<br><span style='color:Green'>green</span> is weekend",
    fill = NA,
    label.colour = NA,
    colour = "white",
    family = "Lacquer",
    size = 4
  ) +
  annotate(
    geom = "text",
    x = 200,
    y = 3,
    label = "How many\nlikes did \nI get?",
    colour = "white",
    hjust = "center",
    family = "Lacquer",
    size = 15
  ) +
  scale_fill_manual(values = c("Blue", "Green")) +
  theme_void() +
  theme(plot.background = element_rect(fill = "Black"))

igstats_plot


# [Jati Diri](https://academy.dqlab.id/main/livecode/259/474/2374)


install.packages("cowplot",repos = "http://cran.us.r-project.org")
library(cowplot)

ggdraw(igstats_plot) +
  draw_image(
    image = "https://academy.dqlab.id/assets/images/logo-dqlab.png",
    x = 0.425,
    y = -0.44,
    scale = 0.1)
