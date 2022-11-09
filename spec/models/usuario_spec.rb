require 'rails_helper'

RSpec.describe Usuario, type: :model do
  it 'invalido sem email' do
    u = Usuario.new
    u.nome = "teste@gmail.com"
    expect(u).not_to be_valid
  end

  it 'invalido com email com formato invalido' do
    u = Usuario.new
    u.nome= "joao" 
    u.email = "a,@gmail.com"    
    expect(u).not_to be_valid
  end
end
