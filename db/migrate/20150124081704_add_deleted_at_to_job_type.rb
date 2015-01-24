class AddDeletedAtToJobType < ActiveRecord::Migration
  def change
    add_column :job_type, :deleted_at, :datetime
    add_index :job_type, :deleted_at
  end
end
