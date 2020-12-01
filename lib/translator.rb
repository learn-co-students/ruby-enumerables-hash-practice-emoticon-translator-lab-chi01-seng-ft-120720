# require modules here
require "yaml"
require "pry"

file = 'lib/emoticons.yml'

def load_library(path)
emoticons = YAML.load_file(path)
#binding.pry
emoticons.each_with_object({}) do |(k, v), a|
  a[k] = {:english => v[0], :japanese => v[1]}
  emoticons = a
 #binding.pry
end
#binding.pry
end
file = 'lib/emoticons.yml'
load_library(file)


def get_japanese_emoticon(path, emoji)

emoticons = load_library(path)
#binding.pry

emoticons.map do |k, v|
    #binding.pry
    v.each do |e, j|
    #  binding.pry
      if emoji == j
        return v[:japanese]
      else
        return "Sorry, that emoticon was not found"
    end
  end
end

end
emoji = ":)"
get_japanese_emoticon(file, emoji )

def get_english_meaning(path, emoji)
  # code goes here
  emoticons = load_library(path)
end
