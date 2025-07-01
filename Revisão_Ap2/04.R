# Amostra de receitas
receitas <- c(1230, 582, 576, 2093, 2621, 1045, 1439, 717, 1838, 1359)

# Parâmetros da amostra
media_amostral <- mean(receitas)
s <- sd(receitas)  # Desvio padrão amostral
n <- length(receitas)

# Hipótese nula: média do estado
mu_0 <- 1229

# Estatística do teste t
t_obs <- (media_amostral - mu_0) / (s / sqrt(n))

# Valor crítico t para alfa = 0.01 (unilateral, à direita)
t_crit <- qt(0.99, df = n - 1)

# Resultado
cat("t observado:", round(t_obs, 3), "\n")
cat("t crítico:", round(t_crit, 3), "\n")

# Conclusão
if (t_obs > t_crit) {
  cat("✅ Rejeita H0: a média das pequenas cidades é maior que a do estado.\n")
} else {
  cat("❌ Não rejeita H0: não há evidência suficiente.\n")
}
