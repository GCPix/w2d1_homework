require('minitest/autorun')
require('minitest/rg')

require_relative('../library_class')

class Test_Library_Class < Minitest::Test
def setup

  @book1= {title: "Rumours of Rain",
         rental_details:{student_name: "Harry Potter",
           date: "12/09/2018"}
         }

  @book2= {title: "Mort",
                 rental_details:{student_name: "Rincewind",
                   date: "12/10/2018"}
         }

  @book3= { title: "The Queens Fool",
                 rental_details:{student_name: "Elizabeth R",
                   date: "12/01/2018"}
         }
@book_array = [@book1, @book2, @book3]


@library = Library.new(@book_array)




end

  def test_get_books_array

    result = @library.see_all_books(@book_array)

    assert_equal([{:title=>"Rumours of Rain", :rental_details=>{:student_name=>"Harry Potter", :date=>"12/09/2018"}}, {:title=>"Mort", :rental_details=>{:student_name=>"Rincewind", :date=>"12/10/2018"}}, {:title=>"The Queens Fool", :rental_details=>{:student_name=>"Elizabeth R", :date=>"12/01/2018"}}], result)
  end

  def test_get_book_details
    result = @library.see_book_details(@book1)

    assert_equal({:title=>"Rumours of Rain", :rental_details=>{:student_name=>"Harry Potter", :date=>"12/09/2018"}}, result)
  end

  def test_get_book_by_name
    result = @library.get_book_by_name("Mort")

    assert_equal({:title=>"Mort", :rental_details=>{:student_name=>"Rincewind", :date=>"12/10/2018"}}, result)
  end

  def test_get_rental_details
    result = @library.get_rental_details("Mort")

    assert_equal({student_name: "Rincewind",
      date: "12/10/2018"}, result)

  end

  def test_add_book_to_library
    @library.add_book(@book4, "Hunt for Red October")
    result = @library.get_book_by_name("Hunt for Red October")
    #result = @library.get_book_by_name("Hunt for Red October")

    assert_equal({title: "Hunt for Red October",
             rental_details:{student_name: "",
               date: ""}
             }, result)
  end

  def test_edit_rental_details
    @library.edit_rental_details("Mort", "Sam Vimes", "15/10/2018")

    result = @library.get_rental_details("Mort")

    assert_equal({student_name: "Sam Vimes", date: "15/10/2018"}, result)
  end


end
