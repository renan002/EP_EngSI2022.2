Dado('que sou um usuário com login realizado na plataforma') do
    visit '/usuarios/new'
    fill_in "Nome", :with => "Test User"
    fill_in "Email", :with => "teste@gmail.com"
    fill_in "Password", :with => "123456"
    fill_in "Password confirmation", :with => "123456"
    click_on "Cadastrar"
end

Dado('estou na página de cadastro de renda') do
    visit '/rendas/new'
end

Quando('preencho o campo de renda {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
end

Quando('clico em Adicionar Renda') do
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

Então('sua renda é cadastrada no banco de dados referente ao seu usuário') do
    expect(page).not_to have_content('É obrigatório informar a profissão!')
    expect(page).not_to have_content('É obrigatório informar a empresa!')
    expect(page).not_to have_content('É obrigatório informar o salário!')
    expect(page).not_to have_content('Formato de salário inválido!')
end

Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end

Então('deverei ver a mensagem de erro de rendas {string}') do |string|
    expect(page).to have_content(string)
end