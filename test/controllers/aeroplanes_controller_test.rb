require 'test_helper'

class AeroplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aeroplane = aeroplanes(:one)
  end

  test "should get index" do
    get aeroplanes_url
    assert_response :success
  end

  test "should get new" do
    get new_aeroplane_url
    assert_response :success
  end

  test "should create aeroplane" do
    assert_difference('Aeroplane.count') do
      post aeroplanes_url, params: { aeroplane: { b_col: @aeroplane.b_col, b_fare: @aeroplane.b_fare, b_row: @aeroplane.b_row, e_col: @aeroplane.e_col, e_fare: @aeroplane.e_fare, e_row: @aeroplane.e_row, f_col: @aeroplane.f_col, f_fare: @aeroplane.f_fare, f_row: @aeroplane.f_row, model: @aeroplane.model, name: @aeroplane.name } }
    end

    assert_redirected_to aeroplane_url(Aeroplane.last)
  end

  test "should show aeroplane" do
    get aeroplane_url(@aeroplane)
    assert_response :success
  end

  test "should get edit" do
    get edit_aeroplane_url(@aeroplane)
    assert_response :success
  end

  test "should update aeroplane" do
    patch aeroplane_url(@aeroplane), params: { aeroplane: { b_col: @aeroplane.b_col, b_fare: @aeroplane.b_fare, b_row: @aeroplane.b_row, e_col: @aeroplane.e_col, e_fare: @aeroplane.e_fare, e_row: @aeroplane.e_row, f_col: @aeroplane.f_col, f_fare: @aeroplane.f_fare, f_row: @aeroplane.f_row, model: @aeroplane.model, name: @aeroplane.name } }
    assert_redirected_to aeroplane_url(@aeroplane)
  end

  test "should destroy aeroplane" do
    assert_difference('Aeroplane.count', -1) do
      delete aeroplane_url(@aeroplane)
    end

    assert_redirected_to aeroplanes_url
  end
end
