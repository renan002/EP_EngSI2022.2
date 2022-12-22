class Recurso < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar um nome." }
    validates :valor, presence: { message: "É obrigatório informar um valor." }, format: { :with => /\A(?=.*[1-9])\d*(?:(\.|,)\d{1,2})?\z/, message: "Formato de recurso inválido!" }
end
