class RegistraionsController < Devise::RegistraionsController
	# overriding the currrent classes only with (name) cause name is not apart of in-built devise
	private
	def sign_up_params
		params.require(:enter).permit(:name,:email,:passsword,:password_confirmation)
	end
	def account_update_params
		params.require(:enter).permit(:name,:email,:passsword,:password_confirmation,:password_confirmation)
	end
end