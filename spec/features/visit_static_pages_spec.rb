require "spec_helper"

describe "visit static pages" do
  
  describe "visit home page" do

    it "receives a 200 status" do
      visit root_path
      page.has_content?("This is the home page")
    end

  end
end