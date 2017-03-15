require 'csv'


# Create 18 Holes
18.times do
  Hole.create(
    placement: ("A".."D").to_a.sample,
    distance: (200..340).to_a.sample,
    par: 3,
    stroke_count: (2..4).to_a.sample,
    card_id: 1
   )
end


user = User.create(
  email: "jasonsutter87@gmail.com",
  password:  "123456",
)

# Create a card
round = Round.create(
  course_name: "Rocklin Disc Golf",
  course_avg:  55,
  hole_count: 18,
  course_id: 1,
  player_id: 1
)


csv_text = File.open(File.dirname(__FILE__) + '/DGCali.csv', "r:ISO-8859-1")
CSV.parse(csv_text, :headers => true) do |row|
  Course.create(
      :name => row[0], 
      :address => row[1], 
      :city => row[2], 
      :state => row[3], 
      :zip => row[4], 
      :hole_count => row[5], 
      :course_condition => row[6], 
      :hole_type => row[7], 
      :tee_type => row[8], 
      :lat => row[9], 
      :long => row[10], 
      :pay => row[11], 
      :private => row[12], 
      :ave_score => row[13], 
      :played => row[14], 
      :comments => row[15] 

    )
end

