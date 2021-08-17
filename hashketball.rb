require 'pry'

# Write your code below game_hash
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
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
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
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored (player_name)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  combined_players = home_players.concat(away_players)
  
  found_player = combined_players.find do |player_array|
    player_array[:player_name] == player_name
  end

  found_player[:points]
end

def shoe_size (player_name)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  combined_players = home_players.concat(away_players)
  
  found_player = combined_players.find do |player_array|
    player_array[:player_name] == player_name
  end

  found_player[:shoe]
end

def team_colors (proposed_name)
  home_players = game_hash[:home]
  away_players = game_hash[:away]

  if proposed_name == "Brooklyn Nets"
    ["Black", "White"]
  elsif proposed_name == "Charlotte Hornets"
    ["Turquoise", "Purple"]
  else
    null
  end
end

def team_names
  combined_hash=[]
  
  game_hash.each do |individual_team|
    combined_hash << individual_team[1][:team_name]
  end

  combined_hash
end

def player_numbers(team)
  home_team = game_hash[:home]
  away_team = game_hash[:away]
  numbers_array = []

  if team == "Brooklyn Nets"
    home_team[:players].each do |individual_player|
      numbers_array << individual_player[:number]
    end
  elsif team == "Charlotte Hornets"
    away_team[:players].each do |individual_player|
      numbers_array << individual_player[:number]
    end
  end

  numbers_array
end

def player_stats(proposed_player)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  combined_players = home_players.concat(away_players)

  player_stats = combined_players.find do |player|
    player[:player_name] == proposed_player
  end

  player_stats
end

def big_shoe_rebounds
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  combined_players = home_players.concat(away_players)

  biggest_shoes = combined_players.sort_by { |player| player[:shoe] }.last
  biggest_shoes[:rebounds]
end