class UsersController < ApplicationController
  
  def my_portfolio
    # get two instance variables to views
    @user_stocks = current_user.stocks
    @user = current_user
  end
  
  def my_friends
    
  end
end