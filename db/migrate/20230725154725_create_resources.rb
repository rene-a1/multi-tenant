class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.datetime :discarded_at
      t.timestamps
    end
  end
end
