require 'pry'

numCompetitors = 5
topNCompetitors = 2
competitors = ["anacell", "betacellular", "deltacellular", "eurocell"]
numReviews = 3
# reviews = ["Best services procided my eurocell", "betacellular has great sevices", "deltacellular provides much better services the all others"]
review = ["anacell", "betacell", "deltacellular", "eurocell"]

def topNCompetitors(numCompetitors, topNCompetitors, competitors, numReviews, reviews)

  return competitors if topNCompetitors > numCompetitors


  review_accumulator = {}
  competitors.each do |competitor|
    review_accumulator[competitor] = 0
  end

  reviews.each do |review|
    competitors.each do |competitor|
      if review.include?(competitor)
        review_accumulator[competitor] += 1
      end
    end
  end

  output_competitors = []

  review_accumulator.each do |review|
    output_competitors << review if review[1] > 0
  end

  x = []
  output_competitors.each do |comp|
    x << comp[0]
  end
  x
end

puts topNCompetitors(numCompetitors, topNCompetitors, competitors, numReviews, reviews)

# anacell, betacellular

