require 'telegram/bot'
require_relative '../lib/commander.rb'

token = '816195299:AAFOAdDX3ap3zx_uoX_ey4AxwjmvnQPKRYw'
Telegram::Bot::Client.run(token) do |bot|
  puts 'bot is running'
  bot.listen do |message|
    puts message.text.to_s
    Commander.new(message, bot).respond
  end
end
