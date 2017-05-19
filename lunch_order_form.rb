#user chooses from list of maim dishes
#user chooses 2 side dishes
#computer repeats order back to customer
#computer total's order and displays total

#BONUSES
#user can choose as many add-ons as they want
#user has wallet total they start with and they cannot exceed what they can pay for
 #program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
#main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
#descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
#display to the user not only their total but the total fat content / calories / carbs / ect...
class Entree
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end

entree1 = Entree.new("Traditional Ramen", 6.00)
entree2 = Entree.new("Classic PB&J", 3.00)
entree3 = Entree.new("Slice O'Pizza", 3.00)


class Side 
    attr_accessor :name, :price
    def initialize
        @name = name
        @price = price
    end

side4 = Side.new("Steamed Veggies", 1.00)
side5 = Side.new("Salad", 2.00)
side6 = Side.new("French Fries", 2.00)
side7 = Side.new("Onion Rings", 3.00)

def choose_entree
    lunch_menu
end


def choose_side
    lunch_menu
end


def lunch_menu
    puts "\n******** Student Lunch Order Form **********"
    puts "\nENTREES\n"
    puts "\t1. Traditional Ramen $6.00"
    puts "\t2. Classic PB&J $3.00"
    puts "\t3. Slice O'Pizza $4.00"
    puts "\nSIDES\n"
    puts "\t4. Steamed Veggies (yuck!) $1.00"
    puts "\t5. Salad (only slightly better) $2.00"
    puts "\t6. French Fries (now we are talkin!) $2.00"
    puts "\t7. Onion Rings $3.00"
    puts "\n\n Choose one Entree, and two sides"
end

