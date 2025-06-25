# Dados fornecidos
media <- 150         # média da amostra
desvio <- 5          # desvio padrão populacional
n <- 36              # tamanho da amostra
z <- 1.96            # valor crítico para 95% de confiança

# Cálculo do erro padrão
erro_padrao <- desvio / sqrt(n)

# Cálculo do intervalo de confiança
limite_inferior <- media - z * erro_padrao
limite_superior <- media + z * erro_padrao

# Resultado
cat("Intervalo de confiança de 95%: [", limite_inferior, ",", limite_superior, "]\n")
