require 'test_helper'

class ContactModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_model = contact_models(:one)
  end

  test "should get index" do
    get contact_models_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_model_url
    assert_response :success
  end

  test "should create contact_model" do
    assert_difference('ContactModel.count') do
      post contact_models_url, params: { contact_model: { name: @contact_model.name, telefone: @contact_model.telefone } }
    end

    assert_redirected_to contact_model_url(ContactModel.last)
  end

  test "should show contact_model" do
    get contact_model_url(@contact_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_model_url(@contact_model)
    assert_response :success
  end

  test "should update contact_model" do
    patch contact_model_url(@contact_model), params: { contact_model: { name: @contact_model.name, telefone: @contact_model.telefone } }
    assert_redirected_to contact_model_url(@contact_model)
  end

  test "should destroy contact_model" do
    assert_difference('ContactModel.count', -1) do
      delete contact_model_url(@contact_model)
    end

    assert_redirected_to contact_models_url
  end
end
