require 'test_helper'

class TypePartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_partner = type_partners(:one)
  end

  test "should get index" do
    get type_partners_url
    assert_response :success
  end

  test "should get new" do
    get new_type_partner_url
    assert_response :success
  end

  test "should create type_partner" do
    assert_difference('TypePartner.count') do
      post type_partners_url, params: { type_partner: { description: @type_partner.description, documents_id: @type_partner.documents_id, type: @type_partner.type } }
    end

    assert_redirected_to type_partner_url(TypePartner.last)
  end

  test "should show type_partner" do
    get type_partner_url(@type_partner)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_partner_url(@type_partner)
    assert_response :success
  end

  test "should update type_partner" do
    patch type_partner_url(@type_partner), params: { type_partner: { description: @type_partner.description, documents_id: @type_partner.documents_id, type: @type_partner.type } }
    assert_redirected_to type_partner_url(@type_partner)
  end

  test "should destroy type_partner" do
    assert_difference('TypePartner.count', -1) do
      delete type_partner_url(@type_partner)
    end

    assert_redirected_to type_partners_url
  end
end
