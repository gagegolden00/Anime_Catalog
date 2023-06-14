class PasswordResetsController < ApplicationController
    
    def new
    end
    
    def edit
    end
  
    def create
    end
  
    def destroy
    end
  
    private
    def password_params
      params.permit(:user_id, :old_password, :new_password, :confirm_new_password)
    end
end

  
