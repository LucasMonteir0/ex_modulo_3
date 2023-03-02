![](https://i.imgur.com/xG74tOh.png)
Utilizando o conceito de SRP e Inversão de dependências elabore um caso de uso onde:
- O repository seja responsável apenas pelo retorno do dado;
- O DTO seja responsável apenas pelo armazenamento dos dados do repository, em forma de classe;
- A conversão dos dados deve ser feita por uma classe "mapper", cuja responsabilidade é converter o dado de Json para o DTO;
- Uma classe "usecase" deve ser criada, recebendo como dependência o repository. O usecase é quem de fato retornará o objeto esperado, nesse caso o nosso DTO.