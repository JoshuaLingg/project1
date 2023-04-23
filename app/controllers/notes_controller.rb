class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create 
    note = Note.create note_params
    @current_user.notes << note
    redirect_to notes_path
  end

  def index
    @notes = Note.all
  end

  def edit
    @note = Note.find params[:id]
  end

  def update
    note = Note.find params[:id]
    note.update note_params
    redirect_to note
  end

  def show
    @note = Note.find params[:id]
    @discussion = Discussion.new
    @discussions = Discussion.all
  end

  def destroy
    note = Note.find params[:id]
    note.destroy
    redirect_to root_path
  end

  private
  def note_params
    params.require(:note).permit(:title, :message, :image, :user_id)
  end

end
