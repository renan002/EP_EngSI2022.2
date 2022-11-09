class Usuario < ActiveRecord::Base
    has_secure_password
    validates :nome, presence: {message: "É obrigatório informar seu nome."}, length: {maximum: 50}
    validates :password, presence: {message: "É obrigatório informar uma senha."}, length: {minimum: 6}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: {message: "É obrigatório informar seu email."}, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    before_save { self.email = email.downcase }
end
