class Job < ActiveRecord::Base
  acts_as_paranoid
  include Workflow

  belongs_to :employer, :class_name => 'User', :foreign_key => 'employer_id'
  belongs_to :maid, :class_name => 'User', :foreign_key => 'maid_id'
  belongs_to :job_type
  
end
