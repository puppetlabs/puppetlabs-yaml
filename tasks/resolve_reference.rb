#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../../ruby_task_helper/files/task_helper' unless Object.const_defined?(:TaskHelper)
require 'yaml'

class YAMLReference < TaskHelper
  def task(**opts)
    path = opts[:filepath]
    boltdir = opts[:_boltdir]
    full_path = if boltdir
                  File.expand_path(path, boltdir)
                else
                  File.expand_path(path)
                end
    data = YAML.safe_load_file(full_path)
    { value: data }
  end
end

YAMLReference.run if $PROGRAM_NAME == __FILE__
