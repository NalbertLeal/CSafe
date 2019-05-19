# Compilador da linguagem CSafe (DIM0548-Compiler)

"The implementation of a C like language much more safer than the default C"

O projeto neste repositório possui no arquivo "newlexer.l" os lexemas (as palavras chaves e o regex dos constructos da linguagem) da linguagem **SAFE C**.
Existe um makefile na raiz do projeto com os seguintes comandos:

Para rodar esse projeto da maneira correta você deve instalar o programa "flex". No linux derivados do debian basta executar esse comando para instalar o "flex":

´´´
~$ sudo apt-get install flex
´´´

- flex
- gcc
- test

O comando **flex** passa o programa "flex" no arquivo "newlexer.l". O comando **gcc** roda o gcc no arquivo saida do "flex" (no caso é a saida do "flex" é "lex.cc.c") e o comando **test** roda o arquivo com o megesort no lex da linguagem e imprime no console o resultado. 
Indico que caso queira rodar todos esses comandos na ordem certa simplesmente rode o comando **make** no terminal, assim os comandos descritos acima serão executados na ordem certa.

Abaixo esta o comando para rodar o projeto com a saida do lex rodando o arquivo "meger_sort.sc":

´´´
~$ make
´´´
