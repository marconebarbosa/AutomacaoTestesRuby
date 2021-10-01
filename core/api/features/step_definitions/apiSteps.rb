Dado('que possuo o endpoint {string}') do |urlFeature|
 @url = urlFeature
end

Quando('faco requisição get') do
 @response = HTTParty.get(@url)
end

Então('o codigo de resposta devera ser {string}') do |string|
    expect(@response.code).to eq(200)
end