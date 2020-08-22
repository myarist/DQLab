library(ggplot2)

qplot(x = carat, y = price, colour = clarity, data = diamonds)

ggplot(data = diamonds,
       mapping = aes(x = carat, y = price, colour = clarity)) +
  geom_point()

diamonds_c1 <- 
  ggplot(data = diamonds,
         mapping = aes(x = carat, y = price, colour = clarity)) +
  geom_point()

summary(diamonds_c1)

diamonds_c2 <- 
  ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price, colour = clarity))

summary(diamonds_c2)

diamonds_c3 <-
  ggplot() +
  geom_point(data = diamonds,
             mapping = aes(x = carat, y = price, colour = clarity))

summary(diamonds_c3)

library(dplyr)

storms1 <- select(storms, year, month, wind, pressure)
storms2 <- filter(storms1, between(year, 2000, 2015))
storms3 <- mutate(storms2, month = factor(month.name[storms2$month], levels = month.name))
storms4 <- group_by(storms3, month)
storms_nopipe <- summarise(storms4, avg_wind = mean(wind), avg_pressure = mean(pressure))

glimpse(storms_nopipe)

storms_pipe <-
  storms %>%
  select(year, month, wind, pressure) %>%
  filter(between(year, 2000, 2015)) %>%
  mutate(month = factor(month.name[month], levels = month.name)) %>%
  group_by(month) %>%
  summarise(avg_wind = mean(wind),
            avg_pressure = mean(pressure))

glimpse(storms_pipe) 

identical(storms_nopipe, storms_pipe)

library(readr)

indodapoer <- read_tsv("https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/indodapoer.tsv.gz")

nrow(indodapoer)
ncol(indodapoer)

library(janitor)

head(colnames(indodapoer), 15)
indodapoer <- clean_names(indodapoer)
head(colnames(indodapoer), 15)

library(stringr)

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

library(forcats)

pdrb_pjawa %>%
  mutate(provinsi = fct_reorder2(provinsi, tahun, pdrb_nonmigas)) %>%
  ggplot(aes(tahun, pdrb_nonmigas, colour = provinsi)) +
  geom_line()

library(directlabels)

pdrb_pjawa %>% 
  ggplot(aes(tahun, pdrb_nonmigas)) +
  geom_line(aes(colour = provinsi), show.legend = FALSE) +
  geom_dl(
    aes(label = provinsi), 
    method = "last.points",
    position = position_nudge(x = 0.3) # agar teks tidak berhimpitan dengan garis
  )

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

luas_provinsi <- 
  indodapoer %>% 
  filter(str_detect(area_name, "Prop")) %>% 
  filter(year == 2009) %>%
  transmute(
    provinsi = str_remove(area_name, ", Prop."),
    luas_wilayah = `total_area_in_km²`
  )
glimpse(luas_provinsi)

library(treemapify)

luas_provinsi  %>% 
  ggplot(aes(area = luas_wilayah)) +
  geom_treemap() +
  geom_treemap_text(aes(label = provinsi))

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

jalan_kabkota <- 
  indodapoer %>% 
  filter(str_detect(area_name, ", Prop.", negate = TRUE)) %>% 
  filter(year == 2008) %>%
  transmute(
    kabkota = area_name,
    jalan_rusak_parah = length_of_district_road_bad_damage_in_km_bina_marga_data,
    jalan_rusak_ringan = length_of_district_road_light_damage_in_km_bina_marga_data,
    jalan_cukup_baik = length_of_district_road_fair_in_km_bina_marga_data,
    jalan_sangat_baik = length_of_district_road_good_in_km_bina_marga_data
  )

glimpse(jalan_kabkota)

library(tidyr)

glimpse(jalan_kabkota)
jalan_kabkota  <- 
  jalan_kabkota %>% 
  pivot_longer(
    cols = starts_with("jalan_"),
    names_to = "kondisi",
    names_prefix = "jalan_",
    values_to = "panjang_jalan"
  )

glimpse(jalan_kabkota)

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

library(ggridges)

jalan_kabkota_plot <- 
  jalan_kabkota  %>% 
  ggplot(aes(panjang_jalan, kondisi)) +
  facet_wrap(~status) +
  geom_density_ridges_gradient(
    aes(fill = after_stat(x)), 
    show.legend = FALSE
  )

jalan_kabkota_plot

jalan_kabkota_plot <-
  jalan_kabkota %>%
  ggplot(aes(panjang_jalan, kondisi)) +
  facet_wrap(~status) +
  geom_density_ridges_gradient(
    aes(fill = after_stat(x)),
    show.legend = FALSE
  )

jalan_kabkota_plot +
  geom_vline(xintercept = 100, linetype = "dashed", colour = "darkslategray4") +
  scale_x_continuous(trans = "log10")

jalan_kabkota_plot <-
  jalan_kabkota %>%
  ggplot(aes(panjang_jalan, kondisi)) +
  facet_wrap(~status) +
  geom_density_ridges_gradient(
    aes(fill = after_stat(x)),
    show.legend = FALSE
  )

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

# install.packages("waffle", repos = "https://cinc.rud.is")
library(waffle)

faskes_kalimantan_plot <- 
  ggplot(faskes_kalimantan, aes(fill = faskes, values = jumlah)) +
  facet_wrap(~provinsi) +
  geom_waffle(colour = "white")

faskes_kalimantan_plot

faskes_kalimantan_plot <-
  ggplot(faskes_kalimantan, aes(fill = faskes, values = jumlah)) +
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

faskes_kalimantan_plot <-
  ggplot(faskes_kalimantan, aes(fill = faskes, values = jumlah)) +
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

library(ggwordcloud)
library(showtext)

hashtags <- read_csv("hashtags.csv")
glimpse(hashtags)

font_add_google("Lacquer")
showtext_auto()

hashtags %>%
  ggplot(
    aes(
      label = hashtags,
      size = count,
      colour = contains_data_word
    )
  ) +
  geom_text_wordcloud_area(family = "Lacquer", shape = "square") +
  scale_size_area(max_size = 20) +
  scale_colour_manual(values = c("#009AB3", "#B0E601")) +
  theme_void() +
  theme(plot.background = element_rect(fill = "#1E1E1E"))

library(ggtext)

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

library(cowplot)

ggdraw(igstats_plot) +
  draw_image(
    image = "https://academy.dqlab.id/assets/images/logo-dqlab.png",
    x = 0.425,
    y = -0.44,
    scale = 0.1
  )

library(gganimate)

igcomments <- read_csv("igcomments.csv")
glimpse(igcomments)

font_add_google(name = "Roboto Condensed")
showtext.auto()

igcomments_plot <- 
  igcomments %>%
  sample_frac() %>%
  mutate(
    frame = row_number(),
    label = format(date, format = "%e %b %y")
  ) %>%
  ggplot(aes(frame, hour, colour = is_video, size = n_comments)) +
  geom_jitter(alpha = 0.8, show.legend = FALSE) +
  scale_colour_manual(values = c("#009AB3", "#B0E601")) +
  scale_size_area(max_size = 12) +
  theme_modern_rc(
    base_family = "Roboto Condensed",
    plot_title_size = 13,
    plot_title_face = "plain",
    subtitle_size = 35,
    subtitle_face = "bold",
    caption_face = "italic"
  ) +
  theme(
    plot.title.position = "plot",
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    plot.caption = element_text(hjust = 0.5),
    axis.text = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  ) +
  coord_polar()

igcomments_anim <-
  igcomments_plot +
  labs(
    title = "Constellation of Instagram contents!",
    subtitle = "{current_frame}",
    caption = "More comment make the star bigger\nGreen stars are video contents"
  ) +
  transition_manual(label, cumulative = TRUE) +
  enter_appear() +
  ease_aes("cubic-in-out")

igcomments_anim