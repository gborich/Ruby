class PlayersController < ApplicationController
  before_action :set_champions

  def new_game
    @players = Player.all
  end

  def home
    @time = Time.now
  end

  def champions
    @players = Player.all
  end

  def rules

  end

  def set_champions
    @champions ||= [["Хосе Рауль Капабланка", "1888-1942", "1921 – 1927"], ["Василий Васильевич Смыслов", "1921-2010", "1957—1958"], ["Борис Васильевич Спасский", "1937-н.в.", "1969—1972"]]
  end

  def show
    @player = Player.find_by(id: params[:id])
    if @player.nil?
      redirect_to root_path
    end
  end

  def form
    @player = Player.new(name: params[:player][:name], lastname: params[:player][:lastname], birth_year: params[:player][:birth_year], death_year: params[:player][:death_year], champs_year: params[:player][:champs_year])
    @player.save
    redirect_to root_path
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.update(params[:id], name: params[:player][:name], lastname: params[:player][:lastname], birth_year: params[:player][:birth_year], death_year: params[:player][:death_year], champs_year: params[:player][:champs_year])
    redirect_to root_path
  end

  def delete
    Player.find(params[:id]).destroy
    redirect_to champions_path
  end
end
