require 'rails_helper'

describe MoviesController do
  describe "#create" do
    it "create a new Movie" do
      movie1 = create(:movie, :title => 'Encanto', :rating => 'G', :release_date => '25-Nov-1992', :director => 'Robin Williams')
      movie1.should be_an_instance_of Movie
      expect(movie1.title).to eql('Encanto')
    end
  end
end
  #   before do
  #     @movie = Movie.new(:title => 'Encanto', :rating => 'G', :release_date => '25-Nov-1992', :director => 'Robin Williams')
  #   end

  # describe "movie" do
  #    it "creates movie with following attributes" do
  #      expect(@movie.title).to include('Aladdin')
  #      expect(@movie.rating).to include('G')
  #    end
  # end

  #  describe "#destroy" do


  #  describe "order" do
  #    it "is marked as complete" do
  #      expect(@order).to be_complete
  #    end

  #    it "is not yet shipped" do
  #      expect(@order).not_to be_shipped
  #    end
  #  end
#   end
# end