class FrienshipsController < ApplicationController
  
  def destroy
    @friendship = current_user.friendships.where(friend_id:param[:id]).first
    @friendship.destroy
    respond_too do |format|
      format.html { redirect_to my_friends_path, notice: "friend was successfully removed"}
    end
  end
  
  def show
    @user = User.find(params[:id])
    @user_stocks = @user.user_stocks
  end
  
  
  
end