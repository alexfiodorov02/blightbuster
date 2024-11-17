class CreateReports < ActiveRecord::Migration[7.2]
  def change
    create_table :reports do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.text :description
      t.string :photo
      t.string :status

      t.timestamps
    end
  end
end
