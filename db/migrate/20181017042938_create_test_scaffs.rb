class CreateTestScaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :test_scaffs do |t|
      t.integer :position
      t.string :noname
      t.integer :notext

      t.timestamps
    end
  end
end
