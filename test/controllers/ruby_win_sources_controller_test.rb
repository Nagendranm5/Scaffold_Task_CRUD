require "test_helper"

class RubyWinSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_win_source = ruby_win_sources(:one)
  end

  test "should get index" do
    get ruby_win_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_win_source_url
    assert_response :success
  end

  test "should create ruby_win_source" do
    assert_difference('RubyWinSource.count') do
      post ruby_win_sources_url, params: { ruby_win_source: { author: @ruby_win_source.author, name: @ruby_win_source.name, url: @ruby_win_source.url } }
    end

    assert_redirected_to ruby_win_source_url(RubyWinSource.last)
  end

  test "should show ruby_win_source" do
    get ruby_win_source_url(@ruby_win_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_win_source_url(@ruby_win_source)
    assert_response :success
  end

  test "should update ruby_win_source" do
    patch ruby_win_source_url(@ruby_win_source), params: { ruby_win_source: { author: @ruby_win_source.author, name: @ruby_win_source.name, url: @ruby_win_source.url } }
    assert_redirected_to ruby_win_source_url(@ruby_win_source)
  end

  test "should destroy ruby_win_source" do
    assert_difference('RubyWinSource.count', -1) do
      delete ruby_win_source_url(@ruby_win_source)
    end

    assert_redirected_to ruby_win_sources_url
  end
end
