class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def linkedin
        # You need to implement the method below in your model (e.g. app/models/user.rb)
        @user = User.from_omniauth(request.env['omniauth.auth'])
        
        puts "**************"
        puts @user
        puts "**************"
        
        puts "::::::::::: PERSISTED: #{@user.persisted?} ::::::::::::::::"

        if @user
        #   flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
          sign_in_and_redirect @user, event: :authentication
        else
          session['devise.linkedin_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
          redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
        end
    end


end 