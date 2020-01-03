class Usuario < ApplicationRecord

	#encripta a senha no banco
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	#validações com a função validates
	validates :name, presence: true, length: {maximum: 255}
	validates :password, length: {minimum: 6}
	
	validates :email, presence: true, 
	length: {maximum: 255},
	#expressão regular para validação de email
	format: {with: VALID_EMAIL_REGEX},
	uniqueness:{case_sensitive: true}


end
