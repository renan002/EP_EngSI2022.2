Dado ('que sou um usuário com login realizado na plataforma') do
    pending # Write code here that turns the phrase above into concrete actions
end

Dado ('que estou na página de cadastro de renda') do
    visit '/renda/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
end

Quando('clico em "Adicionar renda"') do
    click_on 'Adicionar renda'
end

Então('ele deve ter sido salvo no banco de dados') do
    aluno = Renda.order("id").last
    expect(aluno.nome).to eq('Analista de Sistemas')
    expect(aluno.email).to eq('Google')
    expect(aluno.email).to eq('1000') 
end

Então('deverei ver a renda na lista de rendas do usuário') do
    expect(page).to have_content('Analista de Sistemas')
    expect(page).to have_content('Google')
    expect(page).to have_content('1000')
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
end