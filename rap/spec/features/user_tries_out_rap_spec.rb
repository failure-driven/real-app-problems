require "rails_helper"

RSpec.describe "User tries out RAP", :js do
  let(:home_page) { HomePage.new }
  let(:exercises) { Exercises.new }

  it "User visits RAP" do
    When "user visits the site" do
      home_page.load
    end

    Then "they see the RAP branding" do
      expect(home_page.title).to have_text("RAP")
    end

    When "the user wants to try the platform" do
      pending "a get started button"
      home_page.get_started
    end

    Then "they see the starter exercises" do
      expect(exercises.starter_exercises).to contain_exactly(
        "HTML",
        "Javascript",
      )
    end
  end
end
