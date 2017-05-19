require 'pry'
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
end

@entree1 = Entree.new("Traditional Ramen", 6.00)
@entree2 = Entree.new("Classic PB&J", 3.00)
@entree3 = Entree.new("Slice O'Pizza", 3.00)


class Side 
    attr_accessor :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

@side4 = Side.new("Steamed Veggies", 1.00)
@side5 = Side.new("Salad", 2.00)
@side6 = Side.new("French Fries", 2.00)
@side7 = Side.new("Onion Rings", 3.00)

@food_ordered = []
@total = 0

def total_order
    if @food_ordered.length < 3
        choose_side
    else
        puts "\nYour Order:"
        puts "---------------"
        puts @food_ordered
        puts "---------------"
        puts "$#{@total}\n\n"
    end
end

def choose_entree
    lunch_menu
    puts "Enter the Entree you would like"
    print"> "

    entree_dish_choice = gets.strip

    case entree_dish_choice
        when "1"
            @food_ordered << @entree1.name
            @total = @total + @entree1.price
    end

    choose_side
end


def choose_side
    lunch_menu
    puts "Enter the side you would like"
    print "> "
    
    side_dish_choice = gets.strip

    case side_dish_choice
        when "4"
            @food_ordered << @side4.name 
            @total = @total + @side4.price
        when "5"
            @food_ordered << @side5.name
            @total = @total + @side5.price
    end
    total_order
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
    puts "\n\n Choose one Entree, and two Sides"
end

choose_entree
