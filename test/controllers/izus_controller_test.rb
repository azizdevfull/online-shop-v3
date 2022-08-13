require "test_helper"

class IzusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @izu = izus(:one)
  end

  test "should get index" do
    get izus_url
    assert_response :success
  end

  test "should get new" do
    get new_izu_url
    assert_response :success
  end

  test "should create izu" do
    assert_difference("Izu.count") do
      post izus_url, params: { izu: { description: @izu.description, name: @izu.name } }
    end

    assert_redirected_to izu_url(Izu.last)
  end

  test "should show izu" do
    get izu_url(@izu)
    assert_response :success
  end

  test "should get edit" do
    get edit_izu_url(@izu)
    assert_response :success
  end

  test "should update izu" do
    patch izu_url(@izu), params: { izu: { description: @izu.description, name: @izu.name } }
    assert_redirected_to izu_url(@izu)
  end

  test "should destroy izu" do
    assert_difference("Izu.count", -1) do
      delete izu_url(@izu)
    end

    assert_redirected_to izus_url
  end
end
