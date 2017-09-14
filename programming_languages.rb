require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style1, langhash|
    langhash.each do |lang, typehash|
      typehash.each do |type, typenote|
        if new_hash.include?(lang)
          new_hash[lang][:style] << style1
        else
        new_hash[lang] = {:type => typenote, :style => [style1]}
        end
      end
    end
  end
  new_hash
end
