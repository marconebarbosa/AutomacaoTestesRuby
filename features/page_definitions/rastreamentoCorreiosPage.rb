class RastreamentoCorreiosPage

    include Capybara::DSL

    def informaCodigoRastreamentoEPesquisa(codigo)
        find('input[id=objeto]').set codigo
        click_button 'b-pesquisar'
    end 
end