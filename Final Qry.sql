use Libs

create table tbl_book (
	Bookid int primary key not null identity (1,1),
	Title varchar(50) not null,
	PublisherName varchar(50) not null
);

create table tbl_BookAuthors (
	Bookid int primary key not null,
	AuthorName varchar(50) not null
);

create table tbl_Publisher (
	Name varchar(50) primary key not null,
	Address_ varchar(80) not null,
	Phone varchar(50) not null
);

create table tbl_BookLoans (
	Bookid int not null,
	Branchid int not null,
	CardNo int not null,
	DateOut varchar (20) not null,
	DueDate varchar (20) not null
);

create table tbl_BookCopies (
	Bookid int primary key identity (1,1) not null,
	Branchid int not null,
	No_Of_Copies int not null
);

create table tbl_Borrower (
	CardNo int primary key not null,
	Name varchar(50) not null,
	Address_ varchar(80) not null,
	Phone varchar(50) not null,
);

create table tbl_LibraryBranch (
	Branchid int primary key not null,
	BranchName varchar(80) not null,
	Address_ varchar(80) not null
);

-----------------------------
insert into tbl_LibraryBranch 
(Branchid, BranchName, Address_)
Values
(123, 'Sharpstown', '123 SW Point Avenue'),
(456, 'Central', '987 NW Dull Street'),
(789, 'Beaverton', '1234 NW Sunset Lane'),
(101112, 'Tigard', '8723 SW Tigard Drive')
;

insert into tbl_book
(Title, PublisherName)
Values
('Despicable Me','Grupo'),
('The Lost Tribe','Walters'),
('Howdy', 'Hachette'),
('Basketball.','Grupo'),
('Boxing', 'Hachette'),
('Real Estate','Walters'),
('@Me', 'Walters'),
('Tables','Walters'),
('Food','Grupo'),
('Today','Grupo'),
('Slime','Walters'),
('Mountains','Grupo'),
('Dogs', 'Hachette'),
('Best Cereal','Grupo'),
('Video Games','Hachette'),
('Houses','Walters'),
('@you','Walters'),
('Lacrosse','Walters'),
('Sound Systems','Grupo'),
('Swag','Grupo')
;


insert into tbl_BookAuthors
(Bookid, AuthorName)
Values
(1, 'Simmons'),
(2, 'Simmons'),
(3, 'Brown'),
(4, 'Brown'),
(5, 'Wolf'),
(6, 'Wolf'),
(7, 'Manny'),
(8, 'Manny'),
(9, 'Roney'),
(10, 'Roney'),
(11, 'Luen'),
(12, 'Luen'),
(13, 'Green'),
(14, 'Green'),
(15, 'Jennings'),
(16, 'Jennings'),
(17, 'Sunny'),
(18, 'Sunny'),
(19, 'Amy'),
(20, 'Amy')
;

insert into tbl_BookCopies
(Branchid, No_Of_Copies)
Values
(456, 2),
(123, 2),
(123, 2),
(456, 2),
(123, 2),
(456, 2),
(123, 2),
(456, 2),
(123, 2),
(456, 2),
(456, 2),
(123, 2),
(456, 2),
(456, 2),
(456, 2),
(123, 2),
(456, 2),
(123, 2),
(123, 2),
(123, 2),
(456, 2),
(456, 2)
;


insert into tbl_Borrower
(CardNo, Name, Address_, Phone)
Values
(1111, 'Becka', '8271 Kingston St. Ironside, OR 97908', '503-211-5325'),
(2222, 'Tim', '583 S. Queen St. Midland, OR 97634', '503-643-7726'),
(3333, 'Ana', '44 Grant Ave. Culver, OR 97734', '503-146-7311'),
(4444, 'Bob', '2 Canal Street Portland, OR 97216', '503-616-4325'),
(5555, 'Morgan', '11 Mechanic Street Salem, OR 97314', '503-632-7347'),
(6666, 'Holly', '24 Shadow Ave. Shady Cove, OR 97539', '503-123-4567'),
(7777, 'Nick', '223 Bohemia Rd. Sublimity, OR 97385', '503-987-6543'),
(8888, 'Alex', '57 Newcastle Avenue Bend, OR 97702', '503-151-6421')
;

insert into tbl_BookLoans
(Bookid, Branchid, CardNo, DateOut, DueDate)
Values
(1, 456, 3333, '1-1-2018', '1-20-2018'),
(3, 123, 3333,'1-1-2018', '1-20-2018'),
(5, 123, 3333, '1-1-2018', '1-20-2018'),
(19, 123, 3333, '1-1-2018', '1-20-2018'),
(14, 123, 3333, '1-1-2018','1-20-2018'),
(6, 456, 6666, '1-20-2018', '2-10-2018'),
(12, 123, 6666, '1-20-2018', '2-10-2018'),
(1, 456, 6666, '1-20-2018', '2-10-2018'),
(10, 456, 6666, '1-20-2018', '2-10-2018'),
(13, 456, 6666, '1-20-2018', '2-10-2018'),
(1, 456, 1111, '3-1-2018', '3-20-2018'),
(3, 123, 5555,'3-1-2018', '3-20-2018'),
(5, 123, 2222, '3-1-2018', '3-20-2018'),
(19, 123, 8888, '3-1-2018', '3-20-2018'),
(14, 123, 7777, '3-1-2018','3-20-2018'),
(6, 456, 4444, '3-20-2018', '4-10-2018'),
(12, 123, 2222, '3-20-2018', '4-10-2018'),
(6, 456, 1111, '3-20-2018', '4-10-2018'),
(10, 456, 4444, '3-20-2018', '4-10-2018'),
(13, 456, 6666, '3-20-2018', '4-10-2018'),
(1, 456, 4444, '5-1-2018', '5-20-2018'),
(3, 123, 5555,'5-1-2018', '5-20-2018'),
(5, 123, 3333, '5-1-2018', '5-20-2018'),
(19, 123, 7777, '5-1-2018', '5-20-2018'),
(14, 123, 3335, '5-1-2018','5-20-2018'),
(6, 456, 6666, '5-20-2018', '6-10-2018'),
(12, 123, 3333, '5-20-2018', '6-10-2018'),
(6, 456, 7777, '5-20-2018', '6-10-2018'),
(10, 456, 8888, '5-20-2018', '6-10-2018'),
(13, 456, 4444, '5-20-2018', '6-10-2018'),
(1, 456, 7777, '7-1-2018', '7-20-2018'),
(3, 123, 3333,'7-1-2018', '7-20-2018'),
(5, 123, 8888, '7-1-2018', '7-20-2018'),
(19, 123, 2222, '7-1-2018', '7-20-2018'),
(14, 123, 1111, '7-1-2018','7-20-2018'),
(6, 456, 1111, '7-20-2018', '8-10-2018'),
(12, 123, 8888, '7-20-2018', '8-10-2018'),
(6, 456, 3333, '7-20-2018', '8-10-2018'),
(10, 456, 5555, '7-20-2018', '8-10-2018'),
(13, 456, 5555, '7-20-2018', '8-10-2018'),
(1, 456, 2222, '9-1-2018', '9-20-2018'),
(3, 123, 8888,'9-1-2018', '9-20-2018'),
(5, 123, 5555, '9-1-2018', '9-20-2018'),
(19, 123, 1111, '9-1-2018', '9-20-2018'),
(14, 123, 1111, '9-1-2018','9-20-2018'),
(6, 456, 2222, '9-20-2018', '10-10-2018'),
(12, 123, 8888, '9-20-2018', '10-10-2018'),
(6, 456, 3333, '9-20-2018', '10-10-2018'),
(10, 456, 7777, '9-20-2018', '10-10-2018'),
(13, 456, 4444, '9-20-2018', '10-10-2018'),
(2, 456, 3333, '9-20-2018', '10-10-2018')
;



insert into tbl_book
(Title, PublisherName)
Values
('Druma Key', 'Scribner'), 
('The Eyes of the Dragon', 'Viking')
;

insert into tbl_BookAuthors
(Bookid, AuthorName)
Values
(21, 'Stephen King'),
(22, 'Stephen King')
;

CREATE PROCEDURE FinalQuery
AS

BEGIN
	
	select tbl_BookCopies.No_Of_Copies
	from tbl_BookCopies
	inner join tbl_book
	on tbl_book.Bookid = tbl_BookCopies.Bookid
	inner join tbl_LibraryBranch
	on tbl_LibraryBranch.Branchid = tbl_BookCopies.Branchid
	where tbl_book.Title = 'The Lost Tribe' and tbl_LibraryBranch.BranchName = 'Sharpstown';


	select tbl_BookCopies.Branchid, tbl_BookCopies.No_Of_Copies
	from tbl_BookCopies
	inner join tbl_book
	on tbl_book.Bookid = tbl_BookCopies.Bookid
	where tbl_book.Title = 'The Lost Tribe';


	select tbl_Borrower.Name
	from tbl_Borrower
	inner join tbl_BookLoans
	on tbl_BookLoans.CardNo = tbl_Borrower.CardNo
	where tbl_BookLoans.DateOut != '4-10-18' and tbl_BookLoans.DueDate != '5-1-2018';



	select tbl_book.Title, tbl_Borrower.Name, tbl_Borrower.Address_
	from tbl_book, tbl_Borrower
	left join tbl_BookLoans
	on tbl_BookLoans.CardNo = tbl_Borrower.CardNo
	inner join tbl_LibraryBranch
	on tbl_LibraryBranch.Branchid = tbl_BookLoans.Branchid
	where tbl_LibraryBranch.BranchName = 'Sharpstown' and tbl_BookLoans.DueDate = '4-12-18';



	select tbl_LibraryBranch.BranchName, count(tbl_BookLoans.Branchid) as Books_Loaned
	from tbl_LibraryBranch, tbl_BookLoans
	inner join tbl_book
	on
	tbl_book.Bookid = tbl_BookLoans.Bookid
	where tbl_BookLoans.Branchid = tbl_LibraryBranch.Branchid
	group by tbl_LibraryBranch.BranchName

	;



	select tbl_Borrower.Name, tbl_Borrower.Address_, count(tbl_BookLoans.CardNo) as BooksChecked
	from tbl_BookLoans
	inner join tbl_Borrower
	on tbl_Borrower.CardNo = tbl_BookLoans.CardNo 
	group by tbl_Borrower.Name, tbl_Borrower.Address_
	having count(tbl_BookLoans.CardNo) > 5
	;


	select tbl_book.Title, tbl_BookCopies.No_Of_Copies
	from tbl_book 
	inner join tbl_BookCopies
	on tbl_book.Bookid = tbl_BookCopies.Bookid
	inner join tbl_LibraryBranch
	on
	tbl_LibraryBranch.Branchid = tbl_BookCopies.Branchid

	inner join tbl_BookAuthors
	on
	tbl_BookAuthors.Bookid = tbl_book.Bookid
	where tbl_BookAuthors.AuthorName = 'Stephen King' and tbl_LibraryBranch.BranchName = 'Central'
	;

END

Execute FinalQuery;


































--------------------------------------------









  




