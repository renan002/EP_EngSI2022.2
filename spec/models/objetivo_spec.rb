require 'rails_helper'

RSpec.describe Objetivo, type: :model do
  it 'invalido sem titulo' do
    objetivo = Objetivo.new
    objetivo.descricao = "Comprar primeiro imovel que vai esta localizado em São Paulo"
    expect(objetivo).not_to be_valid
  end
  it 'invalido sem descricao' do
    divida = Divida.new
    objetivo = Objetivo.new
    objetivo.titulo = "Casa própria"
    expect(objetivo).not_to be_valid
  end
end