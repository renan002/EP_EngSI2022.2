class Objetivo < ApplicationRecord
    validates :titulo, presence: { message: "É obrigatório informar um nome." }
    validates :descricao, presence: { message: "É obrigatório informar um periodo de cobrança." }
end
