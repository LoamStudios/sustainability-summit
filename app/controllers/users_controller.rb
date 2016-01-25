class UsersController < Clearance::UsersController
    def user_params
        params[:person] || Hash.new
    end
end
