class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.references :user, foreign_key: true
      t.references :subject, foreign_key: true
      t.integer :points
      t.string :comment

      t.timestamps
    end
  end
end
