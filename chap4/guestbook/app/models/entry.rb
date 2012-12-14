class Entry < ActiveRecord::Base
  # tells Rails its allowed to set values to the :name proeprty, and only :name	
  attr_accessible :name
end
