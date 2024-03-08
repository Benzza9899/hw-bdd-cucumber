# frozen_string_literal: true

# การย้ายข้อมูลเพื่อสร้างตารางบทวิจารณ์
class CreateReviews < ActiveRecord::Migration
  # สร้างตารางบทวิจารณ์พร้อมคอลัมน์สำหรับ potatoes comments ข้อมูลอ้างอิงของผู้ดูภาพยนตร์ และการอ้างอิงภาพยนตร์
  def change
    create_table :reviews do |t|
      t.integer    'potatoes'
      t.text       'comments'
      t.references 'moviegoer'
      t.references 'movie'
    end
  end
end
