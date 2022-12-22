require 'rails_helper'
require 'spec_helper'

RSpec.describe UsuarioInfo, type: :model do
  it 'invalido sem foto' do
    u = UsuarioInfo.new
    u.idade = "25"
    u.genero = "Homem/Cis"
    u.telefone = "(11) 9 1111-1111"
    expect(u).not_to be_valid
  end

  it 'invalido sem idade' do
    u = UsuarioInfo.new
    u.foto = "imagem"
    u.genero = "Homem/Cis"
    u.telefone = "(11) 9 1111-1111"
    expect(u).not_to be_valid
  end

  it 'invalido idade negativa' do
    u = UsuarioInfo.new
    u.foto = "imagem"
    u.idade = "-25"
    u.genero = "Homem/Cis"
    u.telefone = "(11) 9 1111-1111"
    expect(u).not_to be_valid
  end

  it 'invalido sem genero' do
    u = UsuarioInfo.new
    u.foto = "imagem"
    u.idade = "25"
    u.telefone = "(11) 9 1111-1111"
    expect(u).not_to be_valid
  end

  it 'invalido sem telefone' do
    u = UsuarioInfo.new
    u.foto = "imagem"
    u.idade = "25"
    u.genero = "Homem/Cis"
    expect(u).not_to be_valid
  end
end
