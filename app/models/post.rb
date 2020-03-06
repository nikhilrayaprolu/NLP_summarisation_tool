class Post < ApplicationRecord
  has_one :post_summary
  self.primary_key = "Id"
end
