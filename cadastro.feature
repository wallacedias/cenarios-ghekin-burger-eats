# language: pt-br

Funcionalidade: Cadastro
    Como usuário/entregador do BugerEats
    Para realizar entregas, desejo realizar o cadastro para ter acesso ao sistema


@Login
Cenário: Cadastro com sucesso
    Dado que estou na tela principal
    E clico no botão Cadastre-se para fazer entregas 
    E inseri todas as informações do formulário corretas
    Quando clicar no botão de Cadastre-se para fazer entregas
    Então deverá exibir um alerta com a seguinte mensagem "Aí Sim... Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato."

 Cenário: Página de cadastro deverá exibir alerta de obrigatóriedade
    Dado que estou na tela de cadastro
    E clico em Cadastre-se para fazer entregas 
    Então a página de cadastro deve exibir uma mensagem de obrigatóriedade embaixo dos campos

Cenário: Documento incorreto/ em branco
    Dado que estou na tela de cadastro
    Quando preencho o campo CPF '<cpf>'
    E clico no botão Cadastre-se para fazer entregas 
    Então deverá exibir a '<mensagem>'

Exemplos:
    | cpf          | mensagem                    |
    |  444946485XX | Oops! CPF inválido          |
    |              | É necessário informar o CPF |

Cenário: Email incorreto/ em branco
    Dadi que estou na tela de Cadastro
    Quando preencho o campo Email '<email>' 
    E clico no botão Cadastre-se para fazer entregas 
    Então deverá exibir a <'mensagem'>

Exemplos:
    | email                | mensagem                         |
    |  email.incorreto.com | Oops! Email com formato inválido.|
    |                      | É necessário informar o email    |

Cenário: Página de cadastro deverá exibir mensagem de obrigatóriedade caso o Nome esteja em branco
    Dado que sou um novo usuário
    Quando eu navegar para a página de cadastro
    E não inseri a informação de Nome
    Quando clicar no botão Cadastre-se para fazer entregas 
    Então deverá aparecer uma mensagem 'É necessário informar o nome' embaixo do campo Nome
    
Cenário: CEP incorreto/ em branco
    Dado que estou na tela de cadastro
    Quando preencho o campo CEP '<cep>'
    E clico no botão Buscar CEP
    Então deverá exibir a '<mensagem>'

Exemplos:
    | cep          | mensagem                    |
    |  1409101X    | Oops! CPF inválido          |    
    |              | Oops! CPF inválido          |


Cenário: Página de cadastro deverá exibir mensagem de obrigatóriedade caso o CEP esteja em branco
    Dado que sou um novo usuário
    Quando eu navegar para a página de cadastro
    E não inseri a informação de CEP
    Quando clicar no botão Cadastre-se para fazer entregas 
    Então deverá aparecer uma mensagem 'É necessário informar o CEP' embaixo do campo CEP    


Cenário: Página de cadastro deverá exibir mensagem de obrigatóriedade caso o Número do endereço esteja em branco
    Dado que sou um novo usuário
    Quando eu navegar para a página de cadastro
    E não inseri a informação de Número do endereço
    Quando clicar no botão Cadastre-se para fazer entregas 
    Então deverá aparecer uma mensagem 'É necessário informar o número do endereço' embaixo do campo Número do endereço


Cenário: Página de cadastro deverá exibir mensagem de obrigatóriedade caso o Método de entrega não esteja selecionado
    Dado que sou um novo usuário
    Quando eu navegar para a página de cadastro
    E não selecionei o método de entrega
    Quando clicar no botão Cadastre-se para fazer entregas 
    Então deverá aparecer uma mensagem 'Selecione o método de entrega' embaixo do campo Número do endereço    

Cenário: Página de cadastro deverá exibir mensagem de obrigatóriedade caso a foto da CNH não esteja adicionada
    Dado que sou um novo usuário
    Quando eu navegar para a página de cadastro
    E não adicionei a foto da CNH
    Quando clicar no botão Cadastre-se para fazer entregas 
    Então deverá aparecer uma mensagem 'Adicione uma foto da sua CNH' embaixo do campo