class Comment < ApplicationRecord
  belongs_to :commentable, polymorhic: true
end
