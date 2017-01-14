class Syabettere < ActiveRecord::Base
  validates :title, presence: true, length: { in: 1..255  }        # 値が「1文字以上255文字以下」であれば有効
  validates :content, presence: true, length: { in: 1..255  }        # 値が「1文字以上255文字以下」であれば有効
end