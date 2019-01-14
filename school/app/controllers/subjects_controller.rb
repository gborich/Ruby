class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(name: params[:subject][:name], description: params[:subject][:description])
    if @subject.errors.any?
      flash[:notice] = 'Enter your data one more time'
      render 'new'
    else
      flash[:notice] = 'subject was created successfully'
      redirect_to subjects_path
    end
  end
end
