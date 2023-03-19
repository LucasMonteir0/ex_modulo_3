![](https://i.imgur.com/xG74tOh.png)

Utilizando algums conceitos aprendidos de SOLID vamos melhorar a classe `CalculadoraDePrecos` que está no arquivo `calculador_de_preco.dart`.

Note que ele possui muitas responsabilidades. Além de calcular o preço da compra, ela também define o valor do Frete e valor do desconto. 

Utilizando o conceito de SRP:

- Crie a classe `Frete` e mova a responsabilide de definir o frete.

- Crie a classe `TabelaDesconto` e mova a responsabilidade de definir o desconto.

- Utilize estas classes dentro da classe `CalculadoraDePrecos` passando por parâmetro

Agora utilizando o conceito de OCP:

- Crie interfaces para `Frete` e `TabelaDesconto`
- Faça a classe `CalculadoraDePrecos` utilizar este desconto