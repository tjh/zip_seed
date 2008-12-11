# Data from: http://www.census.gov/tiger/tms/gazetteer/zips.txt
namespace :db do
  desc "Update Member lat/lng values from Zip Codes in database." 
  task :zip_info_update => :environment do
    Member.all.each do |member|
      zip = ZipCode.find_by_zip( member.zip )
      member.lat = zip.latitude
      member.lng = zip.longitude
      member.save!
    end      
  end
end