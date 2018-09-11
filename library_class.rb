class Library

attr_accessor :book_array

  def initialize(book_array)

    @book_array = book_array
    #@book_no = book_no
    # @title = title
    # @rental_details = rental_details
    # @student_name = student_name
    # @date = date

  end

  def see_all_books(books)
    books.each{|book| return books}
  end

  def see_book_details(book)
    return book
  end

  def get_book_by_name(title)
    book_array.each{|book|
      if book[:title] == title
        return book
      end
    }
  end

  def get_rental_details(title)
    book_array.each{|book|
      if book[:title] == title
        return book[:rental_details]
      end
    }
  end

  def add_book(book_no, title)

    book_no = {title: "Hunt for Red October",
             rental_details:{student_name: "",
               date: ""}
             }

             book_array.push(book_no)
  end

  def edit_rental_details(title, student_name, date)

    for book in book_array
      if book[:title] == title
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date
      end
    end

  end

end
