# frozen_string_literal: true

# การย้ายข้อมูลเพื่อสร้างตารางผู้ชมภาพยนตร์โดยใช้ Devise เพื่อตรวจสอบสิทธิ์
class DeviseCreateMoviegoers < ActiveRecord::Migration[6.0]
  # สร้างตารางผู้ชมภาพยนตร์พร้อมคอลัมน์สำหรับตรวจสอบสิทธิ์และคุณลักษณะอื่นๆ
  def change
    create_table :moviegoers do |t|
      t.string :email, null: false, default: ''
      t.string :encrypted_password, null: false, default: '', full_name: '', uid: '', avatar_url: '', provider: '',
                                    reset_password_token: ''
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.timestamps null: false
    end
    add_index :moviegoers, :email, unique: true
    add_index :moviegoers, :reset_password_token, unique: true
  end
end
