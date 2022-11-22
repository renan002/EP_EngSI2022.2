class Renda < ApplicationRecord
    validates :profissao, presence: { message: "É obrigatório informar a profissão!" }
    validates :empresa, presence: { message: "É obrigatório informar a empresa!" }
    validates :salario, presence: { message: "É obrigatório informar o salário!" }, format: { :with => /\A(?=.*[1-9])\d*(?:\.\d{1,2})\z/, message: "Formato de salário inválido!" }
end
