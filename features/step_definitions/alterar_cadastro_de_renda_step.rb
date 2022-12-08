Dado('tenho uma renda de ID {string}, profissão {string}, empresa {string} e salário {string}') do |string, string2, string3, string4|
    @renda = create(:renda)
    @renda.save

end

Dado('estou na página de alteração de cadastro de uma dada renda de id {string}') do |string|
    visit renda_url(Renda.find(string))
end

Quando('altero o campo da renda {string} com {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('deixo o campo da renda {string} vazio') do |string|
    fill_in string, :with => ""
end

Quando('clico em Alterar Renda') do
    click_on 'Alterar renda'
end

Então('a renda editada de id {string} contém {string} de valor {string}' ) do |string, string2, string3 |
    renda = Renda.order(string).last
    expect(renda.string2).to eq(string3)
end

Então('deverei ver a renda de profissão {string}, empresa {string} e salário {string} na lista de rendas do usuário' ) do |string1, string2, string3|
    expect(page).to have_content(string)
    expect(page).to have_content(string2)
    expect(page).to have_content(string3)
end