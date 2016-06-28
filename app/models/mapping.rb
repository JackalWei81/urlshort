class Mapping < ActiveRecord::Base
  validates :longurl, presence: true
end
