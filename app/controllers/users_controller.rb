class UsersController < ApplicationController

	def new
		#instanciamos um novo objeto para criação de usuario
		@user = Usuario.new
	end

	def create

	end
end
