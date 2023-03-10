class Post < ApplicationRecord
  # talks to the "posts" table
  has_one_attached :uploaded_image
end
