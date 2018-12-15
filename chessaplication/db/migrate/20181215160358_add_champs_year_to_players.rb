class AddChampsYearToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :champs_year, :string
  end
end
