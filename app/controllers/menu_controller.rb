class MenuController < ApplicationController
  def index
  end
  def new
      respond_to do |format|
      format.html { redirect_to new_user_session_path }
      format.js { }
      end
  end
end
