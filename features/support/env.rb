# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../object_abstractions', __dir__)

require 'dotenv/load'
require 'fileutils'
require 'rspec'

# logging
filename = 'log/run.log'

dirname = File.dirname(filename)
FileUtils.mkdir_p(dirname) unless File.directory?(dirname)

log_file = File.open(filename, File::WRONLY | File::APPEND | File::CREAT)
LoggerOut = Logger.new(log_file)
