# language: pt_br  
# POPRH - Programa de Gerencimento de Task

Funcionalidade: Incluir Task no Programa de Gerencimento
    Eu como Usuário
    Desejo incluir uma Task no Programa
    A fim de manter a Task durante o programa de gerenciamento
	
	Esquema do Cenário: Incluir uma Task validando o preenchimento do nome da Task
    Dado o momento que eu abro a pagina inicial da aplicação
    #Quando clico no menu
    #Quando informo o nome da Task <task>
    #Quando tento salvar a Task
    #Entao <resultado>
    Exemplos: considera espaços à esquerda e a direita
       |  task                | resultado             |
       #| "Task 01"            | Successful inclusion! |
       #| "Task "              | Successful inclusion! |
       #| "Inclusao Task - 21 "| Successful inclusion! |
       #| "C%¨&Ç^`^^^"         | Successful inclusion! |	