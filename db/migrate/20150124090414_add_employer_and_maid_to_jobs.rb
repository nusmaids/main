class AddEmployerAndMaidToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :maid_id, :integer
    add_column :jobs, :employer_id, :integer
  end
end
