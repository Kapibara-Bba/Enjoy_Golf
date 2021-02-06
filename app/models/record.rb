class Record < ApplicationRecord

  belongs_to :user

  enum weather: {"晴れ":0, "くもり":1, "雨":2, "雪":3}
  enum wind: {"強":0, "中":1, "弱":2, "微風":3}
  
  validates :score, presence: true
  
  def sum_score
    self.hole1 + self.hole2 + self.hole3 + self.hole4 + self.hole5 + self.hole6 + self.hole7 + self.hole8 + self.hole9 + self.hole10 +
    self.hole11 + self.hole12 + self.hole13 + self.hole14 + self.hole15 + self.hole16 + self.hole17 + self.hole18
  end
end
