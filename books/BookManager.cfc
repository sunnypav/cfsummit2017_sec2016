component output="false" rest="true" restpath="books"    {
	
	public any function getAllBooks() description="Gets all Books" httpmethod="get" produces="application/json,application/xml"   {
		var books = arraynew(1);
		books.append(getBook(1));
		books.append(getBook(2));
		books.append(getBook(3));
		return books;
	} 
	
	public numeric function addBook(required struct newbook restargsource="body") description="Add a new book" consumes="application/json" httpmethod="post"   {
		return RandRange(1, 1000);
	}
			
	public Book function getBook(required numeric bookid restargsource="path") description="Get Book by ID" restpath="{bookid}" produces="application/json" httpmethod="get"   {
		var book = new Book();
		book.BookId = bookid;
		book.AuthorName = "Stieg Larsson";
		book.Title = "Girl with the Dragon Tatoo";
		return book;
	}
	
	public Book function deletebook(required numeric bookid) description="Deletes Specified Book"{
		var book = new Book();
		book.BookId = bookid;
		book.AuthorName = "Stieg Larsson";
		book.Title = "Girl with the Dragon Tatoo";
		return book;
	}
}