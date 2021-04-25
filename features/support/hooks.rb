#Criando meu Hooks para suporte as instancias

Before do
    @busca_page = BuscaPage.new
end



#Setando na funcao de print e aqui estou criando uma condicao para anexar o print em uma pasta para testes positivos e outra pasta para testes negativos

require_relative 'helper.rb'
   After do |scenario|        
        @helper = Helper.new
        @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
        @helper.take_screenshot(@nome, 'screenshots/test_failed') if   scenario.failed?
        unless @helper.take_screenshot(@nome, 'screenshots/test_passed')
   end
end