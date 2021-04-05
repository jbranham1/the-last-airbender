require 'rails_helper'

RSpec.describe 'Search Page' do
  before :each do
    visit root_path
    find('#nation').find(:xpath, 'option[2]').select_option
    #page.find(:xpath, "//*[@id='invoice_status']/option[2]").click
    #find("").click
    click_button("Search For Members")
  end
  describe 'As a user,' do
    describe 'When I visit "/"' do
      describe 'And I Select "Fire Nation" from the select field And I click "Search For Members"' do
        it 'Then I should be on page "/search"' do
          expect(current_path).to eq (search_path)
        end
        it "Then I should see the total number of people who live in the Fire Nation. (should be close to 100)" do
          expect(current_path).to eq (search_path)
          expect(page).to have_content("Fire Nation")
          expect(page).to have_content("Number of People: 100")
        end
        describe "And I should see a list with the detailed information for the first 25 members of the Fire Nation." do
          it "For each of the members I should see name, photo, allies, enemies, and affiliations" do

          end
        end

      end
    end
  end
end
