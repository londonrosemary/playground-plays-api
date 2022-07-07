require "test_helper"

class CollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collection = collections(:one)
  end

  test "should get index" do
    get collections_url, as: :json
    assert_response :success
  end

  test "should create collection" do
    assert_difference("Collection.count") do
      post collections_url, params: { collection: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show collection" do
    get collection_url(@collection), as: :json
    assert_response :success
  end

  test "should update collection" do
    patch collection_url(@collection), params: { collection: {  } }, as: :json
    assert_response :success
  end

  test "should destroy collection" do
    assert_difference("Collection.count", -1) do
      delete collection_url(@collection), as: :json
    end

    assert_response :no_content
  end
end
