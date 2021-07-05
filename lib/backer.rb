require 'pry'

class Backer
  attr_reader :backed_projects, :name
  def initialize(name)
    @name = name
  end

  def back_project(project)
    Backing.new(project, self)
  end

  def backed_projects
    Backing.all.select {|backing| backing.backer == self}.map {|backing| backing.project}
  end

end
