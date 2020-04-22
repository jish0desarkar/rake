require 'csv'


    task :read do
        CSV.foreach("./lib/assets/messages.en.csv") do |row|
            Database.create!(row.to_hash)
        end 
    end
    # end

#     task :write do 
    
#         file = "#{Rails.root}/lib/assets/translate.en.csv"

#         headers = ["id", "source", "target"]

#         CSV.open(file, 'w', write_headers: true, headers: headers) do |writer|
#             products.each do |product|
#                 writer << [product.id, product.name, product.price, product.description]
#             end
#         end
#     end

#     task :run do
#         ruby("translate.rb")
#     end
# end 