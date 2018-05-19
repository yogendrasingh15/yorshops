require "application_system_test_case"

class TonguestunsTest < ApplicationSystemTestCase
  setup do
    @tonguestun = tonguestuns(:one)
  end

  test "visiting the index" do
    visit tonguestuns_url
    assert_selector "h1", text: "Tonguestuns"
  end

  test "creating a Tonguestun" do
    visit tonguestuns_url
    click_on "New Tonguestun"

    click_on "Create Tonguestun"

    assert_text "Tonguestun was successfully created"
    click_on "Back"
  end

  test "updating a Tonguestun" do
    visit tonguestuns_url
    click_on "Edit", match: :first

    click_on "Update Tonguestun"

    assert_text "Tonguestun was successfully updated"
    click_on "Back"
  end

  test "destroying a Tonguestun" do
    visit tonguestuns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tonguestun was successfully destroyed"
  end
end
