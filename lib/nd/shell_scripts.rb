require "nd/shell_scripts/version"

module Nd
  module ShellScripts
    def execute_and_record(command)
      exec "#{command} && rpt rec \"#{command}\""
    end

    def args
      ARGV.join(' ')
    end

    def args?
      ARGV.any?
    end

    def command_exists?(command)
      `which #{command}`.strip.length > 0
    end
  end
end
