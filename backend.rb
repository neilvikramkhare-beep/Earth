# ==============================================================================
# Earth Language Unified Master Backend - Ruby (.rb)
# File: backend.rb
# Provides native Ruby backend support with Mixins, Yield blocks, and WEBrick server.
# ==============================================================================

require 'json'
require 'webrick'

# Ruby Style Mixin Simulator & Helper
module EarthLoggerMixin
  def log_info(message)
    puts "[INFO] #{Time.now.strftime('%Y-%m-%d %H:%M:%S')} - #{message}"
  end
end

class EarthService
  include EarthLoggerMixin

  attr_accessor :name

  def initialize(name = "Earth Core Service")
    @name = name
  end

  def perform_operation(&block)
    log_info("Starting operation on #{@name}...")
    yield(@name) if block_given?
    log_info("Operation completed successfully.")
  end
end

# Yield / Times simulation
def earth_times(n)
  (0...n).each { |i| yield(i) }
end

# WEBrick Server Setup
def start_webrick_server(port = 8084)
  server = WEBrick::HTTPServer.new(Port: port, Logger: WEBrick::Log.new(nil, WEBrick::BasicLog::WARN))
  server.mount_proc '/api/status' do |req, res|
    res['Content-Type'] = 'application/json'
    res.body = { runtime: 'Ruby', status: 'online', language: 'Earth' }.to_json
  end
  puts "[*] Earth Ruby WEBrick Server configured on port #{port}"
  server
end

# Verification Runner
puts "========================================"
puts " Earth Unified Backend Engine (Ruby .rb)"
puts "========================================"

service = EarthService.new("Telemetry Worker")
service.perform_operation do |svc|
  puts "  Executing custom block logic inside #{svc}"
end

puts "Testing Yield Execution:"
earth_times(3) do |idx|
  puts "  Iteration #{idx + 1} processed"
end

puts "[+] Ruby Backend Module Verified Successfully!"
