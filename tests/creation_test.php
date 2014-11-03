<?php

class local_news_forum_creation_testcase extends advanced_testcase {
    public function test_create_news_forum() {
        global $DB;

        $this->resetAfterTest(true);
        $this->assertEquals($DB->count_records('forum', array('type' => 'news')), 0);

        $course = $this->getDataGenerator()->create_course();
        $course = $DB->get_record('course', array('id' => $course->id));

        $this->assertEquals($DB->count_records('forum', array('type' => 'news')), 1);
        $this->assertEquals($DB->count_records('forum', array('type' => 'news', 'course' => $course->id)), 1);
    }
}
