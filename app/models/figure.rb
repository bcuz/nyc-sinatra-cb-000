class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles

  # lf
  # Now, use the has_many, belongs_to and has_many, :through macros to set up the correct associations in your models:

  #



end
