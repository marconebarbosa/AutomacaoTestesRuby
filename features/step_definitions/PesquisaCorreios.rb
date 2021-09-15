

  Dado('que eu acesse o endereço {string}') do |url|
      visit url
  end
  
  Quando('pesquiso por {string}') do |texto|
     rastreamento = rastreamentoCorreiosPage.new
     rastreamento.informaCodigoRastreamentoEPesquisa(texto) 
  end
  
  Então('é exibido uma lista com os resultados') do
    expect(page).to have_content 'LE 369 601 229 SE'
  end