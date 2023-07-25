class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants, partition_key: :id do |t|
      t.string :name, limit: 60
      t.uuid :key, null: false, default: 'gen_random_uuid()'
      t.datetime :discarded_at
      t.timestamps
      t.index :key, unique: true
      t.index :discarded_at
    end
  end
end
