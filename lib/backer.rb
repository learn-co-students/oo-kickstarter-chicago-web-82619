class Backer
    attr_accessor :backed_projects, :project
    attr_reader :name

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
       @backed_projects << project
       project.backers << self
    end   
    
end    