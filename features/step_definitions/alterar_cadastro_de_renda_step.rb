Dado ('tenho uma renda de ID {integer}, profissão {string}, empresa {string} e salário {string}') do |integer, string, string2, string3|
    @renda = Renda.new(user_id: integer, profissao: string, empresa: string2, salario: string)
    @renda.save
end

Dado ('estou na página de alteração de cadastro de uma dada renda de id {string}') do |id|
    visit '/rendas/{id}/edit'
end

Quando ( 'altero o campo de {string} com {string}' ) do |string, string2|
    fill_in string, :with => string2
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Quando('clico em Alterar Renda') do
    click_on 'Alterar renda'
end

Então ( 'sua renda editada de id {integer} contém {string} {string}' ) do |integer, string, string2 |
    renda = Renda.order(integer).last
    expect(renda.string).to eq(string2)
end

Então ( 'deverei ver a renda de profissão {string}, empresa {string} e salário {string} na lista de rendas do usuário' ) do |string1,string2,string3|
    expect(page).to have_content(string)
    expect(page).to have_content(string2)
    expect(page).to have_content(string3)
end