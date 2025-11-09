# Importando pacotes para analise exploratória
library(ggplot2)
library(dplyr)
library(readxl)


# Lendo base de trabalho
base <- read_excel("Base_trabalho.xlsx")

# Transformando as variáveis qualitativas em fatores
base <- base %>%
  mutate(
    escolaridade = as.factor(escolaridade),
    reincidente = as.factor(reincidente),
    filhos = as.factor(filhos),
    sexo = as.factor(sexo),
    casado = as.factor(casado)
  )

# Verificando dados faltantes
sapply(base, function(x) sum(is.na(x))) # Foi verificado que não há dados faltantes na base

# Fazendo histograma da variável idade

ggplot(base, aes(x = idade)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribuição da Idade", x = "Idade", y = "Frequência") +
  theme_minimal()
ggsave("histograma_idade.png", plot = last_plot(), width = 8, height = 6)

# Fazendo boxplot da variável tempo_preso
ggplot(base, aes(y = tempo_preso)) +
  geom_boxplot(fill = "orange", color = "black", alpha = 0.7) +
  labs(title = "Boxplot do Tempo Preso", y = "Tempo Preso (meses)") +
  theme_minimal()
ggsave("boxplot_tempo_preso.png", plot = last_plot(), width = 8, height = 6)

# Fazendo boxplot da variável score_periculosidade por escolaridade
ggplot(base, aes(x = escolaridade, y = score_periculosidade)) +
  geom_boxplot(fill = "green", color = "black", alpha = 0.7) +
  labs(title = "Boxplot do Score de Periculosidade por Escolaridade", x = "Escolaridade", y = "Score de Periculosidade") +
  theme_minimal()
ggsave("boxplot_score_periculosidade_escolaridade.png", plot = last_plot(), width = 8, height = 6)


# Fazendo gráfico de barras para a variável reincidente
ggplot(base, aes(x = reincidente)) +
  geom_bar(fill = "purple", color = "black", alpha = 0.7) +
  labs(title = "Distribuição de Reincidentes", x = "Reincidente", y = "Frequência") +
  theme_minimal()
ggsave("grafico_barras_reincidente.png", plot = last_plot(), width = 8, height = 6)








