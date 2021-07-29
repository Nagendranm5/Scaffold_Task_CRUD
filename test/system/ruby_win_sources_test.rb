require "application_system_test_case"

class RubyWinSourcesTest < ApplicationSystemTestCase
  setup do
    @ruby_win_source = ruby_win_sources(:one)
  end

  test "visiting the index" do
    visit ruby_win_sources_url
    assert_selector "h1", text: "Ruby Win Sources"
  end

  test "creating a Ruby win source" do
    visit ruby_win_sources_url
    click_on "New Ruby Win Source"

    fill_in "Author", with: @ruby_win_source.author
    fill_in "Name", with: @ruby_win_source.name
    fill_in "Url", with: @ruby_win_source.url
    click_on "Create Ruby win source"

    assert_text "Ruby win source was successfully created"
    click_on "Back"
  end

  test "updating a Ruby win source" do
    visit ruby_win_sources_url
    click_on "Edit", match: :first

    fill_in "Author", with: @ruby_win_source.author
    fill_in "Name", with: @ruby_win_source.name
    fill_in "Url", with: @ruby_win_source.url
    click_on "Update Ruby win source"

    assert_text "Ruby win source was successfully updated"
    click_on "Back"
  end

  test "destroying a Ruby win source" do
    visit ruby_win_sources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ruby win source was successfully destroyed"
  end
end
