class Idea < ActiveRecord::Base
  default_scope :order => 'votes DESC'

  protected

    def add_one
      self.votes += 1
      self.save
    end
end
