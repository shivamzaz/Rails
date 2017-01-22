class Post < ActiveRecord::Base
  before_save :default_values
  def default_values
    self.color ||= "%06x" % (rand*0xffffff)
  end
end
