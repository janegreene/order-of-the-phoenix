require "rails_helper"

RSpec.describe Character do
  it "builds attributes correctly" do
    attr = {
      name: "Harry Potter",
      role: "student",
      house: "Gryffindor",
      patronus: "stag"
    }
    member = Character.new(attr)
    expect(member).to be_a Character
    expect(member.name).to be_a(String)
    expect(member.name).to eq("Harry Potter")
    expect(member.house).to be_a(String)
    expect(member.house).to eq("Gryffindor")
    expect(member.role).to be_a(String)
    expect(member.role).to eq("student")
    expect(member.patronus).to be_a(String)
    expect(member.patronus).to eq("stag")
  end
end
