require 'pry'
def dictionary(word)
my_dictionary = {"hello":"hi",
  "to":"2",
  "two":"2",
  "too":"2",
  "four":"4",
  "for":"4",
  "For":"4",
  "be":"b",
  "you":"u",
  "at":"@",
  "and":"&"}

my_dictionary[word.to_sym]
# binding.pry
end


def word_substituter(tweet)
tweet_array = tweet.split
tweet_array.each_with_index do |word, index|
  # binding.pry
  shortened_word = dictionary(word)
  if shortened_word != nil
    tweet_array[index] = shortened_word
  end

end

tweet = tweet_array.join(" ")

end

def bulk_tweet_shortener(tweets)
for tweet in tweets
puts word_substituter(tweet)
end

end

def selective_tweet_shortener(tweet)
if tweet.length > 140
  tweet = word_substituter(tweet)
end
tweet
end

def shortened_tweet_truncator(tweet)
return tweet if tweet.length < 140
shortened_tweet = word_substituter(tweet)
if shortened_tweet.length > 140
  shortened_tweet = shortened_tweet[0..136]
  shortened_tweet << "..."
end


shortened_tweet
end

