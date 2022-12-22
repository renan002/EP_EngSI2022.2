require 'rails_helper'
require 'spec_helper'
RSpec.describe Recurso, type: :model do
  it 'invalido sem nome' do
    recurso = Recurso.new
    recurso.valor = "R$ 1000,00"
    expect(recurso).not_to be_valid
  end
  it 'invalido sem valor' do
    recurso = Recurso.new
    recurso.nome = "Decimo terceiro"
    expect(recurso).not_to be_valid
  end
end
