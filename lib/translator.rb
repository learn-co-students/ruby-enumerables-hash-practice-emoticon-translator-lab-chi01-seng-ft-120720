require 'yaml'
require 'pry'

def load_library(file)
file = './lib/emoticons.yml'
file_path = YAML.load_file(file)
emoticon_hash = file_path
  emoticon_hash.map do |emotion, emotion_value|
    emoticon_hash[emotion] = {
    :english => emotion_value[0], 
    :japanese => emotion_value[1]}
    end
  return emoticon_hash
end

def get_english_meaning(file, emoticon)
  emoticon_hash = load_library(file)
    emoticon_hash.each do |emotion, emotion_value|
      if emoticon == emotion_value[:japanese]
        return emotion
      end
    end
  return "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file, emoticon)
 emoticon_hash = load_library(file)
  emoticon_hash.each do |emotion, emotion_value|
    if emotion_value[:english] == emoticon
      return emotion_value[:japanese]
      end
    end
  return "Sorry, that emoticon was not found"
end