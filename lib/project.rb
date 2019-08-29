class Project
    attr_reader :backers, :title
    def initialize(title)
        @backers = []
        @title = title
    end
    def add_backer(backer)
        @backers << backer
        if !(backer.backed_projects.find {|project| project.title == self.title})
            backer.back_project(self)
        end
    end
end