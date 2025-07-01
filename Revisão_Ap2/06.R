# Amostra de receitas (%)
dados <- c(8, 10, 9, 11, 8, 12, 16, 9, 12, 13)

# Estatísticas amostrais
media <- mean(dados)
s <- sd(dados)
n <- length(dados)

# Média sob H0
mu_0 <- 7

# Estatística t
t_obs <- (media - mu_0) / (s / sqrt(n))

# Valor crítico t para alfa = 0.05 (teste unilateral)
t_crit <- qt(0.95, df = n - 1)

# Saída
cat("Média amostral:", round(media, 2), "\n")
cat("t observado:", round(t_obs, 3), "\n")
cat("t crítico:", round(t_crit, 3), "\n")

# Conclusão
if (t_obs > t_crit) {
  cat("✅ Rejeita H0: há evidência de que a receita média aumentou.\n")
} else {
  cat("❌ Não rejeita H0: não há evidência suficiente de melhora.\n")
}
