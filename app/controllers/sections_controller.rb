class SectionsController < ApplicationController
  before_action :fetch_chapter

  def index
  	@sections = @chapter.sections
  end

  private
  def fetch_chapter
  	@book = Book.find(params[:book_id])
  	@chapter = @book.chapters.find(params[:chapter_id])
  end
end
