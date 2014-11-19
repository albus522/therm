class SetTemp < ActiveRecord::Base
  enum mode: [:heating, :cooling]
end
