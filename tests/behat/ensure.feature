@local @local_news_forum
Feature: The local news forum module auto-adds the news forum on course creation
  In order to communicate effectively
  As a teacher
  The news forum should be ready when my course is created

Background:
  Given the following "courses" exist:
    | fullname | shortname | category |
    | Course 1 | C1        | 0        |
  And the following "users" exist:
    | username | firstname | lastname | email                |
    | teacher1 | Terry     | Teacher  | teacher1@example.com |
  And the following "course enrolments" exist:
    | user     | course | role           |
    | teacher1 | C1     | editingteacher |

Scenario: I ensure that the news forum is ready
  Given I log in as "teacher1"
  And I follow "Course 1"
  Then I should see "News forum"
