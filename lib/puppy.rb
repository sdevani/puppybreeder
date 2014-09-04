class PB::Puppy
  attr_reader :name, :breed, :cost, :id
  def initialize(params)
    @name = params[:name]
    @breed = params[:breed]
    @cost = params[:cost]
    @id = params[:id]
  end
end