# Dados
n <- 10000
defeituosos <- 3200 + 600 + 150 + 50  # Total com defeito
p_hat <- defeituosos / n              # Proporção amostral

# Valor crítico Z para 98% de confiança
z <- qnorm(0.99)  # 1% em cada cauda → 99% acumulado

# Erro máximo (margem de erro)
E <- z * sqrt(p_hat * (1 - p_hat) / n)

# Intervalo de confiança
IC <- c(p_hat - E, p_hat + E)
print(round(IC, 4))  # Arredondado pra 4 casas
