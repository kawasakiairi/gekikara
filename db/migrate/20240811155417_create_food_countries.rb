class CreateFoodCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :food_countries, comment: '国名' do |t|
      t.string :name, comment: '国名'

      t.timestamps
    end
  end
end
