require 'yaml'

bot_data = {
  :presubs => [
    ["dont", "don't"],
    ["youre", "you're"],
    ["love", "like"]
  ],
  
  :responses => {
    :default   => [
                    "I don't understand.",
                    "What?",
                    "Huh?"
                  ],
    :greeting  => ["Hi. I'm [name]. Want to chat?"],
    :farewell  => ["Good bye!"],
    'hello'    => [
                    "How's it going?",
                    "How do you do?"
                  ],
    'i like *' => [
                    "Why do you like *?",
                    "Wow! I like * too!"
                  ]
  }
}

# Show the user the YAML data for the bot structure
puts bot_data.to_yaml

# Write the YAML data to file
f = File.open(ARGV.first || 'bot_data', "w")
f.puts bot_data.to_yaml
f.close
