<cfscript>
	manager = new BookManager();
	writedump(manager.getAllBooks());
	
	writedump(manager.getBook(1));
	writedump(manager.addBook({
		"Title": "Game Of Thrones",
		"Author" : "George R.R. Martin", // Please release the book
		"BookId": 10
	}));
	writedump(manager.deletebook(1)); 
</cfscript>