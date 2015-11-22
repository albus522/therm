class Reading < ActiveRecord::Base
  enum state: [:off, :cooling, :heating]
end
