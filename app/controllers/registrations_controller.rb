class RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    # flash[:notice] = "Account succesfully updated"
    profile_path
  
end

protected

def after_update_path_for(resource)
  profile_path

end
    
    private

    def sign_up_params
      params.require(:user).permit(:email,:password, :password_confirmation, :fname, :lname, :location, :title, :avatar)
      
    end
  
    def account_update_params
      params.require(:user).permit(:email,:password, :password_confirmation,:current_password, :fname, :lname, :location, :title, :avatar)
    end


end

#ran rails g controller registration then manually changer inheritance to Devise::RegistrationsController