require "test_helper"

class SampleCompositionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_composition_type = sample_composition_types(:one)
  end

  test "should get index" do
    get sample_composition_types_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_composition_type_url
    assert_response :success
  end

  test "should create sample_composition_type" do
    assert_difference('SampleCompositionType.count') do
      post sample_composition_types_url, params: { sample_composition_type: { description: @sample_composition_type.description, name: @sample_composition_type.name, recipe: @sample_composition_type.recipe } }
    end

    assert_redirected_to sample_composition_type_url(SampleCompositionType.last)
  end

  test "should show sample_composition_type" do
    get sample_composition_type_url(@sample_composition_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_composition_type_url(@sample_composition_type)
    assert_response :success
  end

  test "should update sample_composition_type" do
    patch sample_composition_type_url(@sample_composition_type), params: { sample_composition_type: { description: @sample_composition_type.description, name: @sample_composition_type.name, recipe: @sample_composition_type.recipe } }
    assert_redirected_to sample_composition_type_url(@sample_composition_type)
  end

  test "should destroy sample_composition_type" do
    assert_difference('SampleCompositionType.count', -1) do
      delete sample_composition_type_url(@sample_composition_type)
    end

    assert_redirected_to sample_composition_types_url
  end
end
