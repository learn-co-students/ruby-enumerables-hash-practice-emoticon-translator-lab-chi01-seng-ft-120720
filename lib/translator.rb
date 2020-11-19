require 'yaml'

require 'pry'

def load_library(hash)
  hash = YAML.load_file("lib/emoticons.yml")
    hash.each do |key, value|
      hash[key] = {}
      hash[key][:english] = value[0]
      hash[key][:japanese] = value[1]
    end
end

def get_english_meaning(hash, emoticon)
  
  load_library(hash).each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end 
  return "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(hash, emoticon)
  load_library(hash). each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]  
    end
  end 
  return "Sorry, that emoticon was not found"
end

