FactoryBot.define do
    factory :divida do
        nome { "Internet" }
        descricao { "Conta de consumo de internet" }
        periodo { "Mensal" }
        valor { "1.00" }
    end
end