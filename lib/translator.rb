require 'pry'
require 'yaml'
def load_library(file_path)
  final_hash ={}
  top_hash = YAML.load_file(file_path)
  
  top_hash.each do |key,array|
  final_hash[key] = { :english => array[0],
  :japanese => array[1]}
  end
  return final_hash
end

def get_english_meaning(file_path, character)
  message = ""
  word = ""
 start_hash = load_library(file_path)
 
 start_hash.each {|key,symbol|
 symbol.each {|inner_symbol, emoticon|
 if emoticon == character
    word = key.to_str
 end
 }
 }
 if word == ""
  message = "Sorry, that emoticon was not found"
else
  message = word
end
return message
end


def get_japanese_emoticon (file_path, character)
  
translation_hash = load_library(file_path)
word = ""
message = ""
translation = {}
translation_2 = []
#binding.pry
translation_hash.each {|key,symbol|
  symbol.each {|inner_symbol, emoticon|
    if emoticon == character
     translation = symbol
     translation.map {|symbol,emoticon|
     translation_2 << emoticon
     }
     word = translation_2[1]
    end
  }
}
if word == ""
  message = "Sorry, that emoticon was not found"
else
  message = word
end
return message


  binding.pry 
   
end







