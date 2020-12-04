class CreateCoords < ActiveRecord::Migration[6.0]
  def change
    create_table :coords do |t|
      t.float :lat
      t.float :lng
      t.belongs_to :landmark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
