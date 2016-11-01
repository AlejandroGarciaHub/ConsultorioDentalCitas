class RegistrationsController < Devise::RegistrationsController
	

  private

  def sign_up_params
    params.require(:user).permit(:nombre, :apellidos, :email,:sexo,:fecha_nac, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:nombre, :apellidos, :email,:sexo,:fecha_nac, :password, :password_confirmation, :current_password)
  end

  def set_admin
  	current_user.update_attribute :admin, true
  end
end