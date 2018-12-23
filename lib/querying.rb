def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
   INNER JOIN series
   ON series_id = series.id
   WHERE series.id = 1
   ORDER BY year";
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
   ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS count_species FROM characters
   GROUP BY species
   ORDER BY count_species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
   INNER JOIN subgenres ON subgenres.id = series.subgenre_id
   INNER JOIN series ON series.author_id = authors.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM series
   INNER JOIN characters ON characters.series_id = series.id
   WHERE species == 'human'
   LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS count FROM character_books
   INNER JOIN characters ON character_books.character_id = characters.id
   GROUP BY characters.name
   ORDER BY count DESC;"
end
