ActiveRecord::Schema.define(:version => 20081126122534) do

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "zip"
    t.decimal  "lat", :precision => 15, :scale => 10
    t.decimal  "lng", :precision => 15, :scale => 10
  end

  create_table "zip_codes", :force => true do |t|
    t.string   "zip"
    t.string   "state"
    t.string   "town"
    t.decimal  "longitude",  :precision => 15, :scale => 10
    t.decimal  "latitude",   :precision => 15, :scale => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
