class JobType < ActiveRecord::Base
  acts_as_paranoid

  enumerate :name do
    value 0 => 'Cleaning'
    value 1 => 'Laundry'
    value 2 => 'Repairs'
    value 3 => 'Labour'
    value 4 => 'Handicap Assistance'
  end
end
