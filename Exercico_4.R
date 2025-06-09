dados <- read.csv("C:\\Users\\Luiz\\Documents\\Linguagem_R\\defeitos-grupos-de6.csv")
media <- mean(dados$X1)
mediana <- median(dados$X1)
## Para usar a função moda usar a biblioteca DescTools
q1 <- quantile(dados$X1, 0.25)
q3 <- quantile(dados$X1, 0.75)
min <- min(dados$X1)
max <- max(dados$X1)

qntdprod <- 59 * 6
somadefeit <- sum(dados$X1)
propor <- (somadefeit/qntdprod) * 100


