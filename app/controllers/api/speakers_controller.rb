class Api::SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @speaker = Speaker.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
      )
    @speaker.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    @speaker.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    @speaker.destroy
    render 'show.json.jbuilder'
  end
end
