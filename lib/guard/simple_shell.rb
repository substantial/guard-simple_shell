require 'rainbow'
module Guard
  class Simpleshell < Plugin
    def initialize(options={})
      @command = options[:command]
      @run_on_start = options[:run_on_start]
      super
    end

    def run_on_changes(paths)
      run @command
    end

    def start
      run @command if @run_on_start
    end

    def stop
    end

    def run(command)
      log "running #{@command}"
      system @command
    end

    def log(msg)
      name = @options[:name]
      output = Rainbow("SHELL").color(:yellow).bright()
      output << "[" + Rainbow(name).color(:blue) + "]"
      output << " #{msg}"
      puts output
    end
  end
end
