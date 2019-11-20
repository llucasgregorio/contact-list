require "application_system_test_case"

class ContactModelsTest < ApplicationSystemTestCase
  setup do
    @contact_model = contact_models(:one)
  end

  test "visiting the index" do
    visit contact_models_url
    assert_selector "h1", text: "Contact Models"
  end

  test "creating a Contact model" do
    visit contact_models_url
    click_on "New Contact Model"

    fill_in "Name", with: @contact_model.name
    fill_in "Telefone", with: @contact_model.telefone
    click_on "Create Contact model"

    assert_text "Contact model was successfully created"
    click_on "Back"
  end

  test "updating a Contact model" do
    visit contact_models_url
    click_on "Edit", match: :first

    fill_in "Name", with: @contact_model.name
    fill_in "Telefone", with: @contact_model.telefone
    click_on "Update Contact model"

    assert_text "Contact model was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact model" do
    visit contact_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact model was successfully destroyed"
  end
end
