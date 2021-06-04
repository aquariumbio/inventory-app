require "test_helper"

class SampleCompositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_composition = sample_compositions(:one)
  end

  test "should get index" do
    get sample_compositions_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_composition_url
    assert_response :success
  end

  test "should create sample_composition" do
    assert_difference('SampleComposition.count') do
      post sample_compositions_url, params: { sample_composition: { component_sample_id: @sample_composition.component_sample_id, composite_sample_id: @sample_composition.composite_sample_id, quantity: @sample_composition.quantity, sample_composition_type_id: @sample_composition.sample_composition_type_id } }
    end

    assert_redirected_to sample_composition_url(SampleComposition.last)
  end

  test "should show sample_composition" do
    get sample_composition_url(@sample_composition)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_composition_url(@sample_composition)
    assert_response :success
  end

  test "should update sample_composition" do
    patch sample_composition_url(@sample_composition), params: { sample_composition: { component_sample_id: @sample_composition.component_sample_id, composite_sample_id: @sample_composition.composite_sample_id, quantity: @sample_composition.quantity, sample_composition_type_id: @sample_composition.sample_composition_type_id } }
    assert_redirected_to sample_composition_url(@sample_composition)
  end

  test "should destroy sample_composition" do
    assert_difference('SampleComposition.count', -1) do
      delete sample_composition_url(@sample_composition)
    end

    assert_redirected_to sample_compositions_url
  end
end
