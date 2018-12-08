class PlayersController < ApplicationController
  before_action :set_champions

  def new_game

  end

  def home
    @time = Time.now
  end

  def champions

  end

  def rules

  end

  def set_champions
    @champions ||= [["Хосе Рауль Капабланка", "1888-1942", "1921 – 1927"], ["Василий Васильевич Смыслов", "1921-2010", "1957—1958"], ["Борис Васильевич Спасский", "1937-н.в.", "1969—1972"]]
  end

end
