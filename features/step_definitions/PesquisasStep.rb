Dado('que eu acesse o endereço {string}') do |url|
  @report.inserePasso 'Dado que eu acesei o edereço ' + url
  visit url
  @report.insereImagePrint(page.save_screenshot('./logs/screenshots/screenshot.png'))
end

Quando('pesquiso por {string}') do |texto|
  @report.inserePasso 'Quando pesquiso por ' + texto
  @app.rastreamentoCorreiosPage.informaCodigoRastreamentoEPesquisa(texto)
  @report.insereImagePrint(page.save_screenshot('./logs/screenshots/screenshot.png'))
end

Então('é exibido o código {string} da encomenda no título') do |codTitulo|
  @report.inserePasso 'Então é exibido o código '+codTitulo+' da encomenda no título'
  expect(page).to have_content codTitulo
  @report.insereImagePrint(page.save_screenshot('./logs/screenshots/screenshot.png'))
end

Quando('pesquiso no google por {string}') do |texto|
  @report.inserePasso 'Quando pesquiso no google por '+texto
  @app.googlePage.insereTextoPesquisa(texto)
  @report.insereImagePrint(page.save_screenshot('./logs/screenshots/screenshot.png'))
end

Então('é exibido o site do banco pan') do 
  @report.inserePasso 'Então é exibido o site do banco pan'
  sleep 2
  expect(page).to have_content 'https://www.bancopan.com.br'
  @report.insereImagePrint(page.save_screenshot('./logs/screenshots/screenshot.png'))
end