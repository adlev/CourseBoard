# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140713233417) do

  create_table "course_evals", primary_key: "eval_nbr", force: true do |t|
    t.string "eval_num_respnd"
    t.string "eval_num_evtaker_total"
    t.string "eval_seq_nbr"
    t.string "eval_tmplt_nbr"
    t.string "fk_class_nbr"
  end

  add_index "course_evals", ["fk_class_nbr"], name: "fk_class_nbr", using: :btree

  create_table "courses", primary_key: "class_nbr", force: true do |t|
    t.string "term"
    t.string "crse_id"
    t.string "crse_offer_nbr"
    t.string "session_code"
    t.string "subject"
    t.string "catalog_nbr"
    t.string "class_section"
    t.string "class_descr254"
    t.string "crse_component"
    t.string "acad_group"
    t.string "deptID"
    t.string "combined_section"
    t.string "class_home_away_ind_cd"
  end

  create_table "indiv_text_feedback", primary_key: "text_id", force: true do |t|
    t.string "text"
    t.string "fk_word_id"
    t.string "fk_eval_nbr"
  end

  add_index "indiv_text_feedback", ["fk_eval_nbr"], name: "fk_eval_nbr", using: :btree
  add_index "indiv_text_feedback", ["fk_word_id"], name: "fk_word_id", using: :btree

  create_table "instructors", primary_key: "instructor_id", force: true do |t|
    t.string "title"
    t.string "tenure"
    t.string "gender"
    t.string "division"
    t.string "fk_class_nbr"
  end

  add_index "instructors", ["fk_class_nbr"], name: "fk_class_nbr", using: :btree

  create_table "questions", primary_key: "Q_nbr", force: true do |t|
    t.string "Q_nbr_text"
  end

  create_table "scores", primary_key: "feedback_id", force: true do |t|
    t.string "textbook"
    t.string "instructor"
    t.string "lectures"
    t.string "exams"
    t.string "homework"
    t.string "content"
    t.string "avg_length"
    t.string "fk_class_nbr"
    t.string "fk_eval_nbr"
    t.string "rslt_median"
    t.string "fk_Q_nbr"
  end

  add_index "scores", ["fk_Q_nbr"], name: "fk_Q_nbr", using: :btree
  add_index "scores", ["fk_class_nbr"], name: "fk_class_nbr", using: :btree
  add_index "scores", ["fk_eval_nbr"], name: "fk_eval_nbr", using: :btree

  create_table "words", primary_key: "word_id", force: true do |t|
    t.string "word"
    t.string "time_word_occurs"
    t.string "nbr_unique_feedback_items"
    t.string "word_score"
  end

end
