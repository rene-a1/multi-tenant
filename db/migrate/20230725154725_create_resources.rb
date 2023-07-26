class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources, partition_key: :tenant_id do |t|
      t.references :tenant, null: false
      t.string :title
      t.datetime :discarded_at
      t.timestamps
      create_distributed_table :patients, :tenant_id
    end
  end
end
