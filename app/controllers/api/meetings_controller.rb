class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @meeting = Meeting.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @meeting = Meeting.new(
      title: params[:title],
      agenda: params[:agenda],
      time: params[:time]
      )
    @meeting.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @meeting = Meeting.find_by(id: the_id)
    @meeting.update(
      title: params[:title],
      agenda: params[:agenda],
      time: params[:time]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @meeting = Meeting.find_by(id: the_id)
    @meeting.destroy
    render 'show.json.jbuilder'
  end
end
