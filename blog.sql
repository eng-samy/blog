-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2019 at 01:45 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'Africa', 'enabled'),
(2, 'Asia', 'enabled'),
(3, 'Europe', 'enabled'),
(10, 'South America', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created`, `status`) VALUES
(12, 1, 16, 'I like this post, it helps me alot!', 1573304079, 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `tags` text NOT NULL,
  `related_posts` text NOT NULL,
  `views` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `details`, `image`, `tags`, `related_posts`, `views`, `created`, `status`) VALUES
(11, 2, 1, '10 OFFBEAT THINGS TO DO IN ISTANBUL', '&lt;p&gt;Istanbul is home to some famous historical sites &amp;mdash; the Blue Mosque, Hagia Sophia, Grand Bazaar, and Spice Market. They are stunning, important historical sites to see and experience. But the city also offers lots of fun things to do that have fewer crowds and are a bit off the beaten path.&lt;/p&gt;\r\n\r\n&lt;p&gt;As important as it is to visit culturally significant historical sites (after all,&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/overrated-and-cheesy-tourist-activities/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;there&amp;rsquo;s nothing wrong with being a tourist&lt;/a&gt;) there is so much more to every destination than just the main tourist bullet points.&lt;/p&gt;\r\n\r\n&lt;p&gt;Of course, you shouldn&amp;rsquo;t miss Istanbul&amp;rsquo;s major sites. But once you&amp;rsquo;ve done them, there are plenty of offbeat things to see and do here. Here are my favorites to help you get started and make the most out of your trip:&lt;/p&gt;\r\n\r\n&lt;h3&gt;1. Descend into the Basilica Cistern&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;A long hallway down the Basilica Cistern in Istanbul&quot; src=&quot;https://media.nomadicmatt.com/offbeatistanbul2.jpg&quot; /&gt;&lt;br /&gt;\r\nMost travelers walk on top of this ancient cavern for days without realizing it. After entering an unassuming doorway you&amp;rsquo;ll climb down a gloomy set of stairs, ending up in an underground former water reservoir built in the sixth century. It&amp;rsquo;s filled with centuries-old columns and statues and the space is eerily lit in shades of orange. Koi fish swim in the standing water, and you have to walk on wooden planks to get around. You can hear drips echoing, and there are two mysterious statues with the head of Medusa. It kind of feels like you&amp;rsquo;re in a scary movie.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Alemdar, Yerebatan Cd. 1/3, +90 212-512-1570 yerebatansarnici.com. Open daily from 9am-5:30pm (except religious holidays). Admission is 20 TRY for foreigners.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;2. Explore the Asian Side&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Building on the Asian side of Istanbul&quot; src=&quot;https://media.nomadicmatt.com/offbeatistanbul3.jpg&quot; /&gt;&lt;br /&gt;\r\nIstanbul is the only city in the world to straddle two continents; it spans from Europe to Asia. The Asian side (also called the Anatolian side) is separated from the European side by the Bosphorus Strait. You can take a bus over the famous Bosphorus Bridge, or you can ride over on a ferry. The city&amp;rsquo;s main tourist sites are on the European side, but if you&amp;rsquo;ve never been to Asia, it&amp;rsquo;s fun to cross over so you can say you&amp;rsquo;ve been there. If you&amp;rsquo;re interested in shopping, check out the popular markets in Kadik&amp;ouml;y.&lt;/p&gt;\r\n\r\n&lt;p&gt;Other worthy activities include touring the Beylerbeyi Palace, riding up to the top of &amp;Ccedil;amlica Hill for incredible views of the city, and strolling along Bagdat Caddesi to explore the many restaurants, caf&amp;eacute;s, and shops.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;The ferry will cost 3 TRY for a one-way ticket.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;3. Visit a Real Hammam&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;(Picture not available&amp;mdash;everyone was naked inside!)&lt;/em&gt;&lt;br /&gt;\r\nMany of the swanky hotels in Istanbul have&amp;nbsp;&lt;em&gt;hammams&lt;/em&gt;, otherwise known as Turkish baths, but they usually aren&amp;rsquo;t the real deal. They&amp;rsquo;re made for Westerners looking for a cushy and modest experience. Real hammams have been a Turkish tradition for thousands of years, and they have served as both a place to cleanse and to socialize. Most hammams are separated by gender, and women generally go topless. You transition through several different rooms of different temperatures, one being a&amp;nbsp;hot steam room much like a sauna. You can opt to pay an attendant to give you a thorough scrub-down&amp;nbsp;&amp;mdash; it&amp;rsquo;s rough but invigorating! &amp;Ccedil;emberlitai Hamami is a good option for visitors looking to give the experience a try; another popular one is Cagaloglu. Both are located in the Old Town.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Vezirhan Cad. No. 8, +90 552-381-1584, cemberlitashamami.com. Open daily from 6am-12am. Admission starts at 160 TRY per person and goes up from there depending on what treatments/services you want.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;4. Go to the Prince Islands&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;An offbeat activity is a horse and carriage ride through the streets of Princes\' Island&quot; src=&quot;https://media.nomadicmatt.com/offbeatistanbul7.jpg&quot; /&gt;&lt;br /&gt;\r\nThis chain of nine islands off the coast of Istanbul provides a unique getaway from the crowds. An easy day trip during the warm months, the islands are just a quick ferry ride from the city. Most travelers visit the four larger islands (B&amp;uuml;y&amp;uuml;kada, the biggest and most popular, Burgazada, Heybeliada, and Kinaliada). You can explore historic buildings, eat at tasty caf&amp;eacute;s, and see beautiful homes as you wander about.&lt;/p&gt;\r\n\r\n&lt;p&gt;What makes these islands special is that no cars are allowed on the islands, making them quite peaceful and quiet and a nice break from the noise of the city. You can get around by walking, bicycle, or horse and carriage.&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to take one of the early ferries in the day so you explore the islands before our visitors arrive.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;The journey by ferry will take around 1 hour and 30 minutes depending on what island you are going to. Tickets are 5 TRY per person for a single journey ticket.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;5. Take a Ferry&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;View of castles taken from the ferry around the Turkish islands&quot; src=&quot;https://media.nomadicmatt.com/offbeatistanbul4.jpg&quot; /&gt;&lt;br /&gt;\r\nA great way to explore this massive city is by boat. You&amp;rsquo;ll see many boats that offer paid tours of the Bosphorus, but if you want to save money and have more flexibility, take a regular ferry ride instead. The fare will be cheaper, and you won&amp;rsquo;t be competing for space with other tourists trying to take photos.&lt;/p&gt;\r\n\r\n&lt;p&gt;You&amp;rsquo;ll pass by Topkapi Palace, the Bosphorus Bridge, gorgeous mansions, mosques with massive minarets, other castles and palaces, and more. You can hop off, eat some fresh seafood, and then head back. It&amp;rsquo;s a budget-friendly way to explore without bumping into other tourists.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Round-trip ferry tickets will cost 25 TRY per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;6. Explore Jewish History&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Jewish Istanbul&quot; src=&quot;https://media.nomadicmatt.com/offbeatistanbul5.jpg&quot; /&gt;&lt;br /&gt;\r\nWhile Turkey is predominantly a Muslim country, it has a surprisingly long Jewish history. There are Jewish heritage tours you can take, or you can explore the stops on your own. Jews have lived in Turkey for thousands of years, but the population really grew during the Ottoman Empire in the 1400s. Growth increased in 1492 when Spain expelled its Jews and the Ottoman Empire welcomed them as they were stereotyped as having good business skills and wealth.&lt;/p&gt;\r\n\r\n&lt;p&gt;Istanbul&amp;rsquo;s Galata and Balat quarters are steeped in Jewish history and you can find historic synagogues in both areas of town. Istanbul also has a Jewish museum (The Museum of Turkish Jews) that does a good job of illustrating the contributions and struggles of Jews in Turkey.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Bereketzade Mahallesi, +90 212-292-6333, muze500.com. Open Sunday-Thursday from 10am-5pm and Fridays from 10am-1pm (closed Saturdays). Admission is free, though donations are encouraged. Passport (or other official ID) is required to enter.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;7. Watch the Fishermen on Galata Bridge&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Lots of fisherman on Galata Bridge in Turkey on a cold day&quot; src=&quot;https://media.nomadicmatt.com/offbeatistanbul6.jpg&quot; /&gt;&lt;br /&gt;\r\nEvery day, dozens, if not hundreds, of local men form a row along the top level of the Galata Bridge and fish over the edge. It&amp;rsquo;s an incredible sight. They spend hours hoping to catch fresh seafood, and some of them will sell it to you while they&amp;rsquo;re still out there fishing. Many of the men don&amp;rsquo;t&amp;nbsp;even make a catch; they seem to enjoy just standing there hanging their pole over the water.&lt;/p&gt;\r\n\r\n&lt;p&gt;There&amp;rsquo;s also a fish market at the base of the bridge, and the many booths of fresh-caught fish are fun to look at (though it can also be a bit gross).&lt;/p&gt;\r\n\r\n&lt;h3&gt;8. See the Obelisk of Theodosius&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The Obelisk of Theodosius in Istanbul, Turkey&quot; src=&quot;https://media.nomadicmatt.com/2019/offbeatistanbul10.jpg&quot; /&gt;&lt;br /&gt;\r\nThis Egyptian obelisk was carved around 1500 BCE near Luxor before it was pillaged by the Romans and moved to Alexandria. Not long after, it was moved to Constantinople (now Istanbul) where it has remained ever since. There are well-preserved hieroglyphs on all four sides which depict Tutmoses III&amp;rsquo;s victory during a battle on the Euphrates River.&lt;/p&gt;\r\n\r\n&lt;p&gt;The obelisk is usually surrounded by locals relaxing and chatting, and there are often buskers performing here as well. It&amp;rsquo;s a good place to sit back and people-watch while appreciating this incredible historical relic.&lt;/p&gt;\r\n\r\n&lt;h3&gt;9. Snap a Photo with Tombili&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The Tombili the cat statue in Istanbul, Turkey&quot; src=&quot;https://media.nomadicmatt.com/2019/offbeatistanbul9.jpg&quot; /&gt;&lt;br /&gt;\r\nChances are you already know you Tombili is &amp;mdash; you just don&amp;rsquo;t realize it. Tombili was a street cat from Istanbul who went viral in a meme that showed the cat lounging on the stairs like a person would sit on a bench (the meme was called &amp;ldquo;chill cat&amp;rdquo; if you want to look it up).&lt;/p&gt;\r\n\r\n&lt;p&gt;When Tombili died in 2016, the local mayor had a statue commissioned and it now sits where Tombili&amp;rsquo;s famous photo was taken. Thieves immediately stole the statue but, after a huge public outcry, it was returned.&lt;/p&gt;\r\n\r\n&lt;h3&gt;10. Visit Miniaturk&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Small statues and tourists at the Miniaturk park in Istanbul, Turkey&quot; src=&quot;https://media.nomadicmatt.com/2019/offbeatistanbul11.jpg&quot; /&gt;&lt;br /&gt;\r\nMiniaturk is a miniature park located in Istanbul &amp;mdash; and it&amp;rsquo;s one of the largest miniature parks in the world. To be honest, I didn&amp;rsquo;t even know what miniature parks were before encountering this place. In short, the park is full of small replicas of famous sights and attractions, made to a 1/25 scale. There are over 100 models in the park including the Obelisk of Theodosius, the Mostar Bridge, and the Hagia Eirene Church. The park spans almost 15 acres and there are audio guides available around the park so you can listen and learn more about each individual attraction.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '3e0f8e6bf0d3ff343f83388725f0878d88991ce3_ab3d752d0f15a10fb95abbd9a891744a6e156fb1.jpg', 'ISTANBUL', '', 0, 1573302341, 'enabled'),
(12, 3, 1, 'THE 9 BEST NEIGHBORHOODS TO STAY IN ROME', '&lt;p&gt;&lt;a href=&quot;https://www.nomadicmatt.com/travel-guides/italy-travel-tips/rome/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Rome&lt;/a&gt;&amp;nbsp;is a city that sparks a thousand mental images. From ancient structures like the Colosseum or the Pantheon, to the Spanish Steps and Trevi Fountain, to the Vatican &amp;mdash; not to mention tons of pasta and other delicious food &amp;mdash; it has it all.&lt;/p&gt;\r\n\r\n&lt;p&gt;But planning a trip to Rome can sometimes be a pain.&lt;/p&gt;\r\n\r\n&lt;p&gt;Where should you stay? What are the best neighborhoods?&lt;/p&gt;\r\n\r\n&lt;p&gt;Rome is huge. It has 15 municipi (administrative areas), with the city center municipio alone divided into 22 smaller districts.&lt;/p&gt;\r\n\r\n&lt;p&gt;Whether you&amp;rsquo;re after a more historical area or something more local-feeling, or whether you are keen to experience&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/my-29-favorite-restaurants-in-europe/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;great Italian food&lt;/a&gt;&amp;nbsp;or Roman nightlife, there is a neighborhood in this amazing city to suit you.&lt;/p&gt;\r\n\r\n&lt;p&gt;To help you figure that out, here are some of my extensive thoughts on the best places to stay during your time in Rome based on my years of experience visiting there:&lt;/p&gt;\r\n\r\n&lt;h3&gt;1. Trastevere&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;a busy square in Trastevere, Rome&quot; src=&quot;https://media.nomadicmatt.com/2019/trastevere_rome.jpg&quot; /&gt;&lt;br /&gt;\r\nTrastevere is filled with narrow, cobblestone alleyways that run past buildings decorated with tangled ivy and vines. It makes you feel like you&amp;rsquo;re back in a medieval city.&lt;/p&gt;\r\n\r\n&lt;p&gt;For many centuries, Trastevere was a working-class district, but in recent years, it&amp;rsquo;s become a bohemian hotspot for foodies and tourists wanting to see beyond Rome&amp;rsquo;s big-name attractions. At night, you can mingle in the Piazza di Santa Maria with crowds of young locals and students enjoying the nightlife, eating, and drinking. And if you climb the nearby steps of Gianicolo Hill, you&amp;rsquo;ll reach a spot with views across Rome, including the Pantheon and the Capitoline Hills.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Trastevere&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fhosteldetails.php%2FHostel-Trastevere%2FRome%2F277003&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Hostel Trastevere&lt;/a&gt;&amp;nbsp;&amp;ndash; This hostel close to grocery stores and public transit has a great outdoor terrace common area with shade sails to keep you cooler in summer, and a cheap buffet breakfast, as well as fast Wi-Fi and air-conditioning. Rooms sleep a maximum of five people. The beds are comfortable too.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/trastevere-39-s-friends.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: Trastevere&amp;rsquo;s Friends&lt;/a&gt;&amp;nbsp;&amp;ndash; This B&amp;amp;B is quiet, with spacious double rooms, making it especially popular with couples. The rooms here are light and bright, and most include ample wardrobe space for unpacking. The place is clean, and the owners and staff are extra-friendly.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/trastevere-royal-suite-trilussa.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;LUXURY: Trastevere Royal Suite Trilussa&lt;/a&gt;&amp;nbsp;&amp;ndash; This luxury hotel has views over the Tiber River and is central to all the amazing restaurants and caf&amp;eacute;s of Trastevere. Each room is uniquely decorated with paintings or ornate mirrors. Breakfast is included in your room price.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;2. Monti&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Palazzo delle Esposizioni in Rome; photo by Emanuele (flickr:@zakmc)&quot; src=&quot;https://media.nomadicmatt.com/2019/monti.jpg&quot; /&gt;&lt;br /&gt;\r\nThe very oldest part of Rome is Monti, which is full of winding cobblestone streets and antique stores. Local residents are often creative types, and they&amp;rsquo;ve made sure there are plenty of quirky caf&amp;eacute;s, intimate bars, and independent businesses for you to explore. You can wander the streets past endless shades of pastel-colored walls, and browse the clothes and jewelry at the Mercato Monti vintage market.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Monti&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fhosteldetails.php%2FPalladini-Hostel-Rome%2FRome%2F72723&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Palladini Hostel Rome&lt;/a&gt;&amp;nbsp;&amp;ndash; This might be a hostel, but it hasn&amp;rsquo;t skimped on the d&amp;eacute;cor, with stylish black-, red-, and white-themed communal areas and artwork and chandeliers in the private rooms. It&amp;rsquo;s just 200m from Termini station so it&amp;rsquo;s really easy to access any public transport option you might want.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fhosteldetails.php%2FAlessandro-Downtown-Hostel-and-Bar%2FRome%2F564&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Hostel Alessandro Downtown&lt;/a&gt;&amp;nbsp;&amp;ndash; Cleanliness, a friendly staff, and a social atmosphere make this a good choice. It&amp;rsquo;s a great place to stay if you want to meet other travelers, either in the hostel itself or the bar, which is popular with many backpackers exploring Rome.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/apollo-rooms-colosseo.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: Apollo Rooms Colosseo&lt;/a&gt;&amp;nbsp;&amp;ndash; Clean and new, with friendly owners and a gelato bar at the back of the building, this property has a vibe that makes up for the fairly small (but tastefully decorated) rooms.&lt;br /&gt;\r\n	LUXURY: Monti Palace Hotel &amp;ndash; This stylish hotel includes a wholesome buffet breakfast and a rooftop bar with gorgeous views of the city. The rooms are spacious, sleek, and well lit.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;3. Prati&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Saint Mary Maggiore basilica in Rome; photo by Pawel Pacholec (flickr:@pawel_pacholec)&quot; src=&quot;https://media.nomadicmatt.com/2019/prati_basilica.jpg&quot; /&gt;&lt;br /&gt;\r\nPrati is close to St Peter&amp;rsquo;s Square and the Vatican &amp;mdash; it shares a border with the northern end of the Vatican State &amp;mdash; and includes Via Cola di Rienzo, which is one of the most well-known shopping streets in the city for high-end brands. Prati is also an area where you&amp;rsquo;re less likely to find hordes of tourists, and it&amp;rsquo;s great for imagining what life would be like if you were a wealthy Roman.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Prati&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/arts-amp-rooms.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Arts &amp;amp; Rooms&lt;/a&gt;&amp;nbsp;&amp;ndash; This is a great budget option, with fast Wi-Fi and a communal kitchen filled with snacks (guests get use of the coffee machine too). It&amp;rsquo;s elegant, with simple but tasteful furnishings.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/luxury-on-the-river.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: Luxury on the River&lt;/a&gt;&amp;nbsp;&amp;ndash; Despite its name, this place comes at a mid-range price and is located in a historic building overlooking the river. It has helpful staff and a varied breakfast, plus the rooms are quite large. There&amp;rsquo;s real Italian flare to the d&amp;eacute;cor and a cozy lounge and library.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/nh-collection-roma-giustiniano.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;LUXURY: Hotel NH Collection Roma Giustiniano&lt;/a&gt;&amp;nbsp;&amp;ndash; This four-star hotel with spacious rooms is a great value. All its rooms have gorgeous parquet floors, and many have balconies with great views. There&amp;rsquo;s also a small gym and a restaurant on-site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;4. Ostiense&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;colorful street art in Ostiense, Rome; photo by Nicholas Frisardi (flickr:@123711915@N05)&quot; src=&quot;https://media.nomadicmatt.com/2019/ostiensa.jpg&quot; /&gt;&lt;br /&gt;\r\nOstiense is a half-hour bus ride south of the center of Rome, but it&amp;rsquo;s a great neighborhood for a less touristy experience. Formerly an industrial area, it&amp;rsquo;s had a hipster makeover and is famous for its street art, food, and nightlife. On Via Giuseppe Libetta, you&amp;rsquo;ll find many of Rome&amp;rsquo;s best nightclubs and music venues. There&amp;rsquo;s even history here: the ancient Pyramid of Cestius, made of white marble blocks.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Ostiense&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/gazometro-guest-house-roma12345.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Verrazzano 37 Guest House&lt;/a&gt;&amp;nbsp;&amp;ndash; This small place offers four comfortable rooms with modern furniture, a shared kitchen, and free Wi-Fi and is right near a 24-hour grocery store. It has nice double rooms, making it especially popular with couples on a budget.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/gasometer-urban-suites.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: Gasometer Urban Suites&lt;/a&gt;&amp;nbsp;&amp;ndash; Created out of a former factory in 2018, this spot features stylish and spacious rooms, and you can access a shared rooftop terrace with great views (and also a gym).&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/sheratonromahotelconferencecenter.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;LUXURY: Sheraton Roma Hotel&lt;/a&gt;&amp;nbsp;&amp;ndash; This luxury hotel and conference center has a fabulous pool area and is great for a summer stay, especially with kids. It&amp;rsquo;s less Italian in style than other accommodations in Rome but makes up for it with spacious, quiet rooms and excellent breakfasts. There&amp;rsquo;s a lot of garden greenery and even a small wooded area surrounding the hotel, so it feels like you&amp;rsquo;re much further from central Rome than you actually are.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;5. Testaccio&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Testaccio skyline in Rome; photo by Nicola (flickr:@15216811@N06)&quot; src=&quot;https://media.nomadicmatt.com/2019/testaccio.jpg&quot; /&gt;&lt;br /&gt;\r\nTestaccio, a 20-minute walk south of the Colosseum, is an edgier district, a former slaughterhouse area now adored by foodies. It&amp;rsquo;s not necessarily full of Instagram-worthy architecture, but it&amp;rsquo;s really got heart.&lt;/p&gt;\r\n\r\n&lt;p&gt;There are a bunch of art museums and other sightseeing spots in Testaccio, but the best reason to stay here is the food, from the Testaccio Market with its gourmet street food stalls to spots like Da Remo, which many people claim has the best traditional pizza in Rome.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Testaccio&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/i-sleep-roma.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: I-sleep B&amp;amp;B&lt;/a&gt;&amp;nbsp;&amp;ndash; This budget accommodation is in a really convenient location, but it&amp;rsquo;s still reasonably quiet. A light breakfast is included with your room rate. Most rooms are decorated in a modern black-and-white style and are clean and comfortable.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/149guesthouse.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: 149 Guesthouse&lt;/a&gt;&amp;nbsp;&amp;ndash; Really helpful staff make a stay here great, and the espresso machines and jacuzzis are also a bonus. It&amp;rsquo;s in a classy building; rooms with balconies look over the leafy trees along the street. If you&amp;rsquo;re there on a Sunday, make sure you check out the outdoor Porta Portese flea market nearby.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/seven-suites.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;LUXURY: Seven Suites&lt;/a&gt;&amp;nbsp;&amp;ndash; You&amp;rsquo;ll get very good value for these spacious, modern rooms and a good breakfast in the caf&amp;eacute; at the front. It&amp;rsquo;s recently renovated, with classy bathrooms and really comfortable memory-foam beds. It&amp;rsquo;s a small property with just six rooms, so it&amp;rsquo;s quiet.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;6. Pigneto&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;street art in Pigneto; photo by Agostino Zamboni (flickr:@agostinozamboni)&quot; src=&quot;https://media.nomadicmatt.com/2019/pigneto.jpg&quot; /&gt;&lt;br /&gt;\r\nLess than a 15-minute tram ride from the center of Rome, Pigneto is a colorful neighborhood full of interesting graffiti, street art, and murals that&amp;rsquo;s had a hipster makeover in recent years. Some people call it the Brooklyn of Rome, and I think that&amp;rsquo;s a fair description! It&amp;rsquo;s filling up with trendy bars and restaurants and often gets labeled Bohemian, although it&amp;rsquo;s a real mix of small, older homes and new apartment buildings. It&amp;rsquo;s also home to lots of small cocktail bars and caf&amp;eacute;s and other great spots for some people-watching.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Pigneto&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/relais-villa-fiorelli.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Relais Villa Fiorelli&lt;/a&gt;&amp;nbsp;&amp;ndash; This is located in a quiet spot on the Piazza di Villa Fiorelli. It has simple, modern rooms with free Wi-Fi, some with balconies looking over the lush garden. Room rates include breakfast served either in your room or outside in the garden. The recent addition of the new Line C Lodi metro station makes it even easier to get into central Rome from here.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/eurostars-roma-aeterna.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: Eurostars Roma Aeterna&lt;/a&gt;&amp;nbsp;&amp;ndash; Right on the Piazza del Pigneto, this hotel is in a former pharmaceutical factory. Inside, rooms are decorated with minimalist but stylish d&amp;eacute;cor and photography. It offers a great breakfast, and there&amp;rsquo;s a well-equipped free gym too.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/latinum.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;LUXURY: Hotel Latinum&lt;/a&gt;&amp;nbsp;&amp;ndash; This boutique hotel of just twelve rooms has a special glass floor so you can see what lies under it, thanks to some archaeological excavation &amp;mdash; a great way to remind you of the history of Rome even when you&amp;rsquo;re back in the hotel. It&amp;rsquo;s an elegant spot with beautiful wooden furniture, and the rooftop terrace is a good place to relax.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;7. Tridente&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Trevi fountain in the middle of Rome&quot; src=&quot;https://media.nomadicmatt.com/2019/rome_neighborhoods2.jpg&quot; /&gt;&lt;br /&gt;\r\nThe Tridente area has plenty of tourists coming to see the Trevi Fountain and the Spanish Steps, but there&amp;rsquo;s also amazing shopping and fancy hotels and restaurants. Strolling back to your accommodation in Tridente, you&amp;rsquo;ll pass historic sites, old architecture, and endless options for dining.&lt;/p&gt;\r\n\r\n&lt;p&gt;Staying here means you might not get a particularly local feel for what it&amp;rsquo;s like to live in Rome, but you&amp;rsquo;ll be near many of the places you&amp;rsquo;ll want to visit, and you&amp;rsquo;ll get a taste for where wealthy Romans live.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Best places to stay in Tridente&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/crispi-relax.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;BUDGET: Crispi Relax&lt;/a&gt;&amp;nbsp;&amp;ndash; Less than a five-minute walk from the Spanish Steps, this guesthouse is great value for such a central location, with clean, air-conditioned rooms, though they&amp;rsquo;re relatively small (not surprising for the area). Some rooms have balconies for some extra space, and you can take in the views of what&amp;rsquo;s happening right there in the center of the city.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/crossing-condotti.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;MID-RANGE: Condotti Hotel&lt;/a&gt;&amp;nbsp;&amp;ndash; Also just around the corner from the Spanish Steps, Hotel Condotti is a small and elegant boutique hotel with an entrance off a quiet street, beautiful d&amp;eacute;cor, and lots of added extras. If you&amp;rsquo;re traveling with kids, you can stay in the adjacent building in suites made of two connecting double bedrooms.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.booking.com/hotel/it/d-inghilterra.en.html?aid=362916&amp;amp;no_rooms=1&amp;amp;group_adults=1&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;LUXURY: Hotel d&amp;rsquo;Inghilterra Roma&lt;/a&gt;&amp;nbsp;&amp;ndash; This hotel close to the Spanish Steps and the Via del Corso shopping street, located in a beautiful 16th-century building, offers affordable luxury compared to some really pricey places in this part of town. The staff are very attentive, and the hotel restaurant, Caf&amp;eacute; Romano, gets rave reviews. Each of its 88 rooms is decorated with its own style and charm.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;8. Parioli&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;the Villa Borghese gardens in Parioli, Rome&quot; src=&quot;https://media.nomadicmatt.com/2019/parioli.jpg&quot; /&gt;&lt;br /&gt;\r\nParioli is a largely residential, quieter part of Rome, but is less than a half-hour ride by metro or bus into the center. It&amp;rsquo;s full of gardens and parks, and its southern boundary runs along the Villa Borghese gardens. It&amp;rsquo;s typically home to some affluent locals with classy-looking apartment buildings, and if you&amp;rsquo;re planning a longer stay, it&amp;rsquo;s a great base that offers a taste of semi-suburban life in Rome.&lt;/p&gt;', '417ef00083854e9863ab23bf89b3a11b3bb2a5a6_27c2319b29582d97ef3d9ccf479ff4cba1624099.jpg', 'ROMA', '11', 0, 1573302805, 'enabled'),
(13, 3, 1, 'THE BEST WALKING TOURS IN PARIS', '&lt;p&gt;I love visiting&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-guides/france-travel-tips/paris/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Paris&lt;/a&gt;. I&amp;rsquo;ve been going there for over nine years and have yet to tire of the history, the charm, or the food (and wine!).&lt;/p&gt;\r\n\r\n&lt;p&gt;Over the years, I&amp;rsquo;ve taken a million different tours of this amazing city to learn more about what makes it tick. For four months earlier this year,&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/life-in-paris/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;I lived in Paris&lt;/a&gt;, and had the opportunity to check out even more walking tours.&lt;/p&gt;\r\n\r\n&lt;p&gt;And there were a lot to check out!&lt;/p&gt;\r\n\r\n&lt;p&gt;There are dozens upon dozens of companies covering all aspects of life in Paris, and it can be hard to make a sense of all those endless Viator and Tripadvisor listings. It&amp;rsquo;s obscene how many tour companies there are. (I mean I&amp;rsquo;ve tried so many tour companies and I STILL have more on my list to try (and some to retry).)&lt;/p&gt;\r\n\r\n&lt;p&gt;But, I still feel like I&amp;rsquo;ve done enough to warrant a post on some of the best walking tour companies in Paris, so, today, I want to share with you my top favorites:&lt;/p&gt;\r\n\r\n&lt;h3&gt;1. New Europe Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The crowded steps of Sacre Coeur atop Montmartre in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours2.jpg&quot; /&gt;&lt;br /&gt;\r\n&lt;a href=&quot;https://www.neweuropetours.eu/paris-walking-tours/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;New Europe&lt;/a&gt;&amp;nbsp;is one of the most popular free walking tour companies in all of Europe. Their main free tour takes you around the center of Paris and gives you a historical overview of the city. They also run a good (but paid) tour of Montmartre, and they have a really fun pub crawl as well if you&amp;rsquo;re looking to hit the bars with other travelers.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;The basic tour will last around three hours and is free, though you&amp;rsquo;ll want to tip your guides. Some tours cost 15-35 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;2. City Free Tour&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The sun shining over the historic Pantheon in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours3.jpg&quot; /&gt;&lt;br /&gt;\r\n&lt;a href=&quot;https://cityfreetour.com/paris/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;This free-tour company&lt;/a&gt;, like New Europe, offers a couple great general tours to help you get familiar with the City of Light, led by a local expert who can answer your questions. They also offer a few specialized tours so you can really focus on different neighborhoods. For example, the Montmartre tour does a great job of showing you just what life is like in this famous bohemian neighborhood, while the Latin Quarter tour highlights some of the most famous landmarks in town.&lt;/p&gt;\r\n\r\n&lt;h3&gt;3. Discover Walks&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Tourists exploring the exterior of the Louvre in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/pariswalks4.jpg&quot; /&gt;&lt;br /&gt;\r\n&lt;a href=&quot;https://www.discoverwalks.com/tour/city/paris-walking-tours/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Discover Walks&lt;/a&gt;&amp;nbsp;offers free walking tours, as well as paid options if you&amp;rsquo;re looking for something more focused and in-depth. With almost 30 tours on offer in Paris, chances are you&amp;rsquo;ll be able to find something to pique your interest. They have a great free tour of the Latin Quarter, and there&amp;rsquo;s even a vegetarian and gluten-free food tour! For something more unique, try the photography tour.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Free tours last around 90 minutes. A recommended tip of 13 EUR is suggested. For the paid tour options, prices start at 25 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;4. Localers&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Walking down a path surrouned by trees near the Eiffel Tower in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours5.jpg&quot; /&gt;&lt;br /&gt;\r\n&lt;a href=&quot;https://www.localers.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Localers&lt;/a&gt;&amp;nbsp;are a great choice if you&amp;rsquo;re looking for a unique tour option and want something more nuanced than just a free walking tour. They tend to specialize in more niche tours like literary, art or historical tours. I enjoyed their tours a lot. I hadn&amp;rsquo;t heard of them before I moved here and was bummed their tours had flown under my radar for so long.&lt;/p&gt;\r\n\r\n&lt;p&gt;The World War II tour is particularly insightful and does a great job of illuminating the war&amp;rsquo;s true cost to Paris. I also really liked the Scandalous Paris tour, which highlights Paris&amp;rsquo; brothels and more colorful past. There&amp;rsquo;s also an insightful literary tour too that takes you through the literary history of the city&amp;rsquo;s left bank. This is a solid mid-range tour company for travelers looking for value.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours last 2-5 hours. Tickets start at 58 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;5. Context Travel&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The ornate golden gates of the Palace of Versailles near Paris, France surrounded by tourists&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours6.jpg&quot; /&gt;&lt;br /&gt;\r\n&lt;a href=&quot;https://www.contexttravel.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Context Travel&lt;/a&gt;&amp;nbsp;hires experts in their fields so that every tour is an incredible educational experience and you&amp;rsquo;ll go much deeper than any free walking tour does. I am always shocked by how much I learn! I particularly love the Paris Market Tour and the Versailles Tour (which is four hours long, but you learn a ton). Context isn&amp;rsquo;t cheap, and the tours are usually long &amp;mdash; but they&amp;rsquo;re worth every penny if you&amp;rsquo;re serious about really learning a lot.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours start at 100 EUR per person. They include a maximum of six people at a time.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;6. Walks&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The empty courtyard of Les Invalides in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours7.jpg&quot; /&gt;&lt;br /&gt;\r\nWhat makes&amp;nbsp;&lt;a href=&quot;https://www.takewalks.com/?tap_a=29774-b9abbb&amp;amp;tap_s=37909-476f1e&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Walks&lt;/a&gt;&amp;nbsp;amazing is that they get better access than most tour companies and hire specialized guides. You get to skip the line, go before or after other tours so you have the space to yourself, and get fun guides who are knowledgeable in their field. They also have a nine-hour full-day tour of the city for anyone looking to really explore (it&amp;rsquo;s a great option if you&amp;rsquo;re short on time but still want to see everything).&lt;/p&gt;\r\n\r\n&lt;p&gt;Their tours are reasonably priced, and their guides always know their stuff. I&amp;rsquo;ve gone on three of their tours and loved them all.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Most tours last 2-3 hours, though some take the entire day. Tickets start at 55 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;7. Fat Tire Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;A single Fat Tire Tour bicycle parked on the sidewalk in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours8.jpg&quot; /&gt;&lt;br /&gt;\r\nOffering cycling tours of Paris,&amp;nbsp;&lt;a href=&quot;https://www.fattiretours.com/?ref=mattkepnes2&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Fat Tire Tours&lt;/a&gt;&amp;nbsp;are probably the best bike tour in town. I don&amp;rsquo;t think I&amp;rsquo;d go with anyone else. Their bike tours are the best. Do their Versailles tour &amp;ndash; and try to do it on Sunday or Tuesday when they stop at the market that is open then) and, if you can, check out their Monet&amp;rsquo;s Garden tour where you can cycle around the gardens of the famous impressionist while exploring the charming village of Giverny.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Most tours last 2-3 hours, though there are several full-day options available too. Tickets start at 34 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;8. Paris by Mouth&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;A delicious plate of local food in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours9.jpg&quot; /&gt;&lt;br /&gt;\r\n&lt;a href=&quot;https://parisbymouth.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Paris by Mouth&lt;/a&gt;&amp;nbsp;company offers a handful of neighborhood tours that highlight the best food in Paris. The groups are kept small (no more than eight people) and they are really focused on providing a lot of information on food, history, and culture. It&amp;rsquo;s like a mini-class more than it is a chance to just eat food (though you do that too).&lt;/p&gt;\r\n\r\n&lt;p&gt;The tours aren&amp;rsquo;t super budget friendly but if you&amp;rsquo;re looking for a really detailed food tour, this company would be it. And if you&amp;rsquo;re a diehard fan of French cheese like I am, they also have an entire workshop just for cheese. It&amp;rsquo;s amazing.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours usually last around three hours. Tickets start at 110 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;9. Secret Food Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;A display case full of colorful macaroons in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours10.jpg&quot; /&gt;&lt;br /&gt;\r\nWhile not the cheapest,&amp;nbsp;&lt;a href=&quot;https://www.secretfoodtours.com/paris/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Secret Food Tours&lt;/a&gt;&amp;nbsp;offers neighborhood-specific food tours. They also have a dangerously delicious pastry and chocolate tour that will take you around to half a dozen bakeries and shops to give you a firsthand experience of Paris&amp;rsquo;s love of decadent desserts. You&amp;rsquo;ll get A LOT of food during the tour, so come hungry. Be sure to avoid Monday tours, when most markets are closed and you end up just eating in one location instead of going from shop to shop.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours last 2-3 hours. Tickets start at 89 EUR per person. They can sell out weeks in advance, so be sure to reserve early!&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;10. Eating Europe&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Bakers working in a popular cafe in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours11.jpg&quot; /&gt;&lt;br /&gt;\r\nEating Europe&amp;rsquo;s Paris food tour,&amp;nbsp;&lt;a href=&quot;https://www.eatingeurope.com/paris/paris-hip-eats-and-back-streets-food-tour/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Hip Eats and Backstreets&lt;/a&gt;, is one of the most sought-after food tours in town. You&amp;rsquo;ll have the opportunity to try some of the best foods in Paris while also getting to chat with the chefs and entrepreneurs who have brought the dishes to life. It&amp;rsquo;s not just a tour where you get to eat amazing food but rather an experience during which you&amp;rsquo;ll learn about the culinary traditions and innovations firsthand from local artisans. It&amp;rsquo;s the perfect tour for any die-hard foodies.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours last four hours and they depart at 12:30pm Tuesday through Saturday. Tickets are 95 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.eatingeurope.com/paris/paris-hip-eats-and-back-streets-food-tour/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;&amp;mdash;&amp;gt; Click here to book your tour with Eating Europe!&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;11. Street Art Tour Paris&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;A large street art portrait painted on a wall in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours12.jpg&quot; /&gt;&lt;br /&gt;\r\nFor an insider, niche tour about Paris&amp;rsquo;s art scene, check out&amp;nbsp;&lt;a href=&quot;https://www.streetarttourparis.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Street Art Tour Paris&lt;/a&gt;. Their guides are all artists and will take you around various neighborhoods to show you the best and most interesting works of street art (and murals) that Paris has to offer. They also have a tour that focuses exclusively on female artists.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours operate 2-3 times per week based on interest (usually on the weekends) and last around 2.5 hrs. Tickets start at 20 EUR per person.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;h3&gt;12. Paris Bar Crawl&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;The patio of a busy bar a night in Paris, France&quot; src=&quot;https://media.nomadicmatt.com/2019/paristours13.jpg&quot; /&gt;&lt;br /&gt;\r\nIf you&amp;rsquo;re looking for a more rambunctious way to spend an evening, head out on a pub crawl.&amp;nbsp;&lt;a href=&quot;https://www.parisbarcrawl.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Paris Bar Crawl&lt;/a&gt;&amp;nbsp;is one of the most popular ones (it tends to be just for tourists and visiting students though). You&amp;rsquo;ll meet a bunch of new people while seeing what nightlife in Paris is all about. The tour visits three bars and one club.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Tours start at 8:30pm Thursday-Saturday and last until you decide to go home! Tickets are 15 EUR per person and include three shots as well as admission to a club.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Walking tours are a great way to get below the surface of&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-guides/france-travel-tips/paris/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Paris&lt;/a&gt;. Every time I visit, I always make sure to try a new one. Having an expert guide to answer your questions while providing in-depth, local knowledge is the best way to deepen your experience as a traveler.&lt;/p&gt;\r\n\r\n&lt;p&gt;These walking tour companies are the best in Paris and will be able to provide you with the insight and information you need to really make the most out of your next visit to this incredible city.&lt;/p&gt;', '480f7965315ed906ebea0b36be76e76e88938874_04a806613a970ab8b8654fa800412c4665f90087.jpg', 'PARIS', '12', 0, 1573303063, 'enabled');
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `details`, `image`, `tags`, `related_posts`, `views`, `created`, `status`) VALUES
(14, 1, 1, 'THE BEST TOUR COMPANIES IN EGYPT', '&lt;p&gt;Egypt is a country that tops the bucket-list country for many travelers. It&amp;rsquo;s a country filled with&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/ten-historical-sites/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;incredible relics of ancient history&lt;/a&gt;, from the Pyramids and Great Sphinx of Giza, and offers tons of incredible activities for travelers of all walks of life. Floating down the Nile River on a traditional felucca, exploring the tombs of Tutankhamen and other pharaohs in the Valley of the Kings, snorkeling and diving in the coral fantasyland of the Red Sea &amp;mdash; there&amp;rsquo;s just so many amazing parts of Egypt to amaze and enthrall you.&lt;/p&gt;\r\n\r\n&lt;p&gt;These days, Egypt is a destination many travelers shy away from. Given that there have been some terrorist attacks targeting tourists over the last couple of decades and that people are still wary of the changes in government since the Arab Spring, those concerns are understandable.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, since 2017, tourism numbers have begun to increase again. In fact, they are growing so fast they might hit an all-time record in 2019 or 2020.&lt;/p&gt;\r\n\r\n&lt;p&gt;Things have been changing for the better in Egypt and it&amp;rsquo;s now a safe country to visit for the intrepid traveler. That means it&amp;rsquo;s time to start planning your dream trip to this diverse and historic country.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/why-solo-travel/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;While I am a huge fan of solo travel&lt;/a&gt;, distances between the most popular sights in Egypt are pretty far. You can expect to spend a full day or night traveling by road or rail between Cairo and Luxor, for example, so joining an organized tour can help you make the most of your time.&lt;/p&gt;\r\n\r\n&lt;p&gt;And it can also save you some money, too!&lt;/p&gt;\r\n\r\n&lt;p&gt;Tours in Egypt often work out to be cheaper than trying to put together your own trip as some will include domestic airfare for prices cheaper than you&amp;rsquo;ll be able to get on your own.&lt;/p&gt;\r\n\r\n&lt;p&gt;Taking a tour with a reputable company also ensures that you&amp;rsquo;ll have safe detours with someone who really knows the lay of the land and will keep you informed of any risks. Knowledgeable tour guides also make for a more interesting trip &amp;mdash; which is why tours in Egypt are so popular.&lt;/p&gt;\r\n\r\n&lt;p&gt;Here is a list of the best tour companies in Egypt, offering everything from day trips around Cairo to multiday tours around the country:&lt;/p&gt;\r\n\r\n&lt;h3&gt;1. Intrepid&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://www.dpbolvw.net/click-3032045-12356898-1443635018000&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Intrepid&lt;/a&gt;&amp;nbsp;is one of my favorite tour companies in the world.&lt;/p&gt;\r\n\r\n&lt;p&gt;I&amp;rsquo;ve been on a handful of their tours over the years to destinations all around the world and have yet to be disappointed. Their local guides provide invaluable insight and they are dedicated to making environmentally friendly choices too.&lt;/p&gt;\r\n\r\n&lt;p&gt;And the company just hires really awesome people too.&lt;/p&gt;\r\n\r\n&lt;p&gt;In Egypt, Intrepid has tours that range between eight and fifteen days. To be able to see enough in just eight days, they fly you between Cairo and the south, so the cheaper trip is actually the 15-day one, which uses a mix of bus, boat, and train travel, starting around $1,200 USD. Intrepid also has some specialized offerings, with a nine-day trip for travelers aged 18&amp;ndash;29, trips especially for families, and also one just for solo travelers.&lt;/p&gt;\r\n\r\n&lt;p&gt;If you&amp;rsquo;re keen to explore beyond Egypt,&amp;nbsp;&lt;a href=&quot;http://www.dpbolvw.net/click-3032045-12356898-1443635018000&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Intrepid&lt;/a&gt;&amp;nbsp;also offers a range of longer tours that take in&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/trusting-others-in-jordan/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Jordan&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/budget-israel-road-trip/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Israel&lt;/a&gt;, and Palestine as well.&lt;/p&gt;\r\n\r\n&lt;h3&gt;2. Memphis Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;One of the first tour companies in Egypt,&amp;nbsp;&lt;a href=&quot;https://www.memphistours.com/Egypt/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Memphis Tours&lt;/a&gt;&amp;nbsp;has been around since 1955. It offers a huge variety of tours &amp;ndash; from half- or full-day tours in Cairo or Alexandria to snorkeling or camel-riding trips out of resort destinations like Sharm el-Sheikh, ranging between $35 and $90 USD per person.&lt;/p&gt;\r\n\r\n&lt;p&gt;They also offer a selection of cruises both on the Nile and on Lake Nasser. The popular Luxor-to-Aswan trip along the Nile can be made in a variety of pretty luxurious ships; prices are around $500 USD per person for a four-day trip.&lt;/p&gt;\r\n\r\n&lt;p&gt;Memphis Tours also offer fully organized multi-day trips that last between 3&amp;ndash;15 days. Many of these take in the key sights, like the Pyramids, a Nile cruise, and the Luxor and Karnak Temples, and typically fly you back to Cairo. The costs vary depending on the extra activities involved but are pretty reasonable: small group tours covering the main sights from Cairo to Luxor start at $1,100 USD. They also offer some specialized tours, such as one specifically designed to accommodate wheelchair users.&lt;/p&gt;\r\n\r\n&lt;h3&gt;3. Look at Egypt Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://www.lookategypttours.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Look at Egypt Tours&lt;/a&gt;&amp;nbsp;is another local company that offers both day and multiday tours. It specializes in having knowledgeable guides that make the history of Egypt really come alive, giving incredible insight into modern-day Egyptian life as well.&lt;/p&gt;\r\n\r\n&lt;p&gt;The company also has a sense of social responsibility too, using locally owned restaurants and hotels on all trips and hiring guides from communities throughout the country.&lt;/p&gt;\r\n\r\n&lt;p&gt;Look at Egypt Tours runs a variety of day trips out of the main centers, including Cairo, Alexandria, Luxor, and Sharm el-Sheikh, ranging in cost between $50 and $150 USD per person, depending on the destination and the group size.&lt;/p&gt;\r\n\r\n&lt;p&gt;Multi-day tours include lots of options too; these last around 8&amp;ndash;10 days and cost between $1,500 and $2,000 USD. There are also some specialized trips, like a two-week archaeological tour, the perfect choice for any history buffs (or Indiana Jones fans!).&lt;/p&gt;\r\n\r\n&lt;h3&gt;4. On the Go Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.onthegotours.com/us/Egypt&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;On the Go Tours&lt;/a&gt;&amp;nbsp;has been running tours to a variety of countries for a couple of decades now, but it all started in Egypt, where the two founders met. The company focuses on sustainable travel and supports local communities, and it hires local guides who have studied Egyptology at a college level as well.&lt;/p&gt;\r\n\r\n&lt;p&gt;In Egypt, they run several great-value group tours, like an eight-day trip from Cairo to Luxor for $400 USD, which includes the Pyramids of Giza, the incredible Egyptian Museum in Cairo, the temples at Luxor, a two-night felucca cruise on the Nile, a visit to the Valley of the Kings, and more. Accommodations are more budget-oriented than many other tour companies, making this a great option for backpackers.&lt;/p&gt;\r\n\r\n&lt;p&gt;If your timing and budget are more flexible, you might also take a look at some of On the Go&amp;rsquo;s festival tours, timed to celebrations like the Abu Simbel Sun Festival or the King Ramses Sun Festival. These tours are typically around ten days long and range between $1,600 and $2,800 USD per person, depending on whether they include internal flights.&lt;/p&gt;\r\n\r\n&lt;h3&gt;5. Jakada Tours Egypt&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://jakadatoursegypt.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Jakada Tours&lt;/a&gt;&amp;nbsp;is a smaller company that offers private tours as well as group trips with a focus on budget mid-range travel.&lt;/p&gt;\r\n\r\n&lt;p&gt;Trips covering many of Egypt&amp;rsquo;s highlights and lasting between seven and ten days range from $600 to $1,000 USD. If you&amp;rsquo;re on your second trip to Egypt or have some extra time, Jakada also offers a range of more unusual tours, like spending time at the Cairo camel market!&lt;/p&gt;\r\n\r\n&lt;p&gt;The company also makes sure its guides are really knowledgeable, not just about ancient history but modern Egyptian culture too, as well as all the best local tips and tricks to help you make the most out of your stay.&lt;/p&gt;\r\n\r\n&lt;h3&gt;6. Exodus Travels&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.exodustravels.com/egypt-holidays&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Exodus&lt;/a&gt;&amp;nbsp;offers trips worldwide and has a reputable social conscience; they aim to give back to the local communities they are a part of. In Egypt, they support Animal Care in Egypt (ACE), and its tours often include an option to visit the charity&amp;rsquo;s facility.&lt;/p&gt;\r\n\r\n&lt;p&gt;Exodus offers a nine-day Nile cruise from Luxor, which is a good compromise between luxury and price (around $1,400 USD per person, all-inclusive), with a maximum of 20 passengers. The company also has a longer trip that takes in key sights like the Valley of the Kings as well as Alexandria; this two-week tour starts at $2,000 USD.&lt;/p&gt;\r\n\r\n&lt;h3&gt;7. Beyond the Nile Tours&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://beyondtheniletours.com/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Beyond the Nile Tours&lt;/a&gt;&amp;nbsp;is another Egypt-based tour company using local, highly educated guides with lots of historical and cultural knowledge. It offers three tours, ranging between eight days and two weeks in length; on all of them, you can be flexible with your budget, as some activities, like a balloon ride over the Pyramids ($100 USD), are optional.&lt;/p&gt;\r\n\r\n&lt;p&gt;All these tours kick off in Cairo with a full day exploring what we all dream of seeing &amp;mdash; the Pyramids of Giza and the Sphnix &amp;mdash; along with the Egyptian Museum to put the history into context. Then you&amp;rsquo;re flown down to Luxor and cruise from there to the Valley of the Kings, among other places. On the longer trips, you can choose to travel back north more slowly, or you can include several days relaxing at a Red Sea resort. Tour prices range from $1,200 to $1,400 USD per person, with some additional costs for extra activities.&lt;/p&gt;', 'f6c4789bd012bb0d1db9c021e314d640ece80edb_1cc2d67ee00e3cdaac397b109593c8a16b2a839b.jpg', 'EGYPT', '', 0, 1573303389, 'enabled'),
(16, 10, 1, 'IS PERU SAFE TO VISIT?', '&lt;p&gt;&lt;a href=&quot;https://www.nomadicmatt.com/travel-guides/peru-travel-tips/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Peru&lt;/a&gt;&amp;nbsp;is receiving record numbers of tourists these days, with over four million a year going to experience the third-largest country in South America.&lt;/p&gt;\r\n\r\n&lt;p&gt;Whether to visit Machu Picchu, the floating islands of Lake Titicaca, the Nazca Lines, or the vibrant capital city of Lima and its blossoming food scene, people are flocking to Peru in droves.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, I also often hear and read about tourists getting mugged or hear being stolen. I get worried emails from travelers wondering if Peru is safe to visit.&lt;/p&gt;\r\n\r\n&lt;p&gt;Today, I want to answer their questions:&lt;/p&gt;\r\n\r\n&lt;p&gt;Is safe to visit Peru? What do you need to look out for? What precautions do you need to take?&lt;/p&gt;\r\n\r\n&lt;h2&gt;9 Safety Tips for Peru&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;a woman selling bananas sits in the street in Peru&quot; src=&quot;https://media.nomadicmatt.com/2019/peru_streets.jpg&quot; /&gt;&lt;br /&gt;\r\nIn general, Peru is a pretty safe place to visit. You&amp;rsquo;re not going to get kidnapped or murdered there, but Peru does require you to be a bit more vigilant than other places. There is a lot of petty crime against tourists, especially those who are careless and leave valuables around.&lt;/p&gt;\r\n\r\n&lt;p&gt;Here are nine tips that should help you understand what the risks are and make sure your trip to Peru is even safer:&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;1. Avoid displaying any expensive belongings&lt;/strong&gt;&amp;nbsp;&amp;ndash; Keep your best jewelry out of sight (or even leave it at home). Don&amp;rsquo;t flaunt valuables like your mobile phone or tablet, and always keep an eye on your stuff. Don&amp;rsquo;t even wear airpods on the street. Minimizing the target on your back that says, &amp;ldquo;I&amp;rsquo;m carrying a lot of valuable stuff&amp;rdquo; is very important.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;2. Be aware of thieves or muggers working in pairs or small groups&lt;/strong&gt;&amp;nbsp;&amp;ndash; The trick of distracting you (for example, someone &amp;ldquo;accidentally&amp;rdquo; bumping into you, or a group of kids playing or fighting near you) is often used so that an accomplice can rob you while you&amp;rsquo;re not paying attention to your belongings.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;3. Watch out for pickpockets&lt;/strong&gt;&amp;nbsp;&amp;ndash; In crowded places or on public transit, be aware that thieves could be looking to literally pick your pocket, or slash your bag, to steal from you. Keep some small bills in a separate pocket, so that when you&amp;rsquo;re paying for things, you don&amp;rsquo;t need to put your whole wallet or purse on display.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;4. Avoid traveling alone at night&lt;/strong&gt;&amp;nbsp;&amp;ndash; There have been incidents of people being mugged as they leave a taxi at night in the cities, and repeated reports of bandit activity after dark in some areas, such as Tingo Mar&amp;iacute;a, northwest of Lima, at the entrance to the Tingo Mar&amp;iacute;a National Park. Having at least one friend with you will help if these worst-case scenarios happen, but it is also simply useful as an extra pair of eyes and ears to keep vigilant.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;5. Choose a reputable bus operator&lt;/strong&gt;&amp;nbsp;&amp;ndash; Sometimes the cheapest option isn&amp;rsquo;t the best one. Some of the cheap bus companies have the most reckless drivers and lots of breakdowns, and since Peru has some of the world&amp;rsquo;s worst traffic accident rates, you&amp;rsquo;re usually safer using a slightly pricier bus company. Some of the most reputable bus operators include Cruz del Sur, Oltursa, Civa, and Movil Tours.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;6. Don&amp;rsquo;t use drugs&lt;/strong&gt;&amp;nbsp;&amp;ndash; This is always a good idea. But since Peru produces a lot of cocaine, tourists (especially young backpackers) tend to do a lot of it here. It&amp;rsquo;s not worth the risk, however, since if authorities even suspect you of using drugs, you can be detained for up to 15 days. Buying drugs here supports organized crime, so be smart and skip the drugs.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;7. Learn some Spanish&lt;/strong&gt;&amp;nbsp;&amp;ndash; Being able to speak some basic Spanish will help you in many situations, but if you get in trouble and need help, then you&amp;rsquo;ll really appreciate it. Start with an app like Duolingo or Memrise to&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/four-step-language-learning/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;master some basic vocabulary&lt;/a&gt;, or take a more comprehensive course like those offered by Rosetta Stone. And don&amp;rsquo;t forget to make friends with your Google Translate app.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;8. Be careful in the coca-growing areas&lt;/strong&gt;&amp;nbsp;&amp;ndash; In the Huallaga Valley north of Tingo Mar&amp;iacute;a, cocaine is still being produced, and in the same area in recent years, the Shining Path group (a communist revolutionary organization) has been part of some violent incidents. Although tourists are not generally targeted by drug traffickers or Shining Path members, you still need to be extra vigilant in these areas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;9.&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/travel-insurance/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Buy travel insurance&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;&amp;ndash; In the case that something does go wrong, it&amp;rsquo;ll be a lot less stressful if you have travel insurance. You should have it whenever you travel, but in a country where petty theft is, unfortunately, a little more common, it&amp;rsquo;s even more important. And of course, it&amp;rsquo;s also important for covering any medical or other emergency situation you might encounter.&lt;/p&gt;\r\n\r\n&lt;p&gt;We recommend&amp;nbsp;&lt;a href=&quot;https://www.worldnomads.com/lovedby/nomadic-matt?affiliate=nmts&amp;amp;subId=brandlink&amp;amp;utm_source=nmts&amp;amp;utm_medium=affiliate&amp;amp;utm_campaign=Affiliate&amp;amp;utm_content=brandlink&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;World Nomads&lt;/a&gt;&amp;nbsp;for travelers under 70, while&amp;nbsp;&lt;a href=&quot;https://www.insuremytrip.com/?linkId=5d1cb667a65d12041eca44ec&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Insure My Trip&lt;/a&gt;&amp;nbsp;is the best choice for travelers over 70.&lt;/p&gt;\r\n\r\n&lt;p&gt;For more information on tarvel insurance, check out these posts:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/what-does-travel-insurance-cover/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;What Does Travel Insurance ACTUALLY Cover?&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/best-travel-insurance-companies/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;The 7 Best Travel Companies in 2019&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/travel-insurance/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;How to Buy the Best Travel Insurance&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;alpacas standing on a hill in Peru&quot; src=&quot;https://media.nomadicmatt.com/2019/peru_alpacas.jpg&quot; /&gt;&lt;br /&gt;\r\nWith these travel tips, you&amp;rsquo;ll be able to stay safe while you visit or backpack around Peru! Furthermore, here are answers to some frequently asked questions we get:&lt;/p&gt;\r\n\r\n&lt;h3&gt;Is Machu Picchu safe?&lt;/h3&gt;\r\n\r\n&lt;p&gt;Machu Picchu is such a common tourist destination that you&amp;rsquo;ll most likely be safer here than any other part of Peru. Chances are you&amp;rsquo;ll be hiking with a group or in a crowd, so pickpockets and other petty thieves are unlikely to be around. It&amp;rsquo;s much more important to be vigilant in cities like Lima or Cusco.&lt;/p&gt;\r\n\r\n&lt;p&gt;The more important safety issue if you are&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/hiking-the-inca-trail/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;hiking to Machu Picchu&lt;/a&gt;&amp;nbsp;is to take care of your health. Make sure you have plenty of water, and use sunscreen and hats to deal with the heat. If you&amp;rsquo;re not acclimatized to the altitude, then altitude sickness can be a problem; you need to take it seriously if you start to feel sick. Avoid this by staying in Cusco for at least a couple of days before visiting Machu Picchu.&lt;/p&gt;\r\n\r\n&lt;p&gt;Finally, if you use a guide, which is recommended when hiking, make sure they are a licensed operator, as you sometimes hear of unlicensed guides taking you the wrong route and keeping your hiking permit payment for themselves.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Is Peru safe to travel alone?&lt;/h3&gt;\r\n\r\n&lt;p&gt;Solo travel is pretty common in Peru, and you&amp;rsquo;ll often find plenty of other solo backpackers to spend time with, so it&amp;rsquo;s unlikely you&amp;rsquo;ll be alone that much.&lt;/p&gt;\r\n\r\n&lt;p&gt;Bus travel and being out after dark anywhere is safer in a group, but in general, solo travel in Peru is no more dangerous than traveling with friends or a partner.&lt;/p&gt;\r\n\r\n&lt;p&gt;Remember, too, to avoid really standing out and looking like a tourist. Don&amp;rsquo;t dress in fancy clothes, don&amp;rsquo;t wave your expensive gadgets around, and if you get lost, don&amp;rsquo;t stand there staring at a map. Basically, avoid sticking out like a sore thumb, and you&amp;rsquo;ll immediately reduce the chance of a petty thief deciding you&amp;rsquo;re their next victim.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Is it safe to travel to Peru with kids?&lt;/h3&gt;\r\n\r\n&lt;p&gt;On the whole, it&amp;rsquo;s not especially unsafe to take your kids to Peru. Family and children are very important in the Peruvian culture, so you and your kids will be made to feel very welcome.&lt;/p&gt;\r\n\r\n&lt;p&gt;Be careful with particularly small children, though, because they&amp;rsquo;re more susceptible to getting sick from unfiltered water, for example. It&amp;rsquo;s also not recommended to take kids under three to high altitudes such as Machu Picchu.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Is Peru safe for female travelers?&lt;/h3&gt;\r\n\r\n&lt;p&gt;It&amp;rsquo;s not particularly more&amp;nbsp;&lt;a href=&quot;https://www.nomadicmatt.com/travel-blogs/female-travel-safety/&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;unsafe to be a female traveler&lt;/a&gt;&amp;nbsp;in Peru, though you might be the victim of some unwanted attention, mostly in the form of catcalling &amp;mdash; but just ignore it and move on. Local women in Peru rarely go out to bars without men, so if you are a women-only group in a bar, you might get some extra attention.&lt;/p&gt;\r\n\r\n&lt;p&gt;Avoid being alone if you can, especially after dark, because petty thieves will see you as an easy target. Having said that, if you are a solo female traveler and need help, most locals will be very understanding and do their best to assist you.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Can you drink the water in Peru?&lt;/h3&gt;\r\n\r\n&lt;p&gt;While tap water is plentiful in the country and indoor plumbing is common, it&amp;rsquo;s advised that you boil all your drinking water while in Peru. Make sure to boil your water for at least 1 minute to remove any contaminants. If you have a&amp;nbsp;&lt;a href=&quot;https://amzn.to/2TwpndX&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;Lifestraw&lt;/a&gt;&amp;nbsp;or&amp;nbsp;&lt;a href=&quot;https://amzn.to/2K5Qg68&quot; rel=&quot;noopener noreferrer&quot; target=&quot;_blank&quot;&gt;SteriPen&lt;/a&gt;&amp;nbsp;you can use either of those to ensure your water is always safe to drink. Additionally, bring a reusable water bottle to avoid single-use plastic.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Are taxis safe in Peru?&lt;/h3&gt;\r\n\r\n&lt;p&gt;Taxis are relatively safe, but you&amp;rsquo;ll want to make sure that you only use authorized taxis and that you know the rate in advance. If you need a taxi, have your hostel or hotel call one for you and find out what the rate is in advance. Make sure you agree on the fare with the driver in advance, as taxis don&amp;rsquo;t use meters so it&amp;rsquo;s easy to get overcharged if you&amp;rsquo;re not paying attention.&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to avoid riding alone at night, especially if you&amp;rsquo;re a solo female traveler.&lt;/p&gt;\r\n\r\n&lt;p&gt;Peru is an amazing destination no matter what your interests, with a fascinating culture, welcoming people, and amazing landscapes and historical sights. I think everyone should check these out for themselves!&lt;/p&gt;\r\n\r\n&lt;p&gt;You do need to be cautious about your personal safety, however. The most common issues travelers face there are petty theft and pickpocketing, but by exercising a bit of extra vigilance and common sense, you can protect yourself against much of this. If you also make sure you&amp;rsquo;re not carrying valuables in an obvious way and don&amp;rsquo;t have large sums of cash in one place, the risks of having significant losses are really low.&lt;/p&gt;', 'c2eef7c9d90bfb0fbd50857c2b98311eaf85c54f_d4754afcef8595de5fd00cf35f65e6ae64b9f1a3.jpg', 'PERU', '', 0, 1573303773, 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(17, 'site_name', 'Travel Blog'),
(18, 'site_email', 'mohamed.sheir2014@gmail.com'),
(19, 'site_status', 'enabled'),
(20, 'site_close_msg', '&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:48px&quot;&gt;Site Now Is IN Maintainance Mode&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(96) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `users_group_id`, `first_name`, `last_name`, `email`, `password`, `image`, `gender`, `birthday`, `created`, `status`, `ip`, `code`) VALUES
(1, 1, 'Mohamed', 'Samy', 'mohamed.sheir2014@gmail.com', '$2y$10$/ke6F2UOYGpqXWhGPho47OsFynyROS7khsDpNc2LUrEeybRX1MH.2', 'dbb50d70ea412298bedc6c0ec8695084b55fa98c_47b25c8bc91efa5f891b463e682b51276a89a2cb.jpg', 'male', 0, 1573299330, 'enabled', '::1', '0455c62b5c455ddad07fdb885ba004bec4d78051');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `name`) VALUES
(1, 'Super Administrators'),
(2, 'Users');

-- --------------------------------------------------------

--
-- Table structure for table `users_group_permissions`
--

CREATE TABLE `users_group_permissions` (
  `id` int(11) NOT NULL,
  `users_group_id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_group_permissions`
--

INSERT INTO `users_group_permissions` (`id`, `users_group_id`, `page`) VALUES
(46, 2, '/admin/login'),
(47, 2, '/admin/login/submit'),
(48, 1, '/admin/login'),
(49, 1, '/admin/login/submit'),
(50, 1, '/admin'),
(51, 1, '/admin/dashboard'),
(52, 1, '/admin/submit'),
(53, 1, '/admin/users'),
(54, 1, '/admin/users/add'),
(55, 1, '/admin/users/submit'),
(56, 1, '/admin/users/edit/:id'),
(57, 1, '/admin/users/save/:id'),
(58, 1, '/admin/users/delete/:id'),
(59, 1, '/admin/profile/update'),
(60, 1, '/admin/users-groups'),
(61, 1, '/admin/users-groups/add'),
(62, 1, '/admin/users-groups/submit'),
(63, 1, '/admin/users-groups/edit/:id'),
(64, 1, '/admin/users-groups/save/:id'),
(65, 1, '/admin/users-groups/delete/:id'),
(66, 1, '/admin/posts'),
(67, 1, '/admin/posts/add'),
(68, 1, '/admin/posts/submit'),
(69, 1, '/admin/posts/edit/:id'),
(70, 1, '/admin/posts/save/:id'),
(71, 1, '/admin/posts/delete/:id'),
(72, 1, '/admin/posts/:id/comments'),
(73, 1, '/admin/comments/edit/:id'),
(74, 1, '/admin/comments/save/:id'),
(75, 1, '/admin/comments/delete/:id'),
(76, 1, '/admin/categories'),
(77, 1, '/admin/categories/add'),
(78, 1, '/admin/categories/submit'),
(79, 1, '/admin/categories/edit/:id'),
(80, 1, '/admin/categories/save/:id'),
(81, 1, '/admin/categories/delete/:id'),
(82, 1, '/admin/settings'),
(83, 1, '/admin/settings/save'),
(84, 1, '/admin/contacts'),
(85, 1, '/admin/contacts/reply/:id'),
(86, 1, '/admin/contacts/send/:id'),
(87, 1, '/admin/ads'),
(88, 1, '/admin/ads/add'),
(89, 1, '/admin/ads/submit'),
(90, 1, '/admin/ads/edit/:id'),
(91, 1, '/admin/ads/save/:id'),
(92, 1, '/admin/ads/delete/:id'),
(93, 1, '/admin/logout'),
(94, 1, '/admin/login'),
(95, 1, '/admin/login/submit'),
(96, 1, '/admin'),
(97, 1, '/admin/dashboard'),
(98, 1, '/admin/submit'),
(99, 1, '/admin/users'),
(100, 1, '/admin/users/add'),
(101, 1, '/admin/users/submit'),
(102, 1, '/admin/users/edit/:id'),
(103, 1, '/admin/users/save/:id'),
(104, 1, '/admin/users/delete/:id'),
(105, 1, '/admin/profile/update'),
(106, 1, '/admin/users-groups'),
(107, 1, '/admin/users-groups/add'),
(108, 1, '/admin/users-groups/submit'),
(109, 1, '/admin/users-groups/edit/:id'),
(110, 1, '/admin/users-groups/save/:id'),
(111, 1, '/admin/users-groups/delete/:id'),
(112, 1, '/admin/posts'),
(113, 1, '/admin/posts/add'),
(114, 1, '/admin/posts/submit'),
(115, 1, '/admin/posts/edit/:id'),
(116, 1, '/admin/posts/save/:id'),
(117, 1, '/admin/posts/delete/:id'),
(118, 1, '/admin/posts/:id/comments'),
(119, 1, '/admin/comments/edit/:id'),
(120, 1, '/admin/comments/save/:id'),
(121, 1, '/admin/comments/delete/:id'),
(122, 1, '/admin/categories'),
(123, 1, '/admin/categories/add'),
(124, 1, '/admin/categories/submit'),
(125, 1, '/admin/categories/edit/:id'),
(126, 1, '/admin/categories/save/:id'),
(127, 1, '/admin/categories/delete/:id'),
(128, 1, '/admin/settings'),
(129, 1, '/admin/settings/save'),
(130, 1, '/admin/contacts'),
(131, 1, '/admin/contacts/reply/:id'),
(132, 1, '/admin/contacts/send/:id'),
(133, 1, '/admin/ads'),
(134, 1, '/admin/ads/add'),
(135, 1, '/admin/ads/submit'),
(136, 1, '/admin/ads/edit/:id'),
(137, 1, '/admin/ads/save/:id'),
(138, 1, '/admin/ads/delete/:id'),
(139, 1, '/admin/logout'),
(140, 1, '/admin/login'),
(141, 1, '/admin/login/submit'),
(142, 1, '/admin'),
(143, 1, '/admin/dashboard'),
(144, 1, '/admin/submit'),
(145, 1, '/admin/users'),
(146, 1, '/admin/users/add'),
(147, 1, '/admin/users/submit'),
(148, 1, '/admin/users/edit/:id'),
(149, 1, '/admin/users/save/:id'),
(150, 1, '/admin/users/delete/:id'),
(151, 1, '/admin/profile/update'),
(152, 1, '/admin/users-groups'),
(153, 1, '/admin/users-groups/add'),
(154, 1, '/admin/users-groups/submit'),
(155, 1, '/admin/users-groups/edit/:id'),
(156, 1, '/admin/users-groups/save/:id'),
(157, 1, '/admin/users-groups/delete/:id'),
(158, 1, '/admin/posts'),
(159, 1, '/admin/posts/add'),
(160, 1, '/admin/posts/submit'),
(161, 1, '/admin/posts/edit/:id'),
(162, 1, '/admin/posts/save/:id'),
(163, 1, '/admin/posts/delete/:id'),
(164, 1, '/admin/posts/:id/comments'),
(165, 1, '/admin/comments/edit/:id'),
(166, 1, '/admin/comments/save/:id'),
(167, 1, '/admin/comments/delete/:id'),
(168, 1, '/admin/categories'),
(169, 1, '/admin/categories/add'),
(170, 1, '/admin/categories/submit'),
(171, 1, '/admin/categories/edit/:id'),
(172, 1, '/admin/categories/save/:id'),
(173, 1, '/admin/categories/delete/:id'),
(174, 1, '/admin/settings'),
(175, 1, '/admin/settings/save'),
(176, 1, '/admin/contacts'),
(177, 1, '/admin/contacts/reply/:id'),
(178, 1, '/admin/contacts/send/:id'),
(179, 1, '/admin/ads'),
(180, 1, '/admin/ads/add'),
(181, 1, '/admin/ads/submit'),
(182, 1, '/admin/ads/edit/:id'),
(183, 1, '/admin/ads/save/:id'),
(184, 1, '/admin/ads/delete/:id'),
(185, 1, '/admin/logout');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_group_id` (`users_group_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_group_id` (`users_group_id`),
  ADD KEY `users_group_id_2` (`users_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_COMMENT_POST` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_COMMENT_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_POST_CAT` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POST_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_USERS_USER_GROUP` FOREIGN KEY (`users_group_id`) REFERENCES `users_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_group_permissions`
--
ALTER TABLE `users_group_permissions`
  ADD CONSTRAINT `FK_USER_GROUP` FOREIGN KEY (`users_group_id`) REFERENCES `users_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
