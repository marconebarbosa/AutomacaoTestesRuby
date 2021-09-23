Before '@serverest' do

  @quantidade
  @usuarios

  body = {
    "nome": @nome,
    "email": @email,
    "password": @password,
    "startup": @administrador
  }

  @body = JSON.generate(body)

  @serverest = Serverest.new(@body)

end  