# Linguagem R

## 🔧 Conceitos Iniciais

### 🗂️ Variáveis
São usadas para armazenar valores.

```r
x <- 5       # Atribui 5 a x
y <- "Olá"   # Atribui uma string
z <- TRUE    # Atribui um valor lógico (booleano)
```
## 🔗 Operadores
Atribuição: <- ou =

Aritméticos: + - * / ^

Relacionais: == != > < >= <=

Lógicos: & | !
```r
a <- 10
b <- 5

a + b      # Soma
a > b      # Maior que (TRUE)
a == b     # Igual (FALSE)
```
## 🏗️ Tipos de Dados
Numérico: 1, 5.6, -3

Inteiro: 3L (L indica inteiro)

Caracter (texto): "texto"

Lógico (booleano): TRUE, FALSE

Fator: Categorias (factor(c("Azul", "Verde")))

Data: as.Date("2024-01-01")

## 🔢 Vetores
```r
numeros <- c(1, 2, 3, 4, 5)
texto <- c("A", "B", "C")
logicos <- c(TRUE, FALSE, TRUE)

Acessar elementos:
numeros[1]    # Primeiro elemento
numeros[2:4]  # Do segundo ao quarto
```
## 🗒️ Listas
```r
minha_lista <- list(nome = "Ana", idade = 25, aprovado = TRUE)
minha_lista$nome   # Acessa "Ana"
```
## 🗄️ Data Frames
Tabelas (linhas e colunas).
```r
dados <- data.frame(
  nome = c("Ana", "Carlos"),
  idade = c(25, 30),
  aprovado = c(TRUE, FALSE)
)

dados$nome      # Acessa a coluna 'nome'
dados[1,]       # Primeira linha
```
## 🔁 Controle de Fluxo

```r
x <- 10

if (x > 5) {
  print("Maior que 5")
} else {
  print("Menor ou igual a 5")
}

Repetições:
for (i in 1:5) {
  print(i)
}

while (x > 0) {
  print(x)
  x <- x - 1
}
```

## 🏗️ Funções
Criando Funções:
```r
soma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}

soma(5, 3)   # Resultado: 8

Funções sem retorno explícito

mensagem <- function() {
  print("Olá, mundo!")
}

mensagem()
```

# Exemplos:

```r
# Exemplo de variável
nome <- "João"
idade <- 30
aprovado <- TRUE
```
## 🔗 Operadores
```r
# Aritmético
soma <- 5 + 3

# Relacional
comparacao <- 5 > 3   # TRUE

# Lógico
resultado <- (5 > 3) & (3 < 10)  # TRUE
```
## 🏗️ Tipos de Dados
```r
# Numérico
num <- 10.5

# Inteiro
inteiro <- 10L

# Caracter
texto <- "Exemplo"

# Lógico
logico <- TRUE

# Fator (categorias)
cores <- factor(c("Azul", "Verde", "Azul"))

# Data
data <- as.Date("2025-05-27")
```
## 🔢 Vetores
```r
# Criando um vetor numérico
idades <- c(21, 30, 45, 50)

# Acessando o primeiro elemento
idades[1]  # 21
```
## 🗒️ Listas
```r
# Lista com elementos diferentes
pessoa <- list(nome = "Maria", idade = 28, aprovado = TRUE)

# Acessar o nome
pessoa$nome  # "Maria"
```
## 🗄️ Data Frames
```r
# Criando um data frame
alunos <- data.frame(
  nome = c("Ana", "Carlos", "Pedro"),
  idade = c(25, 30, 22),
  aprovado = c(TRUE, FALSE, TRUE)
)

# Acessar coluna nome
alunos$nome  # Ana, Carlos, Pedro

# Acessar primeira linha
alunos[1,]   # Dados da Ana
```
## 🔁 Controle de Fluxo
```r
Condicional(if/else)

nota <- 7

if (nota >= 6) {
  print("Aprovado")
} else {
  print("Reprovado")
}

Loop(for)

for (i in 1:3) {
  print(paste("Número:", i))
}

Loop(While)

x <- 3

while (x > 0) {
  print(x)
  x <- x - 1
}
```

🏗️ Funções
```r
# Criando uma função que soma dois números
soma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}

# Usando a função
soma(10, 5)  # Resultado: 15
```


