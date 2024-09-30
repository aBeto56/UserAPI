-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Sze 30. 08:47
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` varchar(36) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Price` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `CreatedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `Name`, `Price`, `CreatedTime`) VALUES
('003127f2-12c5-4364-8fbd-81fc1798a6cb', 'Wooden Mop Handle', '7860', '2024-05-18'),
('014584c6-e050-414f-aadb-8c1ba24c717b', 'Muffin Mix - Chocolate Chip', '8992', '2023-11-30'),
('03dbb889-88ac-445c-a760-20af3b164d5e', 'Bread - Bagels, Mini', '6902', '2024-08-23'),
('10901699-32e6-40a3-b4c0-fa8eb868019e', 'Kellogs Raisan Bran Bars', '6820', '2024-01-25'),
('13c8d657-ae79-48bc-9686-a2e5bda63d98', 'Flour - Rye', '7477', '2024-07-27'),
('13e909c9-0dd6-4693-81c2-bd8f49af4384', 'Tequila - Sauza Silver', '7165', '2024-07-30'),
('1b5e6da6-b02d-4bf0-a915-91a2bb22be8e', 'Cookies - Amaretto', '3914', '2023-12-01'),
('1f14e6a0-d2d7-4fcb-998d-be152e0879cc', 'Appetizer - Shrimp Puff', '8718', '2024-09-24'),
('26788fa0-e6b0-4567-aee1-bc779fc3b9b5', 'The Pop Shoppe - Root Beer', '5778', '2024-05-24'),
('28714d8b-f403-427b-890f-468c89bbc830', 'Coffee - Cafe Moreno', '4124', '2023-11-01'),
('2a1eb4b6-2b3c-4d5b-9871-dac3b625eb58', 'Butter Sweet', '2376', '2024-04-08'),
('2c735ced-a767-4ae4-9b04-72c2dee58bcf', 'Nut - Chestnuts, Whole', '2205', '2024-06-22'),
('2e357636-5e16-4af2-af33-04f2e817b1c6', 'Wine - White, Concha Y Toro', '1302', '2023-10-29'),
('2eed408d-004a-4e7b-9777-17b80696b8b4', 'Cotton Wet Mop 16 Oz', '7645', '2024-01-05'),
('30bd88c9-be72-4dd2-9e85-195f3d84d370', 'Oysters - Smoked', '7558', '2024-07-16'),
('3262f7eb-d14a-410b-8ff1-a967a43ba1d6', 'Sugar Thermometer', '9843', '2024-03-29'),
('32a384ea-d089-4db8-8335-833a20b29416', 'Soup Campbells - Tomato Bisque', '2066', '2024-02-29'),
('348900d1-3741-4a6e-b1a4-8c7c483dfd1e', 'Eggs - Extra Large', '1147', '2024-03-28'),
('3571ca3a-d6c9-4199-8d50-1a7ba6eb831b', 'Sauce - Alfredo', '9533', '2023-10-22'),
('36a8cea4-38e9-414a-8660-2f0760f96c02', 'Salmon - Sockeye Raw', '1550', '2024-07-17'),
('388f9f77-9f93-4929-8276-524728ace0dc', 'Cranberries - Fresh', '575', '2023-10-17'),
('3aa2fdc3-ff31-4a93-985b-c44eed1614c1', 'Roe - Lump Fish, Black', '8825', '2024-02-09'),
('3ba65401-c523-4937-9f44-cbda9b7bd903', 'Carbonated Water - Cherry', '1850', '2024-01-28'),
('3c23cd7b-6a6f-4726-8462-e398cea088ac', 'Shrimp - Baby, Cold Water', '4578', '2023-12-19'),
('414b0c26-4cc1-4cdc-ab7c-5f55290200ef', 'Kumquat', '2701', '2024-08-23'),
('4821bbcd-6adb-4c5b-b69a-f3150df01338', 'Capon - Breast, Wing On', '7847', '2024-07-02'),
('54713e12-976d-4a6a-a144-99a30d2de3e2', 'Cheese - Wine', '1072', '2024-06-01'),
('59b50c0c-7bcd-47db-afd7-384a00f45911', 'Soup - Knorr, Classic Can. Chili', '7978', '2024-07-04'),
('5d409027-a39b-4d28-93ea-9efae86bb668', 'Wine - Vouvray Cuvee Domaine', '4290', '2024-05-27'),
('5f837e91-629d-48e1-a5e8-0858c728a562', 'Wine - White, Chardonnay', '2590', '2024-06-15'),
('61746b62-f414-4b0e-9911-86be20c2b333', 'Country Roll', '7698', '2024-01-18'),
('670c2aaf-90a6-492d-92cb-925ebf0e9322', 'Soup - Campbells, Spinach Crm', '3204', '2023-10-11'),
('6718331e-280c-42b2-bba1-c85d9f2503cc', 'Sour Puss Raspberry', '9476', '2024-04-05'),
('67950509-bd1f-4d59-a677-d2f5d36ba88c', 'Wine - Casablanca Valley', '2953', '2024-07-01'),
('68eba631-5e05-4e6a-9abf-c9c3c35c5430', 'Tuna - Sushi Grade', '5143', '2024-03-06'),
('6946bcb1-74e7-4fab-979e-140244347098', 'Mushroom - Porcini, Dry', '5238', '2023-12-11'),
('6a6d59d5-7551-4a3d-8f22-6dd01a127f04', 'Wine - Beaujolais Villages', '911', '2024-07-15'),
('6c4651e5-07c4-446d-9e05-5d110ee355b5', 'Beef - Top Butt Aaa', '3762', '2024-04-18'),
('6d1470ce-c97b-4b31-b7bc-8dd3a34a9f90', 'Zucchini - Green', '6954', '2023-12-28'),
('6dc0bf86-081d-4348-85bc-b8aa93c134bf', 'Spinach - Frozen', '8631', '2024-03-17'),
('6de4733e-f6e1-4b7f-b6e6-979e6c01e197', 'Sauce - Hp', '2149', '2024-08-13'),
('6efd628d-627d-499d-8d7c-ef50ab5f8ae1', 'Sugar - Monocystal / Rock', '8196', '2024-05-08'),
('6f19839f-a475-44dc-bf12-c140227f521a', 'Puff Pastry - Slab', '6479', '2024-01-19'),
('70e031db-bc05-40c8-8e92-2e2f7ecf9646', 'Island Oasis - Sweet And Sour Mix', '9699', '2024-05-10'),
('73b6388e-5203-417b-bc02-bf0abc8e7827', 'Pepsi - Diet, 355 Ml', '7324', '2024-09-09'),
('78f64366-92ac-4472-a285-bbf18891d0bc', 'Cheese - Cheddar, Old White', '6875', '2024-05-19'),
('79568f0f-90a0-41d2-8afa-3423a3e4ad5b', 'Cookies Cereal Nut', '7129', '2024-05-03'),
('7bc9e2d6-6b90-42a6-a94c-42bbffe0add4', 'Cup - 8oz Coffee Perforated', '6464', '2024-06-11'),
('7cbd602d-915c-4d52-b0af-f5f2453791dd', 'Lettuce Romaine Chopped', '6610', '2024-05-28'),
('82319769-2126-4439-9ea0-ef04a0076639', 'Juice - Orange, 341 Ml', '5500', '2024-08-16'),
('8502ecae-3aa5-4fa3-9cec-ebe1b13b71ba', 'Peas - Pigeon, Dry', '7671', '2024-09-25'),
('86c59096-a257-49a9-a367-3a6a21170209', 'Soup - Base Broth Beef', '666', '2023-12-12'),
('88900bab-74c0-4a30-a364-0eb024d56bcb', 'Pastry - Chocolate Marble Tea', '3168', '2023-12-14'),
('8b36fd42-27cd-40f9-8696-4bc12d1d07eb', 'Vinegar - Sherry', '7571', '2024-01-02'),
('8cbebf88-286f-4d2e-b366-0c5cdc9ea6ec', 'Lid - High Heat, Super Clear', '9653', '2024-08-22'),
('919b4c94-980d-45db-acf2-19619919cf44', 'Skirt - 29 Foot', '8058', '2024-01-30'),
('93c38bd5-a57c-4aef-b990-04d1aa2d6c2f', 'Ecolab - Hobart Washarm End Cap', '7977', '2024-05-28'),
('9637a150-e068-4e67-9342-971a9c4c46c9', 'Jam - Blackberry, 20 Ml Jar', '4803', '2024-05-28'),
('9cb378c8-d965-4e0a-aade-01e54445901e', 'Wine - Jaboulet Cotes Du Rhone', '3080', '2024-01-16'),
('a04fe502-76da-4d20-b3d4-af57cf3d1c87', 'Pepperoni Slices', '5748', '2024-02-12'),
('a27322c0-4748-4f9b-bba5-038e8ceaccc5', 'Lettuce - Boston Bib', '1152', '2023-12-24'),
('a5263504-9cf1-41b4-967f-fa85998667cf', 'Eggroll', '2687', '2024-03-13'),
('a57a0503-fb6f-4d98-a110-cb2cd48e98c5', 'Pepper - Cubanelle', '6382', '2023-10-20'),
('a5a4a752-e275-47b7-9d05-b4917182ee17', 'Bread Base - Toscano', '2540', '2024-06-10'),
('ab87b7ef-0eeb-4b28-8af1-1ab0160bca01', 'Tray - 16in Rnd Blk', '5137', '2024-07-14'),
('ac38846e-a29c-4e1f-9c51-855a8d136c70', 'Lamb - Whole Head Off', '5656', '2023-12-10'),
('ae6becd0-8aa9-44ea-8edf-c367411eb456', 'Tortillas - Flour, 8', '7683', '2024-02-26'),
('b17f50eb-cddd-49f2-8548-9a5fbc3acf12', 'Salt - Kosher', '8403', '2023-10-11'),
('b1f6c5ed-81de-4bb9-8773-fdd6590fa560', 'Soup Campbells Turkey Veg.', '9868', '2024-09-17'),
('b2688ce2-864d-4a29-a201-46c70c52d003', 'Beans - Kidney, Red Dry', '1941', '2024-06-23'),
('b56c84ac-b4f1-4dd8-a63f-b75fe7c0b44d', 'Wine - Vidal Icewine Magnotta', '5484', '2024-08-05'),
('b9424f39-8dbc-4886-bfdd-cd14603c021d', 'Buffalo - Striploin', '1022', '2024-03-15'),
('be1e2e37-a421-4303-8de9-32c0e2b4d20c', 'Sauce - Cranberry', '8897', '2023-12-04'),
('beb4e6f5-db83-4533-8d3f-268757271ac3', 'Trout - Rainbow, Fresh', '8221', '2024-09-15'),
('c0c8aac7-f9d7-48d1-ae02-4fea9ee1fa18', 'Capon - Breast, Wing On', '6848', '2023-10-16'),
('c30cac26-e903-465b-8ac7-652895900e8f', 'Grouper - Fresh', '3167', '2024-04-13'),
('c6ba9802-0f0e-474d-81ab-af3f12f84096', 'Chambord Royal', '1760', '2024-04-06'),
('c81aa2c4-8c53-43ce-b3d0-ecd592ee68f9', 'Bread - French Stick', '3155', '2024-08-06'),
('ceaafaa8-6641-4d55-9516-5db491742f24', 'Vinegar - Raspberry', '5458', '2024-05-24'),
('d09c959d-1be0-440c-9fb2-8f8ff150dc0d', 'Wine - Alicanca Vinho Verde', '6805', '2024-06-18'),
('d6048f98-144a-49e3-908b-3f91e6586157', 'Bagels Poppyseed', '2192', '2024-01-10'),
('d677026e-5f71-4e18-ac74-c24c65943067', 'Pork - Bacon Cooked Slcd', '4388', '2024-01-20'),
('d6b8196a-a664-4dcd-a45a-530479fb091f', 'Tart Shells - Sweet, 4', '9025', '2023-12-19'),
('d6cc6e07-7bf7-403d-8c16-946656c9dda7', 'Wine - German Riesling', '7289', '2023-10-14'),
('d6d76810-96bf-4445-9be7-03c59d45e856', 'Peppercorns - Pink', '7581', '2024-09-14'),
('d7fc326f-43a6-40a9-8b73-0fc648932c6c', 'Dc - Sakura Fu', '5405', '2024-03-27'),
('d9616314-6a3f-4325-8390-43884d0e1b39', 'Hand Towel', '6703', '2024-09-01'),
('dabca7b0-5777-4c64-bf4f-f15ecec26237', 'Chocolate Bar - Oh Henry', '8917', '2023-11-23'),
('dc94733f-436d-454a-af37-9d4002a85186', 'Shrimp - 16/20, Peeled Deviened', '4681', '2024-08-10'),
('dde81ac6-419c-4b30-a192-ffce9cdf866a', 'Beans - Fava Fresh', '5096', '2024-02-17'),
('e00b9829-9b25-460a-bf54-9f14396f0225', 'Ostrich - Fan Fillet', '3765', '2024-07-18'),
('e259eca5-6fd3-43de-b88f-60809cf198b1', 'Beer - Sleemans Honey Brown', '6348', '2023-12-11'),
('e38a82d0-07eb-432b-8b25-98bf588df857', 'Glove - Cutting', '6331', '2024-09-10'),
('e7fd3a2e-d2fc-439b-adab-4fef6c3933a7', 'Beef - Tongue, Fresh', '652', '2023-11-12'),
('f33d825a-0cd9-490e-9f82-70d36021d6bb', 'Wood Chips - Regular', '7472', '2024-03-25'),
('f35b6eff-62d7-437f-b8ae-1779b1c7e7ab', 'Cups 10oz Trans', '8649', '2024-06-26'),
('f4450225-cc0d-4ac2-b495-d731db6c8eb5', 'Steam Pan - Half Size Deep', '3112', '2024-02-06'),
('f806026a-9c3f-422d-bb5d-916ec797dfad', 'Trout - Hot Smkd, Dbl Fillet', '4731', '2024-09-14'),
('f965088e-879a-4b4c-ab95-d180567d4df5', 'Tumeric', '5058', '2024-04-16'),
('fcc35bc3-114a-4017-994d-359b2259bb3d', 'Chicken - Thigh, Bone In', '7478', '2024-07-12');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
