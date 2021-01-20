class Record < ApplicationRecord
  
  belongs_to :user, optional: true
  
end
