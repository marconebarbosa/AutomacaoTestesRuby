# Antes de cada teste
require_relative '../../core/report/ReportBase.rb'


Before do 
  @app = App.new #instancia as classes de app
 
  @report = ReportBase.new
  @report.insereCabecalho
  @report.insereDadosSistemaOuAmbiente
  #@report.insereNomeFuncionalidadeECenario(scenario.feature.name, scenario.name)

end

After do
  @report.geraArquivoPDF
  #@report.limpaVariavel
end