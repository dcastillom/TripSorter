class UpdateBoardingCards < ActiveRecord::Migration
  def change
      change_column :boarding_cards, :directions, :text, :limit => nil
  end
end
