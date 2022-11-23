FactoryBot.define do
    factory :usuario do
        nome { "Joao" }
        email { "joaon@usp.br" }
        password { "joao123" }
        password_confirmation { "joao123" }
    end
end