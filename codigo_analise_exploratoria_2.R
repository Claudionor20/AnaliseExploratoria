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

# Obtendo a média, primeiro quartil, mediana e terceiro quartil das variáveis score_periculosidade, idade e tempo_preso

media_mediana_quartil <- base %>%
  summarise(
    media_score_periculosidade = mean(score_periculosidade, na.rm = TRUE),
    primeiro_quartil_score_periculosidade = quantile(score_periculosidade, 0.25, na.rm = TRUE),
    mediana_score_periculosidade = median(score_periculosidade, na.rm = TRUE),
    terceiro_quartil_score_periculosidade = quantile(score_periculosidade, 0.75, na.rm = TRUE),
    
    media_idade = mean(idade, na.rm = TRUE),
    primeiro_quartil_idade = quantile(idade, 0.25, na.rm = TRUE),
    mediana_idade = median(idade, na.rm = TRUE),
    terceiro_quartil_idade = quantile(idade, 0.75, na.rm = TRUE),
    
    media_tempo_preso = mean(tempo_preso, na.rm = TRUE),
    primeiro_quartil_tempo_preso = quantile(tempo_preso, 0.25, na.rm = TRUE),
    mediana_tempo_preso = median(tempo_preso, na.rm = TRUE),
    terceiro_quartil_tempo_preso = quantile(tempo_preso, 0.75, na.rm = TRUE)
  )

# Fazendo gráfico de dispersão entre tempo_preso e score_periculosidade
ggplot(base, aes(x = tempo_preso, y = score_periculosidade)) +
  geom_point(color = "darkred", alpha = 0.6) +
  labs(title = "Dispersão entre Tempo Preso e Score de Periculosidade", x = "Tempo Preso (meses)", y = "Score de Periculosidade") +
  theme_minimal()
ggsave("dispersao_tempo_preso_score_periculosidade.png", plot = last_plot(), width = 8, height = 6)

# Calculando a correlação entre tempo_preso e score_periculosidade
correlacao <- cor(base$tempo_preso, base$score_periculosidade, use = "complete.obs")

# Obtendo variância, desvio padrão e amplitude das variáveis score_periculosidade, idade e tempo_preso
variancia_desvio_amplitude <- base %>%
  summarise(
    variancia_score_periculosidade = var(score_periculosidade, na.rm = TRUE),
    desvio_padrao_score_periculosidade = sd(score_periculosidade, na.rm = TRUE),
    amplitude_score_periculosidade = max(score_periculosidade, na.rm = TRUE) - min(score_periculosidade, na.rm = TRUE),
    
    variancia_idade = var(idade, na.rm = TRUE),
    desvio_padrao_idade = sd(idade, na.rm = TRUE),
    amplitude_idade = max(idade, na.rm = TRUE) - min(idade, na.rm = TRUE),
    
    variancia_tempo_preso = var(tempo_preso, na.rm = TRUE),
    desvio_padrao_tempo_preso = sd(tempo_preso, na.rm = TRUE),
    amplitude_tempo_preso = max(tempo_preso, na.rm = TRUE) - min(tempo_preso, na.rm = TRUE)
  )
