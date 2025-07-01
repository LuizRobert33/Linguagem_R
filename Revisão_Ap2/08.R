# Leitura dos dados
dados <- read.csv("trabalhadores_cafe.csv")

# Diferença entre os pares (com - sem)
diff <- dados$com_cafe - dados$sem_cafe

# Estatísticas básicas
media_diff <- mean(diff)
sd_diff <- sd(diff)
n <- length(diff)

# Teste t pareado unilateral (melhoria = aumento)
t_test <- t.test(dados$com_cafe, dados$sem_cafe,
                 paired = TRUE,
                 alternative = "greater", # unilateral: com_cafe > sem_cafe
                 conf.level = 0.95)

# Resultados
print(t_test)

# Acréscimo médio estimado
cat("Acréscimo médio estimado:", round(media_diff, 2), "peças\n")
