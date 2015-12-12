library(dplyr)
musicasPorAno <- read.csv('musicas.csv',sep = ";", fileEncoding = "UTF-8", header = T)
musicasPorAno <- unique(musicasPorAno)
(
musicasPorAno$path <- with(musicasPorAno, paste(paste('cifras',artista,paste(artista, musica, sep="_"), sep="\\"),'.html',sep=''))


songs_found <- read.csv("teste.csv", header = F)


# r <- musicasPorAno %>% filter(musicasPorAno, path %in% )
resp <- musicasPorAno %>% filter(as.character(path) %in% !as.character(songs_found$V1))

html <- with(musicasPorAno, strsplit(path, "\\\\"))
html <- do.call("rbind", html)[,3]

contem <- subset(musicasPorAno, html %in% songs_found$V1)
naoContem <- subset(musicasPorAno, !(html %in% songs_found$V1))
