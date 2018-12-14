class FriendshipsController < ApplicationController
  
def destroy
  @friend = User.find(params[:id]) 
  @friendship = Friendship.where(friend_id: @friend.id).first
  @friendship.destroy!
  flash[:notice] = "Friend was succesfully removed"
  redirect_to my_friends_path
end
  
end