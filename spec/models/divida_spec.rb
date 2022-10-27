require 'rails_helper'
require 'spec_helper'
RSpec.describe Divida, type: :model do
  it 'invalido sem nome' do
    divida = Divida.new
    divida.descricao = "Aluguel de residência atual"
    divida.periodo = "Mensal"
    divida.valor = "R$ 1000,00"
    expect(divida).not_to be_valid
  end
  it 'invalido sem periodo' do
    divida = Divida.new
    divida.nome = "Aluguel"
    divida.descricao = "Aluguel de residência atual"
    divida.valor = "R$ 1000,00"
    expect(divida).not_to be_valid
  end
  it 'invalido sem valor' do
    divida = Divida.new
    divida.nome = "Aluguel"
    divida.descricao = "Aluguel de residência atual"
    divida.periodo = "Mensal"
    expect(divida).not_to be_valid
  end
end
