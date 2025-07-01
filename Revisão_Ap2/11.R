# Dados
dieta_A <- c(15, 18, 12, 11, 14, 15)
dieta_B <- c(11, 11, 12, 16, 12, 13, 8, 10, 13)

# Teste t de Student para variâncias iguais (unilateral)
t_test <- t.test(dieta_A, dieta_B,
                 alternative = "greater",  # unilateral: dieta A > dieta B
                 var.equal = TRUE,          # assume variâncias iguais
                 conf.level = 0.99)         # nível 1%

# Resultados
print(t_test)

# Médias
cat("Média Dieta A:", mean(dieta_A), "\n")
cat("Média Dieta B:", mean(dieta_B), "\n")
