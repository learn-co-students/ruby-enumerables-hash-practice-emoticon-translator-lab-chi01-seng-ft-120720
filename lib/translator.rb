# require modules here
require 'yaml'

def load_library(file_name)
  #"./lib/emoticons.yml"
  emoticons = YAML.load(File.read(file_name))
  final_results = emoticons.each_with_object({}) do |(key,value), final_array|
    final_array[key] = {:english => value[0], :japanese => value[1]}
  end
end

def get_japanese_emoticon(file_name, symbol)
  hash = load_library(file_name)
  list = []
  hash.each do |key, value|
    #p value
    if value[:english] == symbol
      return value[:japanese]
    #  list.push(symbol)
    end
  end
  if list == []
    return "Sorry, that emoticon was not found"
  end
end

get_japanese_emoticon("./lib/emoticons.yml",":)")

def get_english_meaning(file_name, symbol)
  hash = load_library(file_name)
  list = []
  hash.each do |key, value|
    if value[:japanese] == symbol
      return key
      list.push(symbol)
    end
  end
  if list == []
    return "Sorry, that emoticon was not found"
  end
end
