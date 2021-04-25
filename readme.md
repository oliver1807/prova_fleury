Busca de Unidades pelo site do Fleury
Projeto desenvolvido para testes para pesquisa no site: https://www.fleury.com.br/

O projeto possui as seguintes funcionalidades:

 Acessa o site do Laboratorio Fleury
 Através da busca das Facilidades de unidade que atenda aos requisitos selecionados
 E retornada a Unidade específica pertinente as facilidades selecionadas.
Estrutura do projeto:
Desenvolvido no padrão page object
Possui relatório em formato html, com evidência dos testes em anexo (imagens) - Pasta reports
Configurado para rodar no navegador Chrome
Configurando o ambiente:
Antes de rodar os testes, por favor instale:

1.1 - [ruby] - Instalando ruby

Guia Instalando Ruby no Windows: https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95
Guia Instalando Ruby no Ubuntu: https://medium.com/qaninja/como-instalar-ruby-com-rbenv-no-ubuntu-a75d1999362b

2.1 - [Chrome_Driver] - Configurando navegador Chrome para rodar o testes:

Baixar o arquivo no site: http://chromedriver.chromium.org/downloads. Selecione a versão compatível com o seu sistema.
Navegue até a pasta onde realizou o download do arquivo e descompacte-o
Mover o arquivo descompactado para a seguinte pasta: Linux: “/usr/bin/” e para isso vamos executar o comando abaixo: sudo mv chromedriver /usr/bin/ Windows: C:/Windows

2.2 - [Geckodriver] - Configurando navegador Fifefox para rodar o testes:

Baixar o arquivo no site: https://github.com/mozilla/geckodriver/releases Selecione a versão compatível com o seu sistema.
Navegue até a pasta onde realizou o download do arquivo e descompacte-o
Mover o arquivo descompactado para a seguinte pasta: Linux: “/usr/bin/” e para isso vamos executar o comando abaixo: sudo mv geckodriver /usr/bin/ Windows: C:/Windows

Executando os testes:

3.1 - [Rodando os testes]

 - No terminal, na pasta do projeto, execute o seguinte comando que irá instalar as Gems do projeto: bundler install
 - Para rodar os testes execute o seguinte comando na pasta do projeto: cucumber