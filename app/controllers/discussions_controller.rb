class DiscussionsController < ApplicationController
  def new
    @discussion = Discussion.new
  end

  def create
    discussion = Discussion.create discussion_params
    note = Note.find params[:note_id]
    note.discussions << discussion
    redirect_back(fallback_location: root_path)
  end

  def index
  end

  def show
    @discussions = Discussion.all
  end

  def edit
  end

  private
  def discussion_params
    params.require(:discussion).permit(:message)
  end
end
