# Projeto de Machine Learning usando Google Cloud Platform

Este projeto tem como objetivo gerar um modelo de machine learning que irá fazer recomendações de casas para os usuarios de uma plataforma de aluguel de casas, com base nos dados dos imoveis disponiveis na plataforma e os dados de avaliação dos imoveis, realizadas pelos usuarios da plataforma. O modelo irá gerar 5 rrecomendações para cada usuario.

## Passo-a-passo

- Consultar a autorização da conta, deve estar setado como editor
### Criar uma instancia de Cloud SQL
- SQL
- Criar instancia
- Escolher MySQL
- Instance ID = rentals
- Root password = *********
- Selecionar região = us-central
- Criar instancia

### Criar as tabelas
- Na tela do SQL clicar na istancia **rentals**
- Encontrar a área **Connect to this instance** e clicar em **Open Cloud Shell**
- Ao carregar, o shell ira exibir a seguinte linha de comando:
  - gcloud sql connect rentals --user=root --quiet
  - clicar enter, caso a API necessaria não esteja ativada, ocorrerá um erro, e isso ira gerar um link para a API, depois de ativar a API é necessario gerar as credenciais.
  - Rodar o comando novamente, isso deve abrir o monitor do MySQL
  - usar o comando: SHOW DATABASES;
  - usar o seguinte script [criar_tabelas.sql]()
  - A ultima linha do script é o comando SHOW DATABESES, confirme se o database recommendation_spark aparece entre os databases do MySQL.
  - usar o seguinte comaando: USE recommendation_spark;
SHOW TABLES;
  - Voce deverar ver as tabelas que foram criadas com o script
  - rodar a seguinte query: SELECT * FROM Accommodation;
  - A resposta será: Empty set, uma vez que nenhum dados foi carregado para as tabelas.

### Carregando os arquivos no Cloud Storage 
- Abrir uma nova aba do cloud shell e colar o seguinte comando: \
echo "Creating bucket: gs://$DEVSHELL_PROJECT_ID"
gsutil mb gs://$DEVSHELL_PROJECT_ID
echo "Copying data to our storage from public dataset"
gsutil cp gs://cloud-training/bdml/v2.0/data/accommodation.csv gs://$DEVSHELL_PROJECT_ID
gsutil cp gs://cloud-training/bdml/v2.0/data/rating.csv gs://$DEVSHELL_PROJECT_ID
echo "Show the files in our bucket"
gsutil ls gs://$DEVSHELL_PROJECT_ID
echo "View some sample data"
gsutil cat gs://$DEVSHELL_PROJECT_ID/accommodation.csv
- Este comando ira criar um novo bucket no cloud storage e carregará os arquivos [accommodation.csv]() e [rating.csv]() nele.

### Carregar os dados do Cloud Storage nas tabelas do Cloud SQL
- Na tela do SQL clicar em rentals
- Com a tela do rentals aberta, clicar em Importar
- Na tela que irá abrir, clique em browser e escolha o bucket e o arquivo **accommodation.csv** e clique em select
- Selecione o formato CSV e o banco de dados recommendation_spark, e de o  nome **Accomodation** para a tabela
- Clique em Importar
- Repita o mesmo processo para o arquivo **rating.csv** dando para a tabela o nome **Rating**.

### Explorando os dados carregados no SQL
- No shell onde o MySQL esta rodando realizar as segunintes querys, apenas para obter algumas informações sobre os dados que foram inseridos nas tabelas
- Visualizar os dados da tabela Rating
  -  USE recommendation_spark;
     SELECT * FROM Rating
     LIMIT 15;
- Usar uma função de agregação para contar o numero de linhas na tabela
  - SELECT COUNT(*) AS num_ratings
     FROM Rating;
- Descobrir algumas informações sobre as avaliações das acomodações
  - SELECT
        COUNT(userId) AS num_ratings,
        COUNT(DISTINCT userId) AS distinct_user_ratings,
        MIN(rating) AS worst_rating,
        MAX(rating) AS best_rating,
        AVG(rating) AS avg_rating
    FROM Rating;
- Como o modelo a ser desenvolvido é de machine learning, nos precisamos de um historico rico de preferencias do usuario para o modelo aprender apartir deles, é seguinte quary é para descobrir quantas avaliações foram feitas pelos usuarios
  - SELECT
        userId,
        COUNT(rating) AS num_ratings
    FROM Rating
    GROUP BY userId
    ORDER BY num_ratings DESC;

### Criando uma Intancia do DataProc

