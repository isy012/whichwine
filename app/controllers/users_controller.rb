class UsersController < ApplicationController

def new

end

def create 
@user = User.new(params[:user].permit(:name, :email))
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
if params[:search]
@user = User.search(params[:search])
else

@user = User.all
end

end

def edit
@user = User.find(params[:id])
end

def update 
@user = User.find(params[:id])
if @user.update(params[:user].permit(:name, :email))
redirect_to @user
else
render 'edit'
end
end

end
