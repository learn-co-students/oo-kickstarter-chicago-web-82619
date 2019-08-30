class Project
    attr_accessor :backers, :backer
    attr_reader :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end
    
end    