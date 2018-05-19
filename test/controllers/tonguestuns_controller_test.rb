require 'test_helper'

class TonguestunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tonguestun = tonguestuns(:one)
  end

  test "should get index" do
    get tonguestuns_url
    assert_response :success
  end

  test "should get new" do
    get new_tonguestun_url
    assert_response :success
  end

  test "should create tonguestun" do
    assert_difference('Tonguestun.count') do
      post tonguestuns_url, params: { tonguestun: {  } }
    end

    assert_redirected_to tonguestun_url(Tonguestun.last)
  end

  test "should show tonguestun" do
    get tonguestun_url(@tonguestun)
    assert_response :success
  end

  test "should get edit" do
    get edit_tonguestun_url(@tonguestun)
    assert_response :success
  end

  test "should update tonguestun" do
    patch tonguestun_url(@tonguestun), params: { tonguestun: {  } }
    assert_redirected_to tonguestun_url(@tonguestun)
  end

  test "should destroy tonguestun" do
    assert_difference('Tonguestun.count', -1) do
      delete tonguestun_url(@tonguestun)
    end

    assert_redirected_to tonguestuns_url
  end
end
