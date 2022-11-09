require 'rails_helper'
require 'spec_helper'

RSpec.describe Renda, type: :model do
  it 'invalido sem profissão' do
    renda = Renda.new
    renda.empresa = "Google"
    renda.salario = "1000"
    expect(renda).not_to be_valid
  end

  it 'invalido sem empresa' do
    renda = Renda.new
    renda.profissao = "Analista de Sistemas"
    renda.salario = "1000"
    expect(renda).not_to be_valid
  end

  it 'invalido com salario em formato invalido' do
    renda = Renda.new
    renda.profissao = "Analista de Sistemas"
    renda.empresa = "Google"
    renda.salario = "1000 reais" 
    expect(renda).not_to be_valid
  end

  it 'invalido com salario negativo' do
    renda = Renda.new
    renda.profissao = "Analista de Sistemas"
    renda.empresa = "Google"
    renda.salario = "-10"
    expect(renda).not_to be_valid
  end

  it 'invalido com salario zero' do
    renda = Renda.new
    renda.profissao = "Analista de Sistemas"
    renda.empresa = "Google"
    renda.salario = "0"
    expect(renda).not_to be_valid
  end
end
