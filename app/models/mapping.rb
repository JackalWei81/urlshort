class Mapping < ActiveRecord::Base
  validates :longurl, presence: true
  validates :longurl, uniqueness: true
end
