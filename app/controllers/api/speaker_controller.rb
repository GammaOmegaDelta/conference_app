class Api::SpeakerController < ApplicationController
  def index
    @speakers = Speaker.all
    render ' index.json.jbuilder'
  end
end
