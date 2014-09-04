describe PB::PuppyRepo do
  describe "add and retrieve puppies" do
    before :all do
      # @repo = PB::PuppyRepo.new("breeder-test")
      @repo = PB::PuppyRepo.new
    end

    before do
      @repo.reset_repo
    end

    let(:puppy) {PB::Puppy.new(name: "bud", cost: 1000, breed: "golden")}

    it "returns no puppies if none are added" do
      result = @repo.get_puppies
      expect(result).to be_an(Array)
      expect(result.size).to eq(0)
    end

    it "adds a puppy and gives it an id" do
      result = @repo.add_puppy(puppy)
      expect(result).to be_a(PB::Puppy)
      expect(result.name).to eq(puppy.name)
      expect(result.breed).to eq(puppy.breed)
      expect(result.cost).to eq(puppy.cost)
      expect(result.id).to be_a(Fixnum)
    end

    it "persists the puppy" do
      original = @repo.add_puppy(puppy)
      result = @repo.get_puppies
      expect(result.size).to eq(1)
      expect(result[0].id).to eq(original.id)
      expect(result[0].name).to eq(original.name)
      expect(result[0].breed).to eq(original.breed)
      expect(result[0].cost).to eq(original.cost)
    end
  end
end