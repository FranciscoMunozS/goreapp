class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @guarantees = Guarantee.all.order("created_at DESC")
  end
end
