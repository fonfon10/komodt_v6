class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :role_id)
    end

end
