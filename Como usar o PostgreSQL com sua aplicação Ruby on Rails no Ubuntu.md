
# PostgreSQL com Ruby on Rails (Linux)

## Criando usuário do banco de dados

Crie um super usuário com esse comando(Substitua o nome `user` pelo seu nome de usuario)

```
sudo -u postgres createuser -s user
```

Se você quiser adicionar uma senha para o seu banco de dados, entre no console do PostgreSQL:

```
sudo -u postgres psql
```

O console do PostgreSQL é indicado por postgres=# , use esse comando para adicionar a senha:

```
postgres=# \password senha
```

## Criando uma nova aplicação Rails

Crie uma pasta em qualquer lugar, e entre nela. Use o `-d postgresql` para criar sua aplicação juntamente com o banco 
de dados postgresql, porque por padrão o sqlite é iniciado, e pode ocorrer algum erro. 

```
rails new nome-do-seu-projeto -d postgresql
```

Após isso entre na pasta que você criou utilizando o comando acima

```
>cd appname
```

## Configurando Conexão com o Banco de Dados

O usuário do PostgreSQL que você criou será usado para criar os bancos de dados de teste e desenvolvimento do seu aplicativo. Precisamos definir as configurações adequadas do banco de dados para seu aplicativo.]


Abra o arquivo de configuração do banco de dados do seu aplicativo no seu editor de texto favorito. Usaremos o Nano

```
nano config/database.yml
```

Na ```default``` seção, encontre a linha que diz "pool: 5" e adicione as seguintes linhas abaixo. **Deve ser algo como isto** :

```
	host: localhost
  	username: user
  	password: pguser_password
```
salvar e sair

## Criando banco de dados da aplicação

Crie os bancos de dados ```development``` e ```test``` usando este comando **rake**:

``` 
rake db:create
```
isso criará dois bancos de dados no seu servidor PostgreSQL. Por exemplo, se o nome do seu aplicativo for "appname", ele criará bancos de dados chamados "appname_development" e "appname_test".

Se você receber um erro, neste momento, rever a subseção anterior (Configurar conexão de banco de dados) para ter a certeza que o host, usernamee passwordem database.ymlestão corretas. Ou seguir os passos abaixo para resolução de algum problema. Depois de garantir que as informações do banco de dados estejam corretas, tente criar os bancos de dados do aplicativo novamente.

## Segunda opção para configurar o Banco de Dados

Entre no console do PostgreSQL utilizando o comando abaixo

```
sudo -u postgres psql
```

Agora para setar usuario para conseguir utilizar e criar o banco de dados(**O NomeDoSeuUsuario deve ser na maioria dos casos o mesmo que utiliza em sua maquina, caso ocorra algum erro, use o criado para conseguir criar o banco**), utilize o comando: 

```
alter user NomeDoSeuUsuario createdb;
```

## Configurando para testar o rails

A maneira mais fácil de testar se seu aplicativo é capaz de usar o banco de dados PostgreSQL é tentar executá-lo.

Por exemplo, para executar o ambiente de desenvolvimento (o padrão), use este comando:

```
rails server
```

Isso iniciará sua aplicação Rails no seu localhost na porta 3000.

Ápos isso abrir o seu browser de preferencia e adicionar o link:

```
http://localhost:3000
```
Se você vir a página “Bem-vindo a bordo” do Ruby on Rails, seu aplicativo está configurado corretamente e conectado ao banco de dados PostgreSQL.

