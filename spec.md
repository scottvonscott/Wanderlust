Specs:

 [x]Using Ruby on Rails for the project
    - Wanderlust was made using Ruby on Rails.

 [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    - Wanderlust has multiple has_many relationships (User has_many Comments, Trips has_many Itineraries, etc.)

 [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    - Wanderlust has multiple belongs_to relationships (Attraction belongs_to Destionation, Trip belongs_to User, etc.)

 [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    - Wanderlust has multiple has_many through relationships (Itineraries has_many  Destinations through Attractions, Users has_many Itineraries through trips, etc.)

 [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
     The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)

     - Wanderlust has a prominent many-to-many relationship in Itineraries has_many Attractions through Scheduled Attractions, and Attractions has_many Itineraries through Scheduled Attracdtions. Scheduled Attractions has a "time_of_day" submitted attribute for planning activities.

 [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    -Wanderlust uses standard validations for models, including uniquess as defined by Scope. (e.g. Destination City is unique for the country. That's why you have places like Paris, Texas.)

 [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

    - Wanderlust include class level scope method. Attraction Model uses 

    def self.order_by_location
        self.joins(:destination).order('city ASC')
    end


 [x] Include signup (how e.g. Devise)

    -Wanderlust users may signup, login with Wanderlust, login in Google, and logout


 [x] Include login (how e.g. Devise)
    -Wanderlust users may signup, login with Wanderlust, login in Google, and logout

 [x] Include logout (how e.g. Devise)
    -Wanderlust users may signup, login with Wanderlust, login in Google, and logout

 [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    -Wanderlust users may signup, login with Wanderlust, login in Google, and logout

 [x] Include nested resource show or index (URL e.g. users/2/recipes)
    -Wanderlust includes multiple nested resources for "show" such as Destination(parent) and Attraction(child)

 [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
     -Wanderlust includes multiple nested resources for "new" such as Itinerary(parent) and Scheduled Attraction(child)

 [x] Include form display of validation errors (form URL e.g. /recipes/new)
    -All Wanderlust forms refer to a shared error partial for validations errors found in a submitted form.



Confirm:

 [x]The application is pretty DRY
    -Wanderlust utitlizes partials and model class methods to stay DRY
 [x]Limited logic in controllers
    -Wanderlust passes most login onto model class methods
 [x]Views use helper methods if appropriate
    -Wanderlust uses helper methods mostly for user login checks
 [x]Views use partials if appropriate
    -Wanderlust uses partials for errors and some forms