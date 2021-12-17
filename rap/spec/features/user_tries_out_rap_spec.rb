require "rails_helper"

RSpec.describe "User tries out RAP" do
  it "User visits RAP" do
    visit root_path
    expect(page.find("h1")).to have_text("RAP")
  end
end
