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
    @player = Player.new
    @player.name = params[:name]
    @player.lastname = params[:lastname]
    @player.birth_year = params[:birth_year].to_i
    @player.death_year = params[:death_year].to_i
    @player.champs_year = params[:champs_year].to_i
    @player.save
    redirect_to root_path
  end

end
