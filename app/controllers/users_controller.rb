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
    @backed_projects = BackedProject.all
    @project = Project.all
    @user = User.find(params[:id])
  end

  def campaigns
    @backed_projects = BackedProject.all
    @project = Project.all
    @user = User.find(params[:id])
  end

  def u_wishlists
    @user = User.find(params[:id])
    @backed_projects = BackedProject.all
    @project = Project.all
    @wishlists = Wishlist.all
  end

  def u_bank_accounts
    @user = User.find(params[:id])
    @bank_accounts = BankAccount.all
  end

  def admin
  end

  def user_params
    params.require(:user).permit(:image)
  end



end
