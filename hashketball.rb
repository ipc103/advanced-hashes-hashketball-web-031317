# Write your code here!
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored(name)
  # given an array of player data (hashes), find the one whose name matches
  # What is a player?

  ## iterate over the list of players
  ## Find the one whose `player_name` matches the name that we're looking for

  player = find_player(name)
  # find the number of points scored for that player
  player[:points]
end

def shoe_size(name)
  # I have a big data structure with info about teams and players
  # I want to return the number of points scored for a given player by name

  # given an array of player data (hashes), find the one whose name matches
  # What is a player?

  ## iterate over the list of players
  ## Find the one whose `player_name` matches the name that we're looking for

  player = find_player(name)
  # find the number of points scored for that player
  player[:shoe]
end

def players
  #  go through all of the players...
  home_team_players = game_hash[:home][:players]
  away_team_players = game_hash[:away][:players]
  home_team_players + away_team_players
end

def find_player(name)
  players.find do |player_data|
    player_data[:player_name] == name
  end
end

# names = ["Meryl", "Ian"]
#
# names.each do |name|
#   puts name
# end
#
# upcased_names = names.collect do |name|
#   name.upcase
# end


# writing methods to use inside of other methods
