#language: pt

Funcionalidade: Usuarios do ServerRest

Cenario: Obter quantidade de usuários cadastrados 

Dado que possuo o endpoint "/usuarios" 
Quando faco requisição get
Então é retornado a quantidade de usuários


#Cenario: validar pesquisa por id 

#Dado que possuo o endpoint "/usuarios" 
#E possuo o id "0uxuPY0cbmQhpEz1" que desejo informar como parametro
#Quando faco requisição get informando os parametros
#Então é retornado a quantidade de '1'
#E o id deve ser igual a "0uxuPY0cbmQhpEz1"

