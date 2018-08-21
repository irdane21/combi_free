class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :date
      t.text :review_content
      t.integer :review_rating
      t.references :combi, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
