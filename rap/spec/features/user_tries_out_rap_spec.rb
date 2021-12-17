require "rails_helper"

RSpec.describe "User tries out RAP", :js do
  it "User visits RAP" do
    When "user visits the site" do
      visit root_path
    end

    Then "they see the RAP branding" do
      expect(page.find("h1")).to have_text("RAP")
    end
  end
end
