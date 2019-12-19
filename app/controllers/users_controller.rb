class UsersController<ApplicationController
    def show
        @user=User.find(params[:id])
     end    
     def new
         @user=User.new
     end    
     def create
         @user = User.new(user_params)
         if @user.save
             flash[:notice] = "User was successfully created"
             redirect_to user_path(@user)
         else 
             render 'new'
         end
     end
     def user_params
         params.require(:user).permit(:uname, :uemail)
     end
end