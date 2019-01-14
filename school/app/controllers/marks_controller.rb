class MarksController < ApplicationController
  def index
    @marks = Mark.all
  end

  def new
    @mark = Mark.new
  end

  def create
    @mark = Mark.create(points: params[:mark][:points], user_id: params[:mark][:user_id], subject_id: params[:mark][:subject_id], comment: params[:mark][:comment])
    if @mark.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'mark was created successfully'
      redirect_to marks_path
    end
  end
end
