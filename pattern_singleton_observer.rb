require 'singleton'
 class Logger
  include Singleton
  def initialize
    p '11111111111111'
    @log = File.open("logfile.txt", "a")
    p @log.methods
    p "222222222222"
  end
  def log(msg)
    p "33333333333333333"
    @log.puts(msg)
    p "4444444444444444"
  end
end

Logger.instance.log('This is just a test message')

p ###  observer pattern ###############

require
