class CreateTestingResources < ActiveRecord::Migration[7.0]
  def change
    create_table :testing_resources do |t|
      t.string :title

      t.timestamps
    end
  end
end
