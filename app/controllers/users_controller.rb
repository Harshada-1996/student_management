class UsersController<ApplicationController
    def index
        @user=User.all
    end    
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
     def update
        @user=User.find(params[:id])
          if @user.update(user_params)
            flash[:notice] = "User was successfully updated"
            redirect_to show
            # format.json { render :show, status: :ok, location: @subject }
          else
            render :edit 
          end
      end
     def user_params
         params.require(:user).permit(:uname, :uemail, :password)
     end
end