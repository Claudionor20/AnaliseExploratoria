# Análises com base no arquivo base_trabalho

Repositório criado para a aula de **Prática Estatística 1**.  
Este repositório contém análises exploratórias descritivas realizadas com base na base de dados fornecida, incluindo cálculos de medidas de tendência central e dispersão, bem como visualizações gráficas para compreensão da distribuição das variáveis.

---
## Pergunta - Defina com suas palavras o que é um commit:

O GitHub é uma plataforma que permite o trabalho colaborativo com códigos de 	programação. Dentro desse sistema, o commit é um comando utilizado para registrar 	alterações feitas no código localmente, ou seja, no computador do desenvolvedor. Cada 	commit cria uma versão salva do projeto, com uma mensagem que descreve as mudanças 	realizadas. Depois de realizar o commit, é possível enviar essas alterações para o repositório 	remoto no GitHub por meio do comando push, permitindo que outras pessoas acessem e 	continuem o 	trabalho a partir das modificações feitas.

## Medidas de Tendência Central e Dispersão

Supondo que foram observados os valores x₁, x₂, ..., xₙ, temos as definições gerais:

- **Média (𝑥̄):**  
  𝑥̄ = (1/n) Σ xᵢ

- **Mediana:**  
  Valor central dos dados ordenados.

- **Variância (s²):**  
  s² = Σ(xᵢ - 𝑥̄)² / (n - 1)

- **Desvio Padrão (s):**  
  s = √s²

- **Amplitude (A):**  
  A = xₘₐₓ - xₘᵢₙ

---

### Valores Calculados

| Variável | Média | Mediana | Variância | Desvio Padrão | Amplitude |
|:----------|:------:|:--------:|:-----------:|:---------------:|:------------:|
| **Score de Periculosidade** | 174,52 | 177,21 | 660,58 | 25,70 | 156,02 |
| **Idade** | 50,92 | 52,00 | 374,08 | 19,34 | 79 |
| **Tempo Preso (meses)** | 60,59 | 60,50 | 99,09 | 9,95 | 51 |

Os resultados mostram que:
- As **idades** apresentam **alta variabilidade** (desvio padrão ≈ 19,3), sugerindo uma população bastante heterogênea.
- O **score de periculosidade** tem média elevada e dispersão moderada.
- O **tempo preso** possui variabilidade menor, concentrando-se em torno de 60 meses.

---

## Análises Exploratórias

### 1. Histograma da variável **Idade**

O histograma mostra que a idade dos detentos está **concentrada entre 50 e 60 anos**, embora haja **ampla dispersão** (amplitude de 79 anos e desvio padrão de 19,3).  
Isso indica uma **distribuição levemente assimétrica à direita**, com poucos indivíduos em idades mais elevadas.

<img width="2400" height="1800" alt="histograma_idade" src="https://github.com/user-attachments/assets/272393ec-7ec2-428d-a33d-9c7966dafefc" />

---

### 2. Boxplot do **Tempo Preso**

O **tempo de detenção** apresenta valores concentrados entre **50 e 70 meses**, com **média de 60,6 meses** e **desvio padrão de 9,95**.  
Há **outliers acima de 85 meses**, o que amplia a **amplitude (51)** e indica a existência de casos excepcionais de longas detenções.

<img width="2400" height="1800" alt="boxplot_tempo_preso" src="https://github.com/user-attachments/assets/1f56454a-288f-4238-8deb-dad4610824ea" />

---

### 3. Boxplot do **Score de Periculosidade por Escolaridade**

O gráfico mostra que **os maiores scores de periculosidade** concentram-se entre indivíduos com **Ensino Fundamental e Médio completo**, enquanto aqueles com **Ensino Superior** apresentam scores menores.  
Isso sugere uma **tendência de redução do score de periculosidade com o aumento da escolaridade**.

<img width="2400" height="1800" alt="boxplot_score_periculosidade_escolaridade" src="https://github.com/user-attachments/assets/7777a785-d9f1-42fc-a679-27e8ca947aeb" />

---

### 4. Gráfico de Barras de **Reincidência**

<img width="2400" height="1800" alt="grafico_barras_reincidente" src="https://github.com/user-attachments/assets/f4904b73-6713-49f0-bceb-56bc437704d1" />

### 5. Gráfico de Dispersão tempo_preso e score_periculosidade

Através do grafico de dispersão e do coeficiente de correlação de pearson de 0.80, podemos interpretar que há uma associação estatística positiva entre o tempo que um preso fica detido e o seu score de periculosidade, ou seja, existem indicios de que quanto maior o tempo (em meses) que o detento fica preso, maior sera o seu score de periculosidade.

<img width="2400" height="1800" alt="dispersao_tempo_preso_score_periculosidade" src="https://github.com/user-attachments/assets/e5d4e78e-58a0-4000-b756-a170fd2bc866" />


---

## Conclusão

As análises evidenciam que:
- A **idade** e o **score de periculosidade** apresentam maior variabilidade entre os indivíduos.
- O **tempo preso** tende a ser mais homogêneo, com valores próximos da média.
- O **nível de escolaridade** parece influenciar negativamente o **score de periculosidade**.

---
