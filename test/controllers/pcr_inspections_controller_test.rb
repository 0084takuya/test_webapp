require 'test_helper'

class PcrInspectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pcr_inspection = pcr_inspections(:one)
  end

  test "should get index" do
    get pcr_inspections_url
    assert_response :success
  end

  test "should get new" do
    get new_pcr_inspection_url
    assert_response :success
  end

  test "should create pcr_inspection" do
    assert_difference('PcrInspection.count') do
      post pcr_inspections_url, params: { pcr_inspection: { clinic_id: @pcr_inspection.clinic_id, remarks: @pcr_inspection.remarks, result: @pcr_inspection.result, subject_id: @pcr_inspection.subject_id } }
    end

    assert_redirected_to pcr_inspection_url(PcrInspection.last)
  end

  test "should show pcr_inspection" do
    get pcr_inspection_url(@pcr_inspection)
    assert_response :success
  end

  test "should get edit" do
    get edit_pcr_inspection_url(@pcr_inspection)
    assert_response :success
  end

  test "should update pcr_inspection" do
    patch pcr_inspection_url(@pcr_inspection), params: { pcr_inspection: { clinic_id: @pcr_inspection.clinic_id, remarks: @pcr_inspection.remarks, result: @pcr_inspection.result, subject_id: @pcr_inspection.subject_id } }
    assert_redirected_to pcr_inspection_url(@pcr_inspection)
  end

  test "should destroy pcr_inspection" do
    assert_difference('PcrInspection.count', -1) do
      delete pcr_inspection_url(@pcr_inspection)
    end

    assert_redirected_to pcr_inspections_url
  end
end
