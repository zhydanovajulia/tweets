class HomesController < ApplicationController

  def show
    @tweets = params[:since_id].present? ? Twitter.user_timeline(screen_name: '@ciklum', since_id: params[:since_id]) :
                                           Twitter.user_timeline(screen_name: '@ciklum')
    respond_to do |format|
      format.html
      format.js
    end
  end
end
