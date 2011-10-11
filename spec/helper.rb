$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'
SimpleCov.start
require 'linkedin'
require 'rspec'
require 'webmock/rspec'


def a_delete(path, endpoint=LinkedIn.endpoint)
  a_request(:delete, endpoint + path)
end

def a_get(path, endpoint=LinkedIn.endpoint)
  a_request(:get, endpoint + path)
end

def a_post(path, endpoint=LinkedIn.endpoint)
  a_request(:post, endpoint + path)
end

def a_put(path, endpoint=LinkedIn.endpoint)
  a_request(:put, endpoint + path)
end

def stub_delete(path, endpoint=LinkedIn.endpoint)
  stub_request(:delete, endpoint + path)
end

def stub_get(path, endpoint=LinkedIn.endpoint)
  stub_request(:get, endpoint + path)
end

def stub_post(path, endpoint=LinkedIn.endpoint)
  stub_request(:post, endpoint + path)
end

def stub_put(path, endpoint=LinkedIn.endpoint)
  stub_request(:put, endpoint + path)
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
