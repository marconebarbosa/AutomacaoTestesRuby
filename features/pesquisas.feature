#language:pt

Funcionalidade: Tipos de Pesquisas

Esquema do Cenario: CT1-Pesquisa objetos no correios

Dado que eu acesse o endereço "https://rastreamento.correios.com.br/app/index.php"
Quando pesquiso por "<codigos>"
Então é exibido o código "<codTitulo>" da encomenda no título 

Exemplos:
| codigos       | codTitulo         |
| LE369601229SE | LE 369 601 229 SE |
| LB301974275HK | LB 301 974 275 HK |

@debug
Cenario: CT2-Pesquisa no google

Dado que eu acesse o endereço "https://www.google.com"
Quando pesquiso no google por "Banco Pan"
Então é exibido o site do banco pan
