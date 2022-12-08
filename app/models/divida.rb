class Divida < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar um nome." }
    validates :periodo, presence: { message: "É obrigatório informar um periodo de cobrança." }
    validates :valor, presence: { message: "É obrigatório informar um valor." }, format: { :with => /\A(?=.*[1-9])\d*(?:(\.|,)\d{1,2})?\z/, message: "Formato de salário inválido!" }
end
