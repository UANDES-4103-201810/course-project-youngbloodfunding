class UsersController < ApplicationController

=begin
  before_filter :authenticate_admin!, :except => [:show]
=end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def contributions
    @user = User.find(params[:id])
  end

  def campaigns
    @user = User.find(params[:id])
  end

  def wishlists
    @user = User.find(params[:id])
  end

end