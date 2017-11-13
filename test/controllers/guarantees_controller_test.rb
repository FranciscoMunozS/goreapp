require 'test_helper'

class GuaranteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guarantee = guarantees(:one)
  end

  test "should get index" do
    get guarantees_url
    assert_response :success
  end

  test "should get new" do
    get new_guarantee_url
    assert_response :success
  end

  test "should create guarantee" do
    assert_difference('Guarantee.count') do
      post guarantees_url, params: { guarantee: { bail: @guarantee.bail, bank_name: @guarantee.bank_name, bip: @guarantee.bip, borrower_id: @guarantee.borrower_id, borrower_name: @guarantee.borrower_name, currency_guarantee: @guarantee.currency_guarantee, detail: @guarantee.detail, devolution_date: @guarantee.devolution_date, devolution_number: @guarantee.devolution_number, devolution_return: @guarantee.devolution_return, due_date: @guarantee.due_date, email: @guarantee.email, income_applicant: @guarantee.income_applicant, income_date: @guarantee.income_date, income_number: @guarantee.income_number, observation: @guarantee.observation, sectorialist_devolution: @guarantee.sectorialist_devolution, state: @guarantee.state, technical_unit: @guarantee.technical_unit, value_guarantee: @guarantee.value_guarantee } }
    end

    assert_redirected_to guarantee_url(Guarantee.last)
  end

  test "should show guarantee" do
    get guarantee_url(@guarantee)
    assert_response :success
  end

  test "should get edit" do
    get edit_guarantee_url(@guarantee)
    assert_response :success
  end

  test "should update guarantee" do
    patch guarantee_url(@guarantee), params: { guarantee: { bail: @guarantee.bail, bank_name: @guarantee.bank_name, bip: @guarantee.bip, borrower_id: @guarantee.borrower_id, borrower_name: @guarantee.borrower_name, currency_guarantee: @guarantee.currency_guarantee, detail: @guarantee.detail, devolution_date: @guarantee.devolution_date, devolution_number: @guarantee.devolution_number, devolution_return: @guarantee.devolution_return, due_date: @guarantee.due_date, email: @guarantee.email, income_applicant: @guarantee.income_applicant, income_date: @guarantee.income_date, income_number: @guarantee.income_number, observation: @guarantee.observation, sectorialist_devolution: @guarantee.sectorialist_devolution, state: @guarantee.state, technical_unit: @guarantee.technical_unit, value_guarantee: @guarantee.value_guarantee } }
    assert_redirected_to guarantee_url(@guarantee)
  end

  test "should destroy guarantee" do
    assert_difference('Guarantee.count', -1) do
      delete guarantee_url(@guarantee)
    end

    assert_redirected_to guarantees_url
  end
end
