class HomesController < ApplicationController

  def show
    @tweets = params[:max_id].present? ? Twitter.user_timeline(screen_name: '@ciklum', max_id: params[:max_id], count: 21) :
                                           Twitter.user_timeline(screen_name: '@ciklum', count: 21)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
