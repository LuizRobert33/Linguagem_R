# A
# Dados fornecidos
media <- 150         # média da amostra
desvio <- 5          # desvio padrão populacional
n <- 36              # tamanho da amostra
z <- 1.96            # valor crítico para 95% de confiança

## o valor de 1.96 e descoberto apos o calculo da qnorm(0.975) que e 95% + 2.5% de cada lado(mas  a gente so usa esse valor 1 vez)

# Cálculo do erro padrão
erro_padrao <- desvio / sqrt(n)

# Cálculo do intervalo de confiança
limite_inferior <- media - z * erro_padrao
limite_superior <- media + z * erro_padrao

# Resultado
cat("Intervalo de confiança de 95%: [", limite_inferior, ",", limite_superior, "]\n")

# (B) Cálculo do tamanho da amostra para erro de 0.98
# Formula do erro maximo
#E <- z * (sigma / sqrt(n))
#E

z <- 1.96
E <- 0.98
n_necessario <- (z * desvio_padrao / E)^2
n_necessario  # Deve dar 100

