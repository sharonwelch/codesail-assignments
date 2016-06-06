# create a hash tht has item:quantity
# loop over hash, look-up against CSV (grab values base of and put into an array)
# add all up
#

# fix quant

require 'csv'

def main
    csv = CSV.read("groceries.csv", headers: true)
    puts "Welcome to the grocery store. These are our offerings:"
    puts csv

    puts "Please enter the items you want and type 'end' to quit"
    user_list = []

    total = 0
    quant = 0

    while user_list.length == 0 || user_list.last != 'end'
        user_list << gets.chomp.strip.downcase
        if user_list.last == 'end'
            break
        end

        puts "How many?"
        quant = gets

        csv.each do |row|
            user_list.map do |item|
                if row["item"] == item
                    total += row["price"].to_f * quant.to_f
                    puts "#{quant}"
                    quant = 0
                    puts "Next item:"
                    break
                end
            end
        end
    end
    puts "Your total is " + total.to_s
end
main
