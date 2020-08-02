# Wanderlust

Wanderlust is a Travel/Vacation planner for browsing and plotting out new places you want to visit and the sights you want to see around the world. Users create their dream trips and plan their daily itineraries around the attractions they want to include. Users can also create comments and view those of others to get and receive feedback on attractions they've experienced.

## Installation

After cloning or downloading the project, use the bash terminal to install the gems by typing:

bundle install

After gems are installed, seed some objects for example content by typing:

rails db:seed

After seeding, start the server by typing:

rails s

Navigate to the URL given through Rails on a web browser.

## Usage

The Wanderlust app includes login/logout for users (including logging in from Google), and an index for all Destinations, Attractions, and Trips they've created. Users may create their trips and schedule attractions(and the corresponding destinations) either by choosing from the existing database or by adding new ones! Personal comments can be read and accessed via their My Profile page or by navigating to the specific attraction itself, where all user comments are also located.

## Development
After checking out the repo, run bundle install to install dependencies. You can run rake console for an interactive prompt that will allow you to experiment in Pry.

Run rails s to start the server or Control + C to stop the server. 

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/scottvonscott/wanderlust. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.


## Authors

* **Scott Keplinger** - *Initial work* - [scottvonscott](https://github.com/scottvonscott)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Code of Conduct

Everyone interacting in the Wanderlust project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github scottvonscott>/trivium/blob/master/CODE_OF_CONDUCT.md).

