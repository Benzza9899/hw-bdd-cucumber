# frozen_string_literal: true

# Module responsible for providing helper methods related to movies
module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ? 'odd' : 'even'
  end
end
