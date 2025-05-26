# Testando o AED(Analise Exploratoria de Dados)
notas <- c(1,2,3,4,5,6,7,0)

mean(notas)     # média
median(notas)   # mediana

# Moda — função que vamos criar (pois R não tem por padrão)
table(notas)
# Moda:
subset(table(notas), table(notas) == max(table(notas)))

min(notas)      # valor mínimo
max(notas)      # valor máximo

quantile(notas) # mostra os quartis

var(notas)      # variância
sd(notas)       # desvio padrão


hist(notas, main = "Histograma das Notas", col = "lightblue", xlab = "Notas")
boxplot(notas, main = "Boxplot das Notas", col = "lightgreen")


