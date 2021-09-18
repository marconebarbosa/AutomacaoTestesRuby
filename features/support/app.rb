# Instanciando as paginas


class App
  def googlePage
    GooglePage.new
  end

  def rastreamentoCorreiosPage
    RastreamentoCorreiosPage.new
  end

  def report
    ReportBase.new
  end
end