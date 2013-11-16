class CreateBoardingCards < ActiveRecord::Migration
  def change
    create_table :boarding_cards do |t|
      t.string :journey
      t.string :from
      t.string :to
      t.string :transport_mode
      t.string :travel_locator
      t.string :seat
      t.string :gate
      t.string :baggage_reclaim
      t.string :directions

      t.timestamps
    end
  end
end
