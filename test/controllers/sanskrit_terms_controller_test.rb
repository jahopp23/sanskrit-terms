require 'test_helper'

class SanskritTermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sanskrit_term = sanskrit_terms(:one)
  end

  test "should get index" do
    get sanskrit_terms_url
    assert_response :success
  end

  test "should get new" do
    get new_sanskrit_term_url
    assert_response :success
  end

  test "should create sanskrit_term" do
    assert_difference('SanskritTerm.count') do
      post sanskrit_terms_url, params: { sanskrit_term: { definition: @sanskrit_term.definition, term: @sanskrit_term.term } }
    end

    assert_redirected_to sanskrit_term_url(SanskritTerm.last)
  end

  test "should show sanskrit_term" do
    get sanskrit_term_url(@sanskrit_term)
    assert_response :success
  end

  test "should get edit" do
    get edit_sanskrit_term_url(@sanskrit_term)
    assert_response :success
  end

  test "should update sanskrit_term" do
    patch sanskrit_term_url(@sanskrit_term), params: { sanskrit_term: { definition: @sanskrit_term.definition, term: @sanskrit_term.term } }
    assert_redirected_to sanskrit_term_url(@sanskrit_term)
  end

  test "should destroy sanskrit_term" do
    assert_difference('SanskritTerm.count', -1) do
      delete sanskrit_term_url(@sanskrit_term)
    end

    assert_redirected_to sanskrit_terms_url
  end
end
