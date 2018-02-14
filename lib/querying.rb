def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  INNER JOIN series
  ON series.id = books.series_id
  WHERE series.id = 1
  ORDER BY books.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters
  GROUP BY characters.motto
  HAVING COUNT(characters.motto) > 10;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) FROM characters
  WHERE characters.species = 'human';"
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
  WHERE books.id = characters.id;"
end
