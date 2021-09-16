class GooglePage

    include Capybara::DSL #migrar para core
    
    def insereTextoPesquisa(texto)
        find('input[name=q]').set texto
        click_button 'btnK'
    end 

end