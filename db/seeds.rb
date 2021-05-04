# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
table = CSV.read(File.expand_path('../core-products.csv', __FILE__))

table.drop(1).each do |row|
  CoreProduct.create!(
    core_number: row[0],
    internal_title: row[1],
    vendor: row[2],
    vendor_title: row[3],
    vendor_sku: row[4],
    backup_vendor: row[5],
    backup_vendor_sku: row[6],
    restockable: row[7],
    vendor_order_unit: row[8],
    vendor_case_pack: row[9],
    moq: row[10],
    buffer_days: row[11],
    minimum_level: row[12],
    product_url: row[13],
    note_for_next_order: row[14],
    case_pack: row[15],
    pieces_per_internal_box: row[16],
    boxes_per_case: row[17],
    tags_and_info: row[18],
    tag_one: row[19],
    tag_two: row[20],
    tag_three: row[21],
    tag_four: row[22],
    hazmat: row[23],
    active: row[24],
    ignore_until: row[25],
    notes: row[26]
  )
end