class WelcomeController < ApplicationController
	
 before_action :set_admin
  def index
  end

  private

  def set_admin
  	current_user.update_attribute :admin, true
  end
end
