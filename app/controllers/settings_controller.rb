class SettingsController < ApplicationController
    before_action :require_user_logged_in!
    
    def edit 
    end

    def update
        if Current.user.update(setting_params)
        redirect_to root_path, notice: "Saved recent changes."

        else
            render :edit
        end
    end

    private #helper method
    def setting_params
        params.require(:user).permit(:password, :password_confirmation, :name, :games_per_day)
    end
end
