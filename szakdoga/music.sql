-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 29. 13:10
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `music`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genrename` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `genres`
--

INSERT INTO `genres` (`id`, `genrename`) VALUES
(1, 'Bass House'),
(2, 'Drum and Bass'),
(3, 'Future House'),
(4, 'Slap House'),
(5, 'House'),
(6, 'Trap'),
(7, 'Chill Beat'),
(8, 'Future Bass');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mdata`
--

CREATE TABLE `mdata` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `cpic` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `zip` varchar(256) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mdata`
--

INSERT INTO `mdata` (`id`, `name`, `genre`, `url`, `cpic`, `zip`) VALUES
(1, 'Remedy', 'Drum and Bass', '\r\nhttps://drive.google.com/uc?id=1NW-3aql8Rwozpy6nWOUQ9Bn2Ggx-AW00', '\r\nhttps://drive.google.com/uc?id=1VICnAIcCBe_f-09130auiyVJ0MrLmhdF', 'https://drive.google.com/u/0/uc?id=12TVM2Hp1K8iY-MiRJgU82vMwg89DVpQ1&export=download'),
(2, 'Tell me', 'Slap House', 'https://drive.google.com/uc?id=1i7oSHMdKSZy67ZyMZeG-QRFyJ-3-k0bq\r\n', 'https://drive.google.com/uc?id=1SSCWbwBrNuJZIT9J3uXsAq6bTq8VZnCu', '#'),
(3, 'Bass Drop', 'Bass House', 'https://drive.google.com/uc?id=1MiD8ewb8TnPgO4T1AKkmbRJl510HZ0Xz', 'https://drive.google.com/uc?id=1drHe6aLZFFmdddQT5B-8Jg7rIMUZhiBM', '#'),
(4, 'Late At Night Remix', 'House', 'https://drive.google.com/uc?id=1lsj6f0JFqc014IVj0q9lgq3zcrFL6bnk', 'https://drive.google.com/uc?id=18RaCV4DN5hdA0r0B_odxrI0TTZ8I1U0_', '#'),
(5, 'Zonderchill', 'Future House', 'https://drive.google.com/uc?id=1JTe5feRd-y0ZO8bFwpC34FC_x-0igCbi', 'https://drive.google.com/uc?id=1Q-bEl7-kFk8qDa6YhIAcEUxiq-6OIHxt', '#'),
(6, 'Hexagon Slap', 'Future House', 'https://drive.google.com/uc?id=1ZF-2sE59vvw_t1gibwhTZMHzeEl44RyP', 'https://drive.google.com/uc?id=1uPK7nZJMYKIWfPt782QGAy4UMewb5-9R', '#'),
(7, 'Waiting4U', 'Slap House', 'https://drive.google.com/uc?id=1t0AhfBTHHKkaRHP0yTpW9zqOmfoMn-VI', 'https://drive.google.com/uc?id=1AwR16qH5ZDJ2eSZxFSV1MhGMVLtuTUJK', '#'),
(8, 'Arabic House', 'House', 'https://drive.google.com/uc?id=1luvBU4ySxBrqY21AGwiMUcsxlUpjLOvp', 'https://drive.google.com/uc?id=16lgxZrJ5ukMOVhz3M-Mo4UmmRyjZQdz6', '#'),
(9, 'Begin by Letting Go', 'Drum and Bass', 'https://drive.google.com/uc?id=1sCSOGN48M10aiKxe8QUqRxtwCJ-2UC30', 'https://drive.google.com/uc?id=1qMpOvUn8mG3SiMr5qCyarpEWhbzFcaib', '#'),
(10, 'Happy', 'Future House', 'https://drive.google.com/uc?id=1OTpCi9mWTPclDiL73A38e2UIQd1ixlDB', 'https://drive.google.com/uc?id=17suAFBy6Sv2OdLARN_ehv_YLwARM2Bbv', '#'),
(11, 'Lost', 'Future House', 'https://drive.google.com/uc?id=1suYTqjfL8aX3Fi2yBFiZQ7uPACceIqiH', 'https://drive.google.com/uc?id=1KFOUT7zEX6s4cc_4RLV8QWP1Xo-j2k5F', '#'),
(12, 'Wait a Minute', 'Drum and Bass', 'https://drive.google.com/uc?id=1g-hT-pMULmsZynW_VyT-lN-iz52w5z5F', 'https://drive.google.com/uc?id=1U4tGZNRD-_PT0h_N4Ww_LB7RkcHCWZC3', '#');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mdatas`
--

CREATE TABLE `mdatas` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `genre` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `cpic` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `zip` varchar(256) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mdatas`
--

INSERT INTO `mdatas` (`id`, `name`, `genre`, `url`, `cpic`, `zip`) VALUES
(1, 'Remedy', 'Drum and Bass', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FRemedy.mp3?alt=media&token=62ddde5b-3fa2-44c9-8c3d-a7d6482c3fe0', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fremedy.png?alt=media&token=3aba1538-2c97-444f-8375-1a506deed654', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Samplepacks%2FRemedy.zip?alt=media&token=823cdd39-3440-4bf6-a60f-bd39a11636b8'),
(2, 'Bass Drop', 'Bass House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FBass%20drop.mp3?alt=media&token=8e15df70-89d8-46a6-ac4d-42ad49b714d6', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fbass%20drop.png?alt=media&token=2a28da0c-abb9-4ecd-ba39-748aef5ac0d9', '#'),
(3, 'Late At Night Remix', 'House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FLate%20at%20night%20remix.mp3?alt=media&token=43b8fcf3-0f57-4a81-beae-60da71cf15f7', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Flate%20at%20night%20remix.png?alt=media&token=97853bda-a801-4a85-be2e-d07e1ed5b786', '#'),
(4, 'Zonderchill', 'Future House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FZonderchill.mp3?alt=media&token=50c79274-3b9c-4a75-8d1b-7fc965ebb194', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fzonderchill.png?alt=media&token=c1afad75-fe76-401f-b37a-aa45c9e7b6d4', '#'),
(5, 'Tell Me', 'Slap House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FTell%20me.mp3?alt=media&token=1db50806-e572-4bfc-baf5-b749de04d9b2', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Ftell%20me.png?alt=media&token=c453dc5d-c658-4a64-9d08-1f12b0cf6601', '#'),
(6, 'Hexagon Slap', 'Future House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FHexagon%20slap.mp3?alt=media&token=bd42a417-a320-456a-997e-073737d3a5d6', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fhexagon%20slap.png?alt=media&token=eb784f92-0a56-41cb-be14-d1842a8d0fab', '#'),
(7, 'Waiting4U', 'Slap House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FWaiting4u.mp3?alt=media&token=f9bb58a2-b29f-4c92-958e-dcf29af5eca2', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fwaiting4u.png?alt=media&token=0466fabd-8ee2-4ebd-8e49-a97ad1f9b0b6', '#'),
(8, 'Arabic House', 'House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FArabic%20house.mp3?alt=media&token=e9e84f78-3cb8-4a44-bf52-71c511ed9108', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/lilpics%2Fl_arabic%20house.png?alt=media&token=de152f84-0b18-4c47-94b2-2ec9999daac8', '#'),
(9, 'Begin by Letting Go ', 'Drum and Bass', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FBegin%20by%20Letting%20Go.mp3?alt=media&token=f3cbd49a-9f5d-46e3-aede-662ca4ea8fb9', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fbegin%20by%20letting%20go.png?alt=media&token=92cc7152-71cf-466a-bd52-1d815ba2c5a3', '#'),
(10, 'Happy', 'Future House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FHappy.mp3?alt=media&token=a82d573c-bb82-4d0e-adf8-25933968f5b4', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fhappy.png?alt=media&token=dacb29c6-1750-4c8b-ba9e-cfa1aa104f1e', '#'),
(11, 'Lost', 'Future House', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FLost.mp3?alt=media&token=0951ebb6-1bb3-4dc1-95e7-54f4fc5fc92e', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Flost.png?alt=media&token=af1b078b-f2fe-4765-b24c-6a69e41c619c', '#'),
(12, 'Wait a Minute', 'Drum and Bass', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FWait%20a%20minute.mp3?alt=media&token=3f79ba5a-eb8f-40a0-93f4-a516ec869877', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Pics%2Fwait%20a%20minute.png?alt=media&token=1e6a139e-b726-411a-87df-c61693a2775b', '#');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `musicdata`
--

CREATE TABLE `musicdata` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `musicurl` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `cpicurl` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `zipurl` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `genreid` int(11) NOT NULL,
  `bpm` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `musicdata`
--

INSERT INTO `musicdata` (`id`, `name`, `musicurl`, `cpicurl`, `zipurl`, `genreid`, `bpm`) VALUES
(1, 'Remedy', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FRemedy.mp3?alt=media&token=62ddde5b-3fa2-44c9-8c3d-a7d6482c3fe0', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/lilpics%2Fl_remedy.png?alt=media&token=c9db9457-1124-476a-997c-6df5d51a8c76', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Samplepacks%2FRemedy.zip?alt=media&token=823cdd39-3440-4bf6-a60f-bd39a11636b8', 2, 174),
(2, 'Bass Drop', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FBass%20drop.mp3?alt=media&token=8e15df70-89d8-46a6-ac4d-42ad49b714d6', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/lilpics%2Fl_bass%20drop_3.png?alt=media&token=6167f86c-6158-4907-8e44-49fb774800c5', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Samplepacks%2FRemedy.zip?alt=media&token=823cdd39-3440-4bf6-a60f-bd39a11636b8', 1, 126),
(3, 'Tell Me', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Musics%2FTell%20me.mp3?alt=media&token=1db50806-e572-4bfc-baf5-b749de04d9b2', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/lilpics%2Fl_tell%20me.png?alt=media&token=42e5887c-bac5-4774-bb6a-edaab5ed983c', 'https://firebasestorage.googleapis.com/v0/b/musicweb-4ddd7.appspot.com/o/Samplepacks%2FRemedy.zip?alt=media&token=823cdd39-3440-4bf6-a60f-bd39a11636b8', 4, 126);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_hungarian_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(36, 'shsfh', 'tothtomi08@gmail.com', '$2y$10$SonbUVSVRtJe5mp9U3TJse9dEJDClcnYvEkS0KpJ76OpUv71vK3kq', 'user'),
(37, 'toma', 'toma@gmail.com', '$2y$10$dlYo6QVPENiZSCxyI7VOR.tlRVJDQDSnV6TWiUHXJVQjOcsKgy5zC', 'user'),
(39, 'kam', 'tothtomi08@gmail.comttt', '$2y$10$ifgNbvvrLlXIFCO5hMZibejA.acNTXgQf4fpAQKaa3Pa1QfeUcNta', 'user'),
(71, 'tomi', 'totomi08@gmail.com', '$2y$10$efvMqzx2hq/xD.KhWYwOfOZmODDBzYtIewvOUzK/jtRC6tozZOGQu', 'user'),
(80, 'akos', 'akos@gmail.com', '$2y$10$SYNsmwyGrTiu7F13iEhi2ucOJ2Zv7eOlmuDEudtKJSno.626.y6y6', 'user'),
(89, 'tomii', 'e@gmsil.com', '$2y$10$pX.zzmDJGrfEpguzNRjgSuW6pa.qAZVDYimmLCBAdfhNNNNSKZIae', 'user'),
(92, 't', 'rez', '$2y$10$BJwzsI9IXviFwsjWQYHRZuj1tmCwiRtIfGZ4zfIJiTIe017Lr/xkC', 'user'),
(119, '', '', '$2y$10$cMsy3JJhjtJudDOlTkGM/umvIwbJ9/nqwDzGOpGzdzMAGXmuTQGa6', 'user');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `mdata`
--
ALTER TABLE `mdata`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `mdatas`
--
ALTER TABLE `mdatas`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `musicdata`
--
ALTER TABLE `musicdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genreid` (`genreid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `mdata`
--
ALTER TABLE `mdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `mdatas`
--
ALTER TABLE `mdatas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `musicdata`
--
ALTER TABLE `musicdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `musicdata`
--
ALTER TABLE `musicdata`
  ADD CONSTRAINT `musicdata_ibfk_1` FOREIGN KEY (`genreid`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
