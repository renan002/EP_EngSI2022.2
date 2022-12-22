FactoryBot.define do
    factory :usuario_info do
        foto { "imagem" }
        idade { 25 }
        genero { "Homem/Cis" }
        telefone { "(11) 9 1111-1111)" }
    end
end