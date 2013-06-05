class FavoritesController < TweetsController

  def index
    @tweets = Twitter.favorites

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @id = params[:id]
    Twitter.favorite params[:id]
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @id = params[:id]
    Twitter.unfavorite params[:id]
    respond_to do |format|
      format.js
    end
  end
end
