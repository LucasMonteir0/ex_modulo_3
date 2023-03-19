Ainda utilizando o projeto da atividade número 1 e 2 de SOLID, vamos fazer as seguintes alterações no código:

A interface do usecase será uma dependência de uma interface "controller";
O controller, deverá ter um segundo contrato a ser implementado, este será um contrato genérico para todos os controllers que apresentam requests http, que devem conter elementos como:
loading: um booleano que pode ser nulo;
error: um booleano que pode ser nulo;
initial: um booleano que começa como true;
value:um valor dinâmico que se adequa ao valor esperado pela implementação do Controller;
Implementar esse controller, que utilizará o Observer Pattern, numa view do Flutter, e buildar os widgets de acordo com os estados: loading, error, initial e value;