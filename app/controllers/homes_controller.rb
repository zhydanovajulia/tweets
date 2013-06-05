class HomesController < TweetsController

  def show
    @tweets = params[:max_id].present? ? Twitter.user_timeline(screen_name: '@ciklum', max_id: params[:max_id], count: 21) :
                                           Twitter.user_timeline(screen_name: '@ciklum', count: 21)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @tweets = Twitter.user_timeline(screen_name: '@ciklum', since_id: params[:since_id])
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
