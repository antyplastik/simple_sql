use moviesRental;

select * from customers; 
select * from moviescopies;
select * from moviesinfo;
select * from rents;

/*
alter table moviescopies
add column rentedTimes varchar(4) default 0;
*/

drop table customers;
insert into customers(customerId,fullName, phone, email, address)
values
(1,"Kornelia Wieczorek", "72 985 68 41", "KorneliaWieczorek@armyspy.com", "ul. Piastowska 124; 41-400 Mysłowice"),
(2,"Czesław Król","53 124 15 03","CzeslawKrol@rhyta.com","ul. Lechicka 96; 75-843 Koszalin"),
(3,"Kazia Czerwinska", "78 822 46 74", "KaziaCzerwinska@dayrep.com", "Al. Niepodległości 97; 10-042 Olsztyn");

insert into moviescopies(copyId, movieInfoId, isRented, rentedTo)
values
(1,1,0,0),
(2,2,0,0),
(3,3,0,0);

insert into moviesinfo(movieInfoId,title, genre, releaseDate, description)
values
(1,"Interstellar","Drama","2014-11-07","A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival."),
(2,"Back to the Future","Sci-Fi","1986-08-01","Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown."),
(3,"Matrix","Sci-Fi","1999-08-13","A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.");

insert into rents(rentId,rentedMovieId, customer, status, rentPricePerDay, rentedDate, returnedDate)
values
(1,1,1,"Returned",2.5,NOW(),NOW()),
(2,2,2,"Returned",2.5,NOW(),NOW()),
(3,3,3,"Returned",2.5,NOW(),NOW());