class UsersController < ApplicationController

def new
end

def create 
@user = User.new(params[:user].permit(:email))
if @user.save 
redirect_to action: :show, id: @user.id
else 
render 'new'
end 
end 

def show
@user = User.find(params[:id])
end

def index
@user = User.all
end

end
