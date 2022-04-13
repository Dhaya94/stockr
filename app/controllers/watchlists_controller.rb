class WatchlistsController < ApplicationController
  before_action :check_for_login
  def index
    @watchlists = @current_user.watchlists
  end

  def new
    @watchlist = Watchlist.new
  end

  def create  
    watchlist = Watchlist.create watchlist_params   
    @current_user.watchlists << watchlist # Give the new watchlist to the user
    redirect_to watchlist
  end

  def edit   
    @watchlist = Watchlist.find params[:id] 
  end

  def update
    watchlist = Watchlist.find params[:id]
    watchlist.update watchlist_params
    redirect_to watchlist
  end

  def show
    @watchlist = Watchlist.find params[:id]
  end

  def destroy
    watchlist = Watchlist.find params[:id]
    watchlist.destroy
    redirect_to watchlists_path
  end

  private
  def watchlist_params
    params.require(:watchlist).permit(:name)
  end
end

