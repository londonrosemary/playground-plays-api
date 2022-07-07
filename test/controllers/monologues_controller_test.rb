require "test_helper"

class MonologuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monologue = monologues(:one)
  end

  test "should get index" do
    get monologues_url, as: :json
    assert_response :success
  end

  test "should create monologue" do
    assert_difference("Monologue.count") do
      post monologues_url, params: { monologue: { belongs_to: @monologue.belongs_to, name: @monologue.name, play: @monologue.play } }, as: :json
    end

    assert_response :created
  end

  test "should show monologue" do
    get monologue_url(@monologue), as: :json
    assert_response :success
  end

  test "should update monologue" do
    patch monologue_url(@monologue), params: { monologue: { belongs_to: @monologue.belongs_to, name: @monologue.name, play: @monologue.play } }, as: :json
    assert_response :success
  end

  test "should destroy monologue" do
    assert_difference("Monologue.count", -1) do
      delete monologue_url(@monologue), as: :json
    end

    assert_response :no_content
  end
end
