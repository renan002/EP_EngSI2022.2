Dado ('tenho uma dívida de ID {string}, nome {string}, descrição {string}, periodo de cobrança {string} e valor {string}') do |string, string2, string3, string4, string5|
    @divida = create(:divida)
    @divida.save
end

Dado ('estou na página de alteração de cadastro de uma dada dívida de id {string}') do |string|
    visit divida_url(Divida.find(string))
end

Quando ('altero o campo da dívida {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('deixo o campo da dívida {string} vazio') do |string|
    fill_in string, :with => ""
end

Quando('clico em Alterar Dívida') do
    click_on 'Alterar dívida'
end

Então ( 'a dívida editada de id {string} contém {string} de valor {string}' ) do |string, string2, string3 |
    divida = Divida.order(string).last
    expect(divida.string2).to eq(string3)
end

Então ( 'deverei ver a dívida de nome {string}, descrição {string}, periodo de cobrança {string} e valor {string} na lista de dívidas do usuário' ) do |string, string2, string3, string4|
    expect(page).to have_content(string)
    expect(page).to have_content(string2)
    expect(page).to have_content(string3)
    expect(page).to have_content(string4)
end