class Backer
    attr_reader :backed_projects, :name
    def initialize(name)
      @name = name
      @backed_projects = []
    end
    def back_project(project)
      @backed_projects << project
      backer = self
      if (!project.backers.include?(self))
      project.add_backer(backer)
      end
    end
  end