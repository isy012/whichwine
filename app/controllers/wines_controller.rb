class WinesController < ApplicationController

def new
end

def create 
#render text: params[:wine].inspect
@user = User.find(params[:user_id])
@wine = @user.wines.create(params[:wine].permit(:title, :text, :vineyard, :year))
if @user.save 
redirect_to action: :index, id: @user.id
else 
render 'new'
end 
end 

def show
@user = User.find(params[:user_id])
@wine = @user.wines.find(params[:id])
end

def index
@user = User.find(params[:user_id])
@wine = @user.wines.all
#@wine = Wine.all
end

def edit
@user = User.find(params[:user_id])
@wine = @user.wines.find(params[:id])
#@wine = Wine.find(params[:id])
end

def update 
@user = User.find(params[:user_id])
@wine = Wine.find(params[:id])
if @wine.update(params[:wine].permit(:title, :text, :vineyard, :year))
redirect_to action: :index, id: @user.id
else
render 'edit'
end
end

end
