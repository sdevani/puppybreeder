require 'pg'
require 'pry-byebug'

module PB
  def self.puppy_repo=(repo)
    @request_repo = repo
  end

  def self.puppy_repo
    @request_repo
  end
end

require_relative './lib/puppy.rb'
require_relative './lib/repo/puppy_repo.rb'
PB.puppy_repo = PB::PuppyRepo.new#("breeder")

# require_relative './lib/request.rb'
# require_relative './lib/repo/request_repo.rb'
