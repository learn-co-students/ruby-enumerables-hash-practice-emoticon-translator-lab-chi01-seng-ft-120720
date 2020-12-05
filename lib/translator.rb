# require modules here
require 'yaml'
require 'pry'


def load_library(data)
  YAML.load_file(data).each_with_object({}) do |(names, versions), pairings|
    pairings[names] = {:english => versions[0], :japanese => versions[1]}
  end
end


def get_english_meaning(data, emoticon)
  sorted_emoticons = load_library(data)
  
  sorted_emoticons.each do |emoticon_key|
    if emoticon_key[1].key(emoticon)
      return emoticon_key[0]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(data, emoticon)
  
  sorted_emoticons = load_library(data)
  
  sorted_emoticons.each do |key, value|
    if value.key(emoticon)
      return sorted_emoticons[key][:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end