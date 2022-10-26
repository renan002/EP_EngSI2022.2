require 'rails_helper'

RSpec.describe Objetivo, type: :model do
  it 'invalido sem título' do
    objetivo = Objetivo.new
    objetivo.titulo = "Título"
    expect(objetivo).not_to be_valid
  end
  it 'invalido sem descricao' do
    objetivo = Objetivo.new
    objetivo.descricao = "Descrição do objetivo"
    expect(objetivo).not_to be_valid
  end
end
