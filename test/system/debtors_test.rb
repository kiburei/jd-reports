require "application_system_test_case"

class DebtorsTest < ApplicationSystemTestCase
  setup do
    @debtor = debtors(:one)
  end

  test "visiting the index" do
    visit debtors_url
    assert_selector "h1", text: "Debtors"
  end

  test "creating a Debtor" do
    visit debtors_url
    click_on "New Debtor"

    fill_in "Debt", with: @debtor.debt
    fill_in "F name", with: @debtor.f_name
    fill_in "L name", with: @debtor.l_name
    click_on "Create Debtor"

    assert_text "Debtor was successfully created"
    click_on "Back"
  end

  test "updating a Debtor" do
    visit debtors_url
    click_on "Edit", match: :first

    fill_in "Debt", with: @debtor.debt
    fill_in "F name", with: @debtor.f_name
    fill_in "L name", with: @debtor.l_name
    click_on "Update Debtor"

    assert_text "Debtor was successfully updated"
    click_on "Back"
  end

  test "destroying a Debtor" do
    visit debtors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debtor was successfully destroyed"
  end
end
