def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  INNER JOIN series
  ON series.id = books.series_id
  WHERE series.id = 1
  ORDER BY books.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto
  from characters
  GROUP by characters.name
  ORDER by max(characters.motto) LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(*) AS num FROM characters
  GROUP BY species
  ORDER BY species DESC limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  INNER JOIN series
  ON authors.id = series.author_id
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  WHERE characters.species = 'human' LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title) FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  INNER JOIN books
  ON character_books.book_id = books.id
  Group by characters.name
  ORDER by COUNT(books.title) DESC;"
end
