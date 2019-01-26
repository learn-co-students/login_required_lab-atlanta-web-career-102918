class SessionsController < ApplicationController

def create
  redirect_to controller: 'sessions', action: 'new' if !params[:name] || params[:name].empty?
  session[:name] = params[:name]
  # redirect_to controller: 'application', action: 'hello'
  redirect_to controller: 'application', action: 'hello'
end

def new
end

def destroy
  session.delete :name
  redirect_to controller: 'application', action: 'hello'
end

end
