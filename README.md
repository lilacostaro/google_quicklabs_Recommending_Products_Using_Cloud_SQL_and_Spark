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
  - usar o seguinte script [criar_tabelas.sql](https://github.com/lilacostaro/google_quicklabs_Recommending_Products_Using_Cloud_SQL_and_Spark/blob/master/criar_tabelas.sql)
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
- Este comando ira criar um novo bucket no cloud storage e carregará os arquivos [accommodation.csv](https://github.com/lilacostaro/google_quicklabs_Recommending_Products_Using_Cloud_SQL_and_Spark/blob/master/input_data/accommodation.csv) e [rating.csv](https://github.com/lilacostaro/google_quicklabs_Recommending_Products_Using_Cloud_SQL_and_Spark/blob/master/input_data/rating.csv) nele.

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

- Buscar por SQL e na janela principal consultar a região e a zona onde a instacia de SQL foi criada, esta informaçãao se encontra na coluna **location**, a imagem abaixo é um exeplo da tela que você deve estar vendo:
![Alt text](assets\sql_instance.png?raw=true)
- Com essa informação, procure por DtaProc no menu de navegação e selecione este serviço, caso seja necessario, ative a API e do DataProc.
- Na pagina do DataProc clique em adicionar Cluster e crie um cluster com os seguintes parametros:
  - Nome: rentals
  - Region: mesma região do cluster SQL
  - Zona: mesma zona do cluster SQL
  - clicar em Configurar node
  - Para Master node, em Machine type, selecione n1-standard-2(2 vCPUs, 7.5 GB memory)
  - Para Worker nodes, em Machine type, selecione n1-standard-2 (2 vCPUs, 7.5 GB memory)
  - Deixe todos os outros parametros com o seu valor padrão e clique em Criar Cluster.

- Em seguida abra o arquivo [conexao.sh](), copie o comando e rode em uma nova janela do Cloud Shell, para autorizar a conexão entre o Cloud DataProc e o Cloud SQL, se necessario modifique os parametros: CLUSTER, CLOUDSQL, ZONE e NWORKERS.
- Quando o processamento for concluido, a mensagem na tela será a seguinte: Patching Cloud SQL instance...done.
- Abra a instancia SQL e clicar em **rentals**, navegar até a sessão **Connect to this instance** e copie o seu endereço de IP publico, como mostra a figura abaixo
![Alt text](assets\ip_address.png?raw=true)

### Copiar o arquivo do modelo de Machine Learn

- Usar o seguinte comando para copiar o arquivo com as instruções do modelo e abrir o editor de texto do cloud shell: \
   gsutil cp gs://cloud-training/bdml/v2.0/model/train_and_apply.py train_and_apply.py
   cloudshell edit train_and_apply.py
- Quando o arquivo for aberto no editor, modifique a linha 30, trocando o endereço de IP pelo seu, e a linha 33, inserindo a sua senha do SQL no lugar da palavra 'root'.
- Salve o arquivo clicando em file > save na barra de comandos do editor de texto e feche o arquivo.
- Rode o seguinte comando no terminal, para copiar o arquivo editado para o seu bucket do Cloud Storage \
   gsutil cp train_and_apply.py gs://$DEVSHELL_PROJECT_ID

### Rodar o Job de ML no DataProc

- No console do DataProc clique no cluster **rentals**
- Clique em Enviar Job
- informe os seguintes parametros:
  - ID do job: O nome que voce quiser
  - Região: A região do seu cluster
  - Selecione o cluster **rentals**
  - Tipo de Job: PySpark
  - Arquivo Python principal: gs://<bucket-name>/train_and_apply.py (onde <bucket_name> é o nome do seu bucket e pose ser consultado no Claud Storage)
  - Máximo de reinicializações por hora: 1
- Clique em Enviar
- A tela do Job corregará altomaticamente e você poderá acompanhar o Status do JOB até a sua conclusão.
- Se tudo correr sem erros voce verá uma tela parecida com está: 
![Alt text](assets\job_concluido.png?raw=true)

### Explorando as linhas inseridas na tabela Recommendation

- No cloud shell rodando o MySQL faça as seguintes querys:
  - USE recommendation_spark;
  - SELECT COUNT(*) AS count FROM Recommendation;
  - SELECT
        r.userid,
        r.accommodationid,
        r.prediction,
        a.title,
        a.location,
        a.price,
        a.rooms,
        a.rating,
        a.type
    FROM Recommendation as r
    JOIN Accommodation as a
    ON r.accommodationid = a.id
    WHERE r.userid = 10;

### Exxportando as informações da tabela Recommendation

- No instancia rentals do Cloud SQL clique em exportar
- selecione CSV como tipo de arquivo
- No local indicado cole a seguinte query \
  SELECT * FROM REcommendation
- Selecione o seu bucket e clique em Exportar
- Repita o processo utilizando a seguinte Quary 
  SELECT
        r.userid,
        r.accommodationid,
        r.prediction,
        a.title,
        a.location,
        a.price,
        a.rooms,
        a.rating,
        a.type
    FROM Recommendation as r
    JOIN Accommodation as a
    ON r.accommodationid = a.id;

- Caso queira fazer o download dos arquivos, vá para Cloud Storage
- Clique no seu bucket
- Faça o download dos arquivos que deseja.
  