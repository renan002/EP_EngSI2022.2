class Usuario < ActiveRecord::Base
    has_secure_password
    validates :nome, presence: {message: "É obrigatório informar seu nome."}, length: {maximum: 50, message: "Nome deve ter no máximo 50 caracteres."}
    validates :password, presence: {message: "É obrigatório informar uma senha."}, length: {minimum: 6, message:"Senha deve ter no mínimo 6 caracteres."}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: {message: "É obrigatório informar seu email."}, length: {maximum: 260, message: "E-mail deve ter no máximo 260 caracteres."}, format: { with: VALID_EMAIL_FORMAT, message: "E-mail deve estar em formato válido."}, uniqueness: {case_sensitive: false}
    before_save { self.email = email.downcase }
end
