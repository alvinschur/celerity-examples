#!/usr/bin/env ruby

require 'rubygems'
require 'ramaze'

# require all controllers and models
Ramaze.acquire __DIR__('controller/*')
Ramaze.acquire __DIR__('model/*')

Ramaze.start :adapter => :webrick, :port => 7000
