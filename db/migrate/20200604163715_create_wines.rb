class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.date :vintage
      t.date :goal
      t.integer :color
      t.integer :nbr_bottle

      t.timestamps
    end
  end
end
