# Dados
antes <- c(68, 80, 90, 72, 80)
depois <- c(60, 71, 88, 74, 76)

# Diferença: depois - antes
diff <- depois - antes

# Estatísticas
media_diff <- mean(diff)
sd_diff <- sd(diff)
n <- length(diff)

# Teste t pareado unilateral (espera redução)
t_test <- t.test(depois, antes,
                 paired = TRUE,
                 alternative = "less",  # Porque esperamos diminuição
                 conf.level = 0.95)

# Resultados
print(t_test)
cat("Redução média estimada:", round(media_diff, 2), "mmHg\n")
