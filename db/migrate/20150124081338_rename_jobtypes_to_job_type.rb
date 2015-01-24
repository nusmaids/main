class RenameJobtypesToJobType < ActiveRecord::Migration
  def change
    rename_table :jobtypes, :job_type
  end
end
