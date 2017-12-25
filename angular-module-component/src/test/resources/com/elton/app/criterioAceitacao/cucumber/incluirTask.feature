# language: pt_br  
# TASK - Aplicação de gerenciamento de Tarefas - 001

Funcionalidade: Incluir uma Task da aplicação
    Eu como usuário
    Desejo Incluir uma Task da aplicação
    A fim de manter a Task para futuros planos de ações da aplicação
				
	Esquema do Cenário: Incluir uma Task validando o preenchimento do nome da Task
    Dado o momento que eu abro a pagina de listagem da aplicação
    Quando eu clico no botão criar task
    Quando informo o nome da Task <task>
    Quando informo a data de criação <startDate>
    Quando tento salvar a task
    Entao <resultado>
    Exemplos: considera espaços à esquerda e a direita
       | task                    | startDate    | resultado                        |
       | "TASK 2015"             | "15/05/2010" | A Task foi incluída com sucesso. |
       | "32323"                 | "15/05/2011" | A Task foi incluída com sucesso. |
       | "INCLUSÃO task - 32323" | "15/05/2012" | A Task foi incluída com sucesso. |
       | "C%¨&Ç^`^^^"            | "15/05/2013" | A Task foi incluída com sucesso. |
       
    Esquema do Cenário: Incluir uma Task na aplicação validando regras de preenchimento 
 	Dado o momento que eu abro a pagina de listagem da aplicação
 	Quando eu clico no botão criar task
    Quando eu informo nome <nome> e a data de criação <startDate>
    Quando tento salvar a task
	Entao <resultado>
	Exemplos: considera espaços à esquerda e a direita
       | nome      | startDate    | resultado                        |
       | " "       | "15/05/2010" | falha:Name is Required.          |
       | "Tasl 2"  | " "          | falha:Start Date is Required.    |
       | "Task "   | "15/05/2018" | A Task foi incluída com sucesso. |
    
  