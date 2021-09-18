# Antes de cada teste
require_relative '../../core/report/ReportBase.rb'

Before do
  @app = App.new #instancia as classes de app

  @app.report.insereCabecalho
  @app.report.insereDadosSistemaOuAmbiente
  @app.report.insereDadosFuncionalidadeECenario

end

After do
  @app.report.geraArquivoPDF
  @app = nil
end