
  Dado('que eu acesse o endereço {string}') do |url|
    @app.report.inserePasso 'Dado que eu acesei o edereço ' + url
    visit url
    @app.report.insereImagePrint(page.save_screenshot)
  end

  Quando('pesquiso por {string}') do |texto|
    @app.report.inserePasso 'Quando pesquiso por ' + texto
    @app.rastreamentoCorreiosPage.informaCodigoRastreamentoEPesquisa(texto)
    @app.report.insereImagePrint(page.save_screenshot)
  end

  Então('é exibido o código {string} da encomenda no título') do |codTitulo|
    @app.report.inserePasso 'Então é exibido o código '+codTitulo+' da encomenda no título'
    expect(page).to have_content codTitulo
    @app.report.insereImagePrint(page.save_screenshot)
  end

  Quando('pesquiso no google por {string}') do |texto|
   @app.report.inserePasso 'Quando pesquiso no google por '+texto
   @app.googlePage.insereTextoPesquisa(texto)
   @app.report.insereImagePrint(page.save_screenshot)
  end
  
  Então('é exibido o site do banco pan') do 
    @app.report.inserePasso 'Então é exibido o site do banco pan'
    sleep 2
    expect(page).to have_content 'https://www.bancopan.com.br'
    @app.report.insereImagePrint(page.save_screenshot)
  end