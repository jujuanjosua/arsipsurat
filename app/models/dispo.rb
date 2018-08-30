class Dispo < ApplicationRecord

	belongs_to :surat
	belongs_to :user

	validates :dispo, presence: true
end
