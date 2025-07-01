# Dados da amostra (%)
rendimento <- c(23.6, 22.8, 25.7, 24.8, 26.4, 24.3, 23.9, 25.0)

# Estatísticas
media <- mean(rendimento)
s <- sd(rendimento)
n <- length(rendimento)

# Hipótese nula
mu_0 <- 24

# Estatística t
t_obs <- (media - mu_0) / (s / sqrt(n))

# Valor crítico bilateral
t_crit <- qt(1 - 0.05/2, df = n - 1)  # 0.975 para 5% bilateral

# Saída
cat("Média amostral:", round(media, 2), "\n")
cat("t observado:", round(t_obs, 3), "\n")
cat("t crítico:", round(t_crit, 3), "\n")

# Conclusão
if (abs(t_obs) > t_crit) {
  cat("✅ Rejeita H0: a média dos rendimentos é significativamente diferente de 24%.\n")
} else {
  cat("❌ Não rejeita H0: não há evidência de que os rendimentos sejam diferentes de 24%.\n")
}
