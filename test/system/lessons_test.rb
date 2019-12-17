require "application_system_test_case"

class LessonsTest < ApplicationSystemTestCase
  setup do
    @lesson = lessons(:one)
  end

  test "visiting the index" do
    visit lessons_url
    assert_selector "h1", text: "Lessons"
  end

  test "creating a Lesson" do
    visit lessons_url
    click_on "New Lesson"

    fill_in "End time", with: @lesson.end_time
    fill_in "Lesson type", with: @lesson.lesson_type
    fill_in "Name", with: @lesson.name
    fill_in "School year", with: @lesson.school_year
    fill_in "Start time", with: @lesson.start_time
    fill_in "Teacher", with: @lesson.teacher
    fill_in "Weekday", with: @lesson.weekday
    click_on "Create Lesson"

    assert_text "Lesson was successfully created"
    click_on "Back"
  end

  test "updating a Lesson" do
    visit lessons_url
    click_on "Edit", match: :first

    fill_in "End time", with: @lesson.end_time
    fill_in "Lesson type", with: @lesson.lesson_type
    fill_in "Name", with: @lesson.name
    fill_in "School year", with: @lesson.school_year
    fill_in "Start time", with: @lesson.start_time
    fill_in "Teacher", with: @lesson.teacher
    fill_in "Weekday", with: @lesson.weekday
    click_on "Update Lesson"

    assert_text "Lesson was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson" do
    visit lessons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson was successfully destroyed"
  end
end
