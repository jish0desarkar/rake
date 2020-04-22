require 'upsert'
require 'csv'    

u = Upsert.new CsvDate.connection, CsvDate.table_name

CSV.foreach("./lib/assets/messages.en.csv") do |row|
    selector = { name: row['name'] } # this treats "name" as the primary key and prevents the creation of duplicates by name
    setter = row.to_hash
    u.row selector, setter 
end 