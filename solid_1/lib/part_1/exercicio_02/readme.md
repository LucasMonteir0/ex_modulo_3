![](https://i.imgur.com/xG74tOh.png)
Utilizando o príncipio da Substituição de Liskov, vamos melhorar o código do exercício anterior, para isso utilize o mesmo projeto e faça:
- A implementação de um contrato para o usecase e para o repository;
- A criação de um novo repository, implementando o mesmo contrato do anterior, mas dessa vez utilize um novo Datasource. Exemplo: Se no anterior você utilizou o http, dessa vez use o Dio, ou qualquer outro a sua escolha;
- Crie duas instâncias do mesmo usecase porém com a dependência do repository sendo diferente. A execução deve ser a mesma e o retorno deve se manter de acordo com o esperado em ambos os casos.