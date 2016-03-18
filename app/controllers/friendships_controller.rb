class FrienshipsController < ApplicationController
  
  def destroy
    @friendship = current_user.friendships.where(friend_id:param[:id]).first
    @friendship.destroy
    respond_too do |format|
      format.html { redirect_to my_friends_path, notice: "Friend was successfully removed"}
    end
  end

end