class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.json :images

      t.timestamps
    end
  end
end
