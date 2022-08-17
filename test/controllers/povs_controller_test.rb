require "test_helper"

class PovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pov = povs(:one)
  end

  test "should get index" do
    get povs_url
    assert_response :success
  end

  test "should get new" do
    get new_pov_url
    assert_response :success
  end

  test "should create pov" do
    assert_difference('Pov.count') do
      post povs_url, params: { pov: { author: @pov.author, publication_year: @pov.publication_year, title: @pov.title } }
    end

    assert_redirected_to pov_url(Pov.last)
  end

  test "should show pov" do
    get pov_url(@pov)
    assert_response :success
  end

  test "should get edit" do
    get edit_pov_url(@pov)
    assert_response :success
  end

  test "should update pov" do
    patch pov_url(@pov), params: { pov: { author: @pov.author, publication_year: @pov.publication_year, title: @pov.title } }
    assert_redirected_to pov_url(@pov)
  end

  test "should destroy pov" do
    assert_difference('Pov.count', -1) do
      delete pov_url(@pov)
    end

    assert_redirected_to povs_url
  end
end
