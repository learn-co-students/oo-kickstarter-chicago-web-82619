class Project
  attr_reader :backers, :title
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    Backing.new(self, backer)
  end

  def backers
    Backing.all.select {|backing| backing.project == self}.map {|backing| backing.backer}
  end

end
