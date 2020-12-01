class CreateLandmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :landmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :img_url
      t.string :bio
      t.string :genre

      t.timestamps
    end
  end
end
