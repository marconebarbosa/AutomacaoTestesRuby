  Dado('que eu acesse o endereço {string}') do |url|
      visit url
  end
  
  Quando('pesquiso por {string}') do |texto|
     rastreamento = RastreamentoCorreiosPage.new
     rastreamento.informaCodigoRastreamentoEPesquisa(texto) 
     
  end

  Então('é exibido o código {string} da encomenda no título') do |codTitulo|
    expect(page).to have_content codTitulo
  end


  Quando('pesquiso no google por {string}') do |texto|
   google = GooglePage.new
   google.insereTextoPesquisa(texto)
  end
  
  Então('é exibido o site do banco pan') do
    expect(page).to have_content 'https://www.bancopan.com.br'
  end