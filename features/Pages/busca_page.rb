class BuscaPage <SitePrism::Page
    
    include Capybara::DSL
    set_url CONFIG['url']

    element :lk_unidade, 'a[class*="unidades"]'
    element :lk_facilidades, 'div[class*="7ktrvg-0 ijWekg"]>div[id*="facilities"]>svg'
    element :btn_compliance, 'div[class*="compliance"]'
    element :option_acessbilidade, 'div[class*="1mdajsk-0 DRDNI"]>label[for="_Acessibilidade"]'
    element :option_noturno, 'div[class*="1mdajsk-0 DRDNI"]>label[for="_Atendimento noturno"]'
    element :option_domingos, 'div[class*="1mdajsk-0 DRDNI"]>label[for="_Atendimento aos domingos"]'    
    element :combo,  'div[class*="7ktrvg-2 jgzIlF"'
    element :result_unid,  'div[class*="eYPaKj"]>div:first-of-type[class*="kCjJNl"]'  #essa inspecao é do resultado do primeiro resultado da busca
    element :clk_detalhe,  'div[class*="eYPaKj"]>div:first-of-type[class*="kCjJNl"]>div>div[class*="fqDNCQ"]>div>a[id*="button"]'
    element :btn_topo, 'button[id="button-goto-top"]'
    element :salve, 'div[class*="eYPaKj"]>div[class*="dsZazA"]>label[class*="hwutpP"]>a[id*="breaccrumb-0"]'
    element :unidetalhe, 'div[class*="efEBCe"]>div[class*="bmAjeB"]>h1[class*="lomAMa"]'    

    def click_unidades  
        lk_unidade.click        
    end

    def sel_facilidades        
        btn_compliance.click
        lk_facilidades.click
        option_acessbilidade.click
        option_noturno.click
        option_domingos.click
        combo.click
        resultado = (result_unid).text #aqui estou puxando o testo do primeiro resultado da busca após a pesquisa
        result2 = resultado.split("\n")  #Como o resultado traz todos os dados da unidade, estou quebrando as infomrações pelo \n do html para catalogar no result2 
        unidade,edereco =  result2 #aqui é anexado o nome da unidade e o endereco apenas para ativar a quebra
        $unidade_obtida = unidade                        
    end

    def click_detalhes        
        clk_detalhe.click                        
    end

    def colect_unid                                                  
        $unidetalhe = unidetalhe.text        
    end
end