class Record < ApplicationRecord

  belongs_to :user

  enum weather: {"晴れ":0, "くもり":1, "雨":2, "雪":3}
  enum wind: {"強":0, "中":1, "弱":2, "微風":3}

end
