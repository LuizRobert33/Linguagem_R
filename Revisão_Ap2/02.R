# Questão 2 - Parte A

# Amostra coletada
amostra <- c(4.9, 7.0, 8.1, 4.5, 5.6, 6.8, 7.2, 5.7, 6.2)

# Média amostral
media <- mean(amostra)

# Desvio padrão populacional (dado no enunciado)
sigma <- 2

# Tamanho da amostra
n <- length(amostra)

# Valor crítico Z para 90% de confiança (normal padrão)
z <- qnorm(0.95)  # 90% de confiança → 5% em cada cauda → qnorm(0.95)

# Erro máximo (margem de erro)
E <- z * (sigma / sqrt(n))

# Intervalo de confiança
IC <- c(media - E, media + E)
print(round(IC, 3))  # Resultado: [5.125, 7.319]
# Questão 2 - Parte B

# Queremos um erro máximo de no máximo 0.01
E_desejado <- 0.01

# Cálculo do tamanho mínimo da amostra
n_necessario <- (z * sigma / E_desejado)^2
print(ceiling(n_necessario))  # Arredonda pra cima
