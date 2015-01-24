class ModifyJobsTable < ActiveRecord::Migration
  def change
        drop_table :jobs
        execute <<-SQL
      CREATE TABLE jobs(
        id INTEGER,
        name STRING,
        description  TEXT,
        location TEXT,
        start_time DATETIME,
        end_time DATETIME,
        created_at DATETIME,
        updated_at DATETIME,
        maid_id INTEGER,
        employer_id INTEGER,
        job_type_id INTEGER,
        FOREIGN KEY(maid_id) REFERENCES users(id)
        FOREIGN KEY(employer_id) REFERENCES users(id)
        FOREIGN KEY(job_type_id) REFERENCES job_types(id)
      );
        SQL
        add_column :jobs, :deleted_at, :datetime
        add_index :jobs, :deleted_at
        add_column :jobs, :workflow_state, :string
  end
end
