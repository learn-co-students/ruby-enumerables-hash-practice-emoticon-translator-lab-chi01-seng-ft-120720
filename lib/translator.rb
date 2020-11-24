# require modules here
require "yaml"
require "pry"

def load_library(file)
# load the library w/ YAML
  emoticon_library = YAML.load_file(file)
  
  emoticon_library.collect do |key, value|
    emoticon_library[key] = {:english => value[0], :japanese => value[1]}  
  end 
  emoticon_library
end

def get_japanese_emoticon(file, english_emoticon)
  
  emoticon_library = load_library(file)

  emoticon_library.each do |key_emotion, value_eng_jap_hashes|
    value_eng_jap_hashes.each do |langauge_key, emoticon_value|
      if value_eng_jap_hashes[langauge_key] == english_emoticon
        return value_eng_jap_hashes[:japanese]
      end 
    end 
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file, japanese_emoticon)
  emoticon_library = load_library(file)
  emoticon_library.each do |key_emotion, value_eng_jap_hashes|
    value_eng_jap_hashes.each do |langauge_key, emoticon_value|
      if value_eng_jap_hashes[langauge_key] == japanese_emoticon
        return key_emotion
      end 

    end 
  end
  return "Sorry, that emoticon was not found"

end