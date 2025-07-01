# Dados
metodo_A <- c(16, 14, 19, 18, 19, 20, 15, 18, 17, 18)
metodo_B <- c(13, 19, 14, 17, 21, 24, 10, 14, 13, 15)

# Teste t para duas amostras independentes (Welch)
t_test <- t.test(metodo_A, metodo_B, alternative = "two.sided")

# Resultados
print(t_test)

# Médias
cat("Média Método A:", mean(metodo_A), "\n")
cat("Média Método B:", mean(metodo_B), "\n")
