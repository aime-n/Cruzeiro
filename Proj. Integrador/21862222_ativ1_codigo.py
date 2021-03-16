# Nome: Aimê Gomes da Nobrega
# Nro Cruzeiro do Sul: 22862222
# Curso: Ciências de Dados
# Disciplina: Projeto Integrador Transdisciplinar em Ciências de Dados
#
# ATIVIDADE 1
#### criado no Jupyter Notebook


# Criar um box-plot para que o pessoal possa ver a partir
# da idade a mostra de posição central, dispersão, simetria
 # dos dados, comprimento de caudas e dados discrepantes;

# Faça um texto curto, declarando o que você percebeu com
# relação ao box plot desenhado.

## colunas:
# - Idade do Segurado
# - Codigo do Procedimento Principal
# - Valor Total Liberado

import pandas as pd
import matplotlib.pyplot as plt

f = 'G:\Meu Drive\ead_cdd\semestre 4\pit\pacientes.csv'

df = pd.read_csv(f)

print(df.head())
print(df.boxplot(column = ['Idade do Segurado']))

plt.title('Boxplot da Idade dos Segurados')
plt.show()

Q1 = df["Idade do Segurado"].quantile(0.25)

Q3 = df["Idade do Segurado"].quantile(0.75)

IQR = Q3 - Q1

media = df['Idade do Segurado'].mean()
mediana = df['Idade do Segurado'].median()

minimo = min(df['Idade do Segurado'])
maximo = max(df['Idade do Segurado'])

print('Q1:',Q1)
print('Q3:', Q3)
print('Amplitude', IQR)
print('Média:', round(media, 2))
print('Mediana:', mediana)
print('Mínimo', minimo)
print('Maximo:', maximo)
