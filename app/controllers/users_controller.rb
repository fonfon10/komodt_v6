class UsersController < InheritedResources::Base


def edit
	@user = User.find(params[:id])	
	@roles = Role.all.map { |i| [i.name, i.id]}

	
end


  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :role_id)
    end

end
