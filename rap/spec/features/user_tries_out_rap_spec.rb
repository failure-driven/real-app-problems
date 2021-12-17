require "rails_helper"

RSpec.describe "User tries out RAP", :js do
  let(:home_page) { HomePage.new }

  it "User visits RAP" do
    When "user visits the site" do
      home_page.load
    end

    Then "they see the RAP branding" do
      expect(home_page.title).to have_text("RAP")
    end
  end
end
