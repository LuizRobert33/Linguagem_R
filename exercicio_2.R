## # Ler o arquivo CSV
dados <- read.csv("defeitos-grupos-de6.csv")

# A coluna de interesse é a primeira (a única): dados$x
defeitos <- dados$x

# Média
media <- mean(defeitos)

# Mediana
mediana <- median(defeitos)

# Moda (função personalizada, já que R base não tem)
moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
moda_valor <- moda(defeitos)

# Primeiro quartil (Q1) e terceiro quartil (Q3)
quartis <- quantile(defeitos, probs = c(0.25, 0.75))
q1 <- quartis[1]
q3 <- quartis[2]

# Mínimo e máximo
minimo <- min(defeitos)
maximo <- max(defeitos)

# Proporção de produtos defeituosos em relação ao total (total de defeitos / total de produtos)
total_defeituosos <- sum(defeitos)
total_produtos <- length(defeitos) * 6  # 60 grupos * 6 produtos
proporcao_defeituosos <- total_defeituosos / total_produtos

# Variância
variancia <- var(defeitos)

# Desvio padrão
desvio_padrao <- sd(defeitos)

# Coeficiente de variação (CV = (sd / média) * 100)
coef_var <- (desvio_padrao / media) * 100

# Distância interquartil (Q3 - Q1)
distancia_interquartil <- q3 - q1

# Imprimir tudo
cat("Média:", media, "\n")
cat("Mediana:", mediana, "\n")
cat("Moda:", moda_valor, "\n")
cat("Q1:", q1, "\n")
cat("Q3:", q3, "\n")
cat("Mínimo:", minimo, "\n")
cat("Máximo:", maximo, "\n")
cat("Proporção de defeituosos:", proporcao_defeituosos, "\n")
cat("Variância:", variancia, "\n")
cat("Desvio padrão:", desvio_padrao, "\n")
cat("Coeficiente de variação (%):", coef_var, "\n")
cat("Distância interquartil:", distancia_interquartil, "\n")
