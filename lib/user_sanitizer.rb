class User::ParameterSanitizer < Devise::ParameterSanitizer
  #custom built file for added permissions and custom fields....replaces attr_accessible in user.rb  
  # grab from => devise / lib / devise / parameter_sanitizer.rb
    private
  
    def sign_up
      default_params.permit(auth_keys + [:password, :password_confirmation, :email, :remember_me, 
                                          :first_name, :last_name, :profile_name])
    end
end