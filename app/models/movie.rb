class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :views

  validates :user_id, :name, :url, :category_id, presence: true
  #validates :url, uniqueness: { message: "Essa sala já está reservada para este horário" }

end
