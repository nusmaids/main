class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.text :location
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
