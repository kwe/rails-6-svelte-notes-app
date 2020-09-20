class NotesController < ApplicationController

    def index
        @notes = Note.all

        json_string = NoteSerializer.new(@notes)
        render json: json_string
    end
    
    def show
        @note = Note.find(params[:id])
        
        json_string = NoteSerializer.new(@note)
        render json: json_string
    end

end