class AddDeletedAtAndWorkflowStateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :deleted_at, :datetime
    add_index :jobs, :deleted_at
    add_column :jobs, :workflow_state, :string
  end
end
