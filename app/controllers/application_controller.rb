class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from StandardError, with: :something_went_wrong

  private

  def something_went_wrong
    respond_to do |format|
      format.html { render "public/500.html", status: 500 }
    end
  end
end
