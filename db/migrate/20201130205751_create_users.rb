class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :hometown
      t.string :img_url
      t.string :bio

      t.timestamps
    end
  end
end
