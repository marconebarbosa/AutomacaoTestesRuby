class Serverest
  include HTTParty
  require_relative '../support/hooks'

  base_uri "https://serverest.dev/"

  def initialize(body,query)
    @options = {:body => body}
    @params = {:query => query}
  end

  def getUsuarios

    self.class.get(endpoint + 'usuarios' )
  end
end