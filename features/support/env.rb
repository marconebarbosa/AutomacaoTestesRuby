# Imporntando bibliotecas
require 'capybara'
require 'capybara/cucumber'

# Configurando o driver
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.run_server  =  false
  config.default_max_wait_time  =  10   # Tempo máximo que a automação vai esperar para a página carregar ou esperar um elemento
  Capybara.page.driver.browser.manage.window.maximize   # Maximizando a tela
end

