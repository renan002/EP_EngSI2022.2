class UsuarioInfo < ApplicationRecord
    validates :foto, presence: { message: "É obrigatório informar a profissão!" }, length: {maximum: 500, message: "Deve ter no máximo 500 caracteres"}
    validates :idade, presence: { message: "É obrigatório informar a profissão!" }, length: {maximum: 3, message: "Deve ter no máximo 3 dígitos"}, format: { :with => /\A(?=.*[1-9])\d*(?:(\.|,)\d{1,2})?\z/, message: "Formato de idade inválida!" }
    validates :genero, presence: { message: "É obrigatório informar a profissão!" }, length: {maximum: 20, message: "Deve ter no máximo 20 caracteres"}
    validates :telefone, presence: { message: "É obrigatório informar a profissão!" }, length: {maximum: 50, message: "Deve ter no máximo 50 caracteres"}
end
