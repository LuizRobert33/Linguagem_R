# Dados da precipitação
chuvas <- c(30.5, 34.1, 27.9, 35.0, 26.9, 30.2, 28.3, 31.7, 25.8)

# Parâmetros amostrais
media_amostral <- mean(chuvas)
s <- sd(chuvas)
n <- length(chuvas)

# Valor da média sob H0
mu_0 <- 30.0

# Estatística t observada
t_obs <- (media_amostral - mu_0) / (s / sqrt(n))

# Valor crítico t para 5% de significância (teste unilateral)
t_crit <- qt(0.95, df = n - 1)

# Resultados
cat("t observado:", round(t_obs, 3), "\n")
cat("t crítico:", round(t_crit, 3), "\n")

# Conclusão do teste
if (t_obs > t_crit) {
  cat("✅ Rejeita H0: a média da precipitação é maior que 30.\n")
} else {
  cat("❌ Não rejeita H0: não há evidência suficiente.\n")
}
