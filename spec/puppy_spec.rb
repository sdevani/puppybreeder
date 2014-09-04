require 'spec_helper'

describe PB::Puppy do
  it "initializes with a name, breed, cost, id" do
    puppy = PB::Puppy.new(name: "bud", breed: "golden", cost: 1000, id: 5)
    expect(puppy).to be_a(PB::Puppy)
    expect(puppy.name).to eq("bud")
    expect(puppy.breed).to eq("golden")
    expect(puppy.cost).to eq(1000)
    expect(puppy.id).to eq(5)
  end

  it "initializes without an id" do
    puppy = PB::Puppy.new(name: "bud", breed: "golden", cost: 1000)
    expect(puppy).to be_a(PB::Puppy)
    expect(puppy.name).to eq("bud")
    expect(puppy.breed).to eq("golden")
    expect(puppy.cost).to eq(1000)
    expect(puppy.id).to eq(nil)
  end
end