def load_library
  {
'angel' => {
  :english => "O:)" ,     
  :japanese => "☜(⌒▽⌒)☞"
  },
'angry' => {
  :english => ">:(" ,
  :japanese => "ヽ(ｏ`皿′ｏ)ﾉ"
  },
'bored' => {
  :english => ":O" ,
  :japanese => "(ΘεΘ;)"
  },
'confused' => {
  :english => "%)" ,
  :japanese => "(゜.゜)" 
  },
'embarrassed' => {
  :english => ":$" ,
  :japanese => "(#^.^#)"
  },
'fish' => {
  :english => "><>" ,
  :japanese => ">゜))))彡"
  },
'glasses' => {
  :english => "8D" ,
  :japanese => "(^0_0^)"
  },
'grinning' => {
  :english => "=D" ,
  :japanese => "(￣ー￣)"
  },
'happy' => {
  :english => ":)" ,
  :japanese => "(＾ｖ＾)"
  },
'kiss' => {
  :english => ":*" ,
  :japanese => "(*^3^)/~☆"
  },
'sad' => {
  :english => ":'(" ,
  :japanese => "(Ｔ▽Ｔ)"
  },
'surprised' => {
  :english => ":o" ,
  :japanese => "o_O" 
  },
'wink' => {
  :english => ";)" ,
  :japanese => "(^_-)"
  }
  }
end



def get_japanese_emoticon(file_path, emoticon)
load_library(file_path).each do |emotion, emotion_value|
  binding.pry
    if emotion[0] == emoticon
      binding.pry
      return emotion[1]
     end
    end
   return "Sorry, this emoticon is unknown."
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path).each do |emotion, emotion_value|
    if emotion_value[:japanese] == emoticon
      return emotion
    end
  end
  return "Sorry, this emoticon is unknown."
end
