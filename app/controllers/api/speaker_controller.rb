class Api::SpeakerController < ApplicationController
  def index
    @speakers = Speaker.all
    render ' index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    render 'show.json.jbuilder'
  end
end
