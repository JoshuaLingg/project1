class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create 
    note = Note.create note_params
    redirect_to note_index
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
  end

  private
  def note_params
    params.require(:note).permit(:title, :message, :image)
  end

end
