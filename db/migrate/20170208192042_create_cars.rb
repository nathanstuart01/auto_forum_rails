class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :year
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end
