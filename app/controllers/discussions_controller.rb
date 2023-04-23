class DiscussionsController < ApplicationController
  before_action :check_for_login

  def new
    @discussion = Discussion.new
  end

  def create
    discussion = Discussion.create discussion_params
    note = Note.find params[:note_id]
    note.discussions << discussion
    @current_user.discussions << discussion
    redirect_back(fallback_location: root_path)
  end

  def index
  end

  def show
    @discussions = Discussion.all
  end

  def edit
    @discussion = Discussion.find params[:id]
  end

  def destroy
    discussion = Discussion.find params[:id]
    discussion.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def discussion_params
    params.require(:discussion).permit(:message)
  end
end
