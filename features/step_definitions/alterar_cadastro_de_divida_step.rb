Dado ('tenho uma dívida de ID {integer}, nome {string}, descrição {string}, periodo de cobrança e valor {string}') do |integer, string, string2, string3, string4|
    @renda = Renda.new(user_id: integer, nome: string, descrição: string2, periodo: string3, valor: string4)
    @renda.save
end

Dado ('estou na página de alteração de cadastro de uma dada renda de id {string}') do |id|
    visit '/dividas/{id}/edit'
    # visit '/rendas/' + id + '/edit'
end

Quando ( 'altero o campo de {string} com {string}' ) do |string, string2|
    fill_in string, :with => string2
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Quando('clico em Alterar dívida') do
    click_on 'Alterar dívida'
end

Então ( 'sua dívida editada de id {integer} contém {string} {string}' ) do |integer, string, string2 |
    divida = Divida.order(integer).last
    expect(divida.string).to eq(string2)
end

Então ( 'deverei ver a dívida de nome {string}, descrição {string}, periodo de cobrança {string} e valor {string} na lista de dívidas do usuário' ) do |string1,string2,string3,string4|
    expect(page).to have_content(string)
    expect(page).to have_content(string2)
    expect(page).to have_content(string3)
    expect(page).to have_content(string4)
end