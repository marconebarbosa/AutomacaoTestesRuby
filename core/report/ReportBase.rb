require "Prawn"

class ReportBase

#Definições do layout do arquivo
    PDF_OPTIONS = {
        :page_size   => "A4",
        :page_layout => :landscape,
        :margin      => [10, 20]
    }

def initialize
  @pdf = Prawn::Document.new(PDF_OPTIONS)
end

#Atributos da classe
#attr_acessor :tipoTeste

  def insereCabecalho
    @pdf.text "EVIDÊNCIA DE TESTE WEB"
    @pdf.move_down 10
  end

  def insereDadosSistemaOuAmbiente
    @pdf.text Time.now.strftime("%d/%m/%Y %H:%M")
    @pdf.text "Browser:"
    @pdf.text "Versão:"
  end

  def insereNomeFuncionalidadeECenario(nomeFuncionalidade,nomeCenario)
    @pdf.move_down 20
    @pdf.text nomeFuncionalidade
    @pdf.move_down 10
    @pdf.text nomeCenario
    @pdf.text "Criticidade:"
  end

  def inserePasso(passo)
    @pdf.move_down 10
    @pdf.text passo
  end

  def insereScript(script)
    @pdf.text "Script: "
  end

  def insereImagePrint(image)
    @pdf.move_down 5
    @pdf.image(image,scale:0.30)
  end

  def insereStatus
    @pdf.move_down 30
    @pdf.text "TESTE APROVADO OU REPROVADO"
  end

  def inserelogsDaFalha
    @pdf.move_down 20
    @pdf.text "Logs da falha"
  end

  def geraArquivoPDF
    @pdf.render_file('C:\PAN\githubMarcone\AutomacaoTestesRuby\logs\reports\ ' + Time.now.strftime("%d_%m_%Y%H_%M_%S") + '.pdf')
  end

  def limpeza
    #Confirmar se não está deletando os arquivos git
    #FileUtils.rm_rf(Dir.glob('./logs/screenshots/'))
    #FileUtils.rm_rf(Dir['./logs/screenshots/'])"
  end

end