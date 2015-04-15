CREATE DATABASE  IF NOT EXISTS `tportal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tportal`;
-- MySQL dump 10.13  Distrib 5.6.19, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: tportal
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `image_base_url` varchar(45) DEFAULT NULL,
  `lang` varchar(12) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `name` (`name`),
  KEY `fk_city_region_idx` (`rid`),
  KEY `fk_city_language_idx` (`lang`),
  CONSTRAINT `fk_city_language` FOREIGN KEY (`lang`) REFERENCES `language` (`lang`) ON UPDATE CASCADE,
  CONSTRAINT `fk_city_region` FOREIGN KEY (`rid`) REFERENCES `region` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,2,'Геленджик','<p><img src=\"data:image/jpeg;base64,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\" alt=\"Картинки по запросу геленджик\"></p><p>Город в России</p><p>Геленджи́к — город в Краснодарском крае России, курорт на Черноморском побережье Кавказа. Население города — 65 059 чел.. <a class=\"fl q _KCd\" href=\"http://ru.wikipedia.org/wiki/%D0%93%D0%B5%D0%BB%D0%B5%D0%BD%D0%B4%D0%B6%D0%B8%D0%BA\"><span class=\"_tWc\"></span></a></p><p><span class=\"_xdb\">Погода: </span><span class=\"_Xbe kno-fv\">9°C, ветер СЗ, 8 км/ч, влажность 65 %</span></p><p><span class=\"_xdb\">Местное время: </span><span class=\"_Xbe kno-fv\">воскресенье 22:29</span></p>','1/e8jYTNYhnqKuuROzIpruTwr8CyJ7bCBA.jpg','http://tportal.com/storage/files','ru'),(2,1,'Житомир','<p><img src=\"data:image/jpeg;base64,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\" alt=\"Картинки по запросу житомир\"></p><p>Город, Украина</p><p>Жито́мир — город на северо-западе Украины, административный центр Житомирской области и Житомирского района. </p><p>Один из старейших городов Древней Руси. <a class=\"fl q _KCd\" href=\"http://ru.wikipedia.org/wiki/%D0%96%D0%B8%D1%82%D0%BE%D0%BC%D0%B8%D1%80\"><span class=\"_tWc\"></span></a></p><p><span class=\"_xdb\">Площадь: </span><span class=\"_Xbe kno-fv\">65 км²</span></p><p><span class=\"_xdb\">Погода: </span><span class=\"_Xbe kno-fv\">11°C, ветер С, 8 км/ч, влажность 75 %</span></p><p><span class=\"_xdb\">Население: </span><span class=\"_Xbe kno-fv\">270 498 (2011 г.)</span> <span class=\"_wdb\">Организация Объединённых Наций</span></p><p><span class=\"_xdb\">Местное время: </span><span class=\"_Xbe kno-fv\">воскресенье 23:49</span></p><p><span class=\"_xdb\">Университет: </span><span class=\"_Xbe kno-fv\">Житомирский государственный университет имени Ивана Франко</span></p>','1/DBTJMyg58Ftmy4baTCmfWpRcfd2f2kjr.jpg','http://tportal.com/storage/files','ru'),(3,2,'Анапа','<p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAKAA1QMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAFBgIDBAEAB//EAEAQAAIBAgUBBgMGBQIFBAMAAAECAwQRAAUSITFBBhMiUWFxFIGRMkJSobHwFSPB0eEzYhZykrLxQ2PC0gckJf/EABkBAAMBAQEAAAAAAAAAAAAAAAECAwAEBf/EACURAAIBBAEFAQADAQAAAAAAAAABAgMREiExBBMiQVEyFHGBYf/aAAwDAQACEQMRAD8A+rpIo6jEhKv4h9cJR7T0CkETSC/JKHbHf+JqPvNPeErpvq1b/TnHVgjjVQde8HmMe7wfiH1wmHtJAN0SZgPvEC363xFO0sD20wVLajYWQWJ974GKN3B17xfxDHu8X8Qwmf8AEtINWrWpU2IIFwfXfHD2oogG3k2F/sgf1xsUbuDp3i/iGPGRfxDCfB2hgli1lXQarWuD5+R9MYMxztqqWOmonYEElzupU8Y2KDmP3eL+IY5rXzGE6nzsd3Gs1yRH4mU3uR5Y1QZpFUXEcviA3UmxH1xsQZjNrXzGOa18xheFVf7LA722bHPi78ODtfY4OBu4MWseYxzUPMYXTUnq1vniPxR/H+eNgbuDFrXzGIlx5jC7JWFBqdwo8ycR+LZuGH/VjYA7gx6x5jHCw8xhdNS/GrjyOImof8R+uDgbuoYS3riLMPMYXTUv+I/XEDUv+I/XBwB3UMJYeeIkg9cLxqpB984g1ZJ+M4PbYO6hhOKyR54XzVy/jOIGsl/GcHtsHdQfbEDhfasl/G3zOIGsl/G3ywVAHdGBucewuGtlB/1G+uPYOBu6gSWyoSEaZkVhuLg6fc/a56XxCRI0jMsNTAyWvoU3t9d8C3igD92amR3bcsyKBb2DH9cVCFjIVLjut7jXa49PXHHnYoahUsyHvFTXew0fexuqFjiXQ1QwsSxBN7cdOnzwNX4JiB3jxrYXW+tv6YppfhdfeT1T6BfwpHqJ225NhzjKewcBjv4O5MYVXs27KgVrehJxf3UEH8wPVN4h1QAiw2435OAMea0ihtEC3ZjvbVcH3x7+JTyEd2pdFNvWww2SvsAwvPTiILGjnTuuqQbH6cYzUtfTJVTRVcCzBm/1lJV4/TbnfAdqlw51faG1rbYlLJJ3YMoUXOoX2I+eBOa9G2FHqESS8LRyJpAAlIv68EbfTHoZpmYoEgkaxsknhJ52FvTAYDv5lSORNf3UUHf0Hr/fG2koq2aATLTM5B1Aatx62PGJ3Yyi2XE1HeusFEUKW1LE/H1Jvjavf04ljZQAsepAu+xIB552OJVlJUy08UVAkMcmkhikqA9Dub3xjgpcwXvHqK+mtfxO8lwSet8PsfBJ8EI6qZirR1C22Fm3sb40NW91JKFklfYd20aixa3iB3/FcYwnJo3YscyOt/E3dU7Ec35vx642Nl8MFMiCCWZuTLJZL+w1HG3fkXB+zy10qSiGpmqES2q1wWHyvbHIZfiJzHBU6XO48RDH6YlNRLOiqESmMe2oObN8gGxmbLJonUw1D6hvd4jv5C45/L2wEpAcdDJkk889N/NkEgX7zPuvle/n0xq+IQsVuwP+5CB9SMAIaAQzLMYjIVgtaNNO49D1Pt0wTSWieFdOWzwMCBdhGdtrm/d+/wBMWU5I2MWa3kCmxZfL7QxB2ZftAjGZloo0v8TPBvvop1Kk+lrfO4xjGYQaSPjl2F2DSjm1vPDqoJKmlwwiZNr3xwtfg4qgNLLGsn8Sp7t01mw3xW08SyPpdXUNpDA3B9sOpoSUJJFzMcVs5xBJkceA8bXPU/P2OOMW8sUTTJO6OM5xW76TY848Sb4qdiORggudMvqcexUZLH7OPYxhY1tB4nnZuoU8YtkmvHqEUhFtV9AOMBj0r+InhTx7Y2GepZFVQ0Q0jwkdMeS1rR2WId/ZkDoCNV/b64KR0sAH89nBBsSQOBz54wqx1DUSwIGldH98SeQojP33eXf7NjcDqcZVEjIJmly2OJO60ykb2ZCv5/4wONNWzzpTJTtqm2TTyTYnbGcSzGT/AFbC4GwPXjfBOn+LDhFMZijvpc7FSedJBBv+XnjSqJcjcmqn7HVbRvLV1kFNEPt99INQ9QFv9LjBGh7PZLHRd9Vz1UyJcs4hcW42IAJB9/8AxihrxmE0FFLOyVMh0iYsQTttfcXO3N8MtPkqBI1lq55Vvqf+YAp/26Rvf8+MPGUWrlYJN2SBtPGsYQ5NkqlpLOJGmXdeb2vZR7/S+L5ROkhjWoJYj+ZHAgA+osMMNWhWJhBTxRx6RcRKBfbqf84yQ0ZiUrG5jUD7wDEnzv1xoNSY9VYLQGfLI9tNDEGPLFnJb3sbfljkVBLC14lSA3v4EAN/c3OD5gYEs0moeVgMUyJbg2xdJHFOcjHTxVCAmSplkufvNq/7sWmKNlAMaFgb3IGLAtseIwySJOpIpI0tdLqLW0r4bb+lt9/0xxgGtq8VhYatzby3xNl2xAg4ZWElJsiQBtYYixxM4jcdcNcS5W5v9rf3xVoj6ov0xey4oa97AbYIPI8Vit9gH5YraOI2/lLtxdRifHOInBNk/pyFIUa6xRKfRQDiUnB2P1xwEDcHHmYYJsjOxDcXFvMYqZfX6YudgON8Vu2oeHbBQLlJDX4/PHsRYMDuMcwxsgOlIq5u9DVVOp4QrH7oYFb287brfrucU57KprXWAUsKi6//AK6FYwBwQTub4v7Q5RU5KqxzgSzuBepF9MgtxvvcW+mBUEUTPoqp2aF+WjFyD02uOvrjx8l6PTkmnYvp6jYDUGtiyXuJU0vJdxxoO36Yiad9CmDeJm0WfSsh9bXO3PBOKRTqHu6kqd9nsMI7XuLY3UUMbtGpPhJ1XL2Gr34xXmbGmmSFKqG7N0YWBONFLOLJGKeIadxLJHq3/rjTUVNXBTCojpKYwElZTDTqhAO3jIG4v8jg6b2MkZ6iNcvqBN3sTyul1KHVuNr38+cMvZbMZCi/FwxfChiW4DG/BN8VRvT1eUKabL+7lhYB6g0YQWJvYgEi+3kRa3yBV7lFZY5tJRdww3t6b405W8UU/G0fQK/tdlcAC04kn0+E92ulQN97nF+V11FmkStRM2oqWaJhYrY2v6i/64+RLLOXUSq6KV4F/F6XxqoM3rKLMIZqSRlMbcK2xAPB9NrHCRyuFV3fyWj63JAyk2Bt1264zul/3xgZ2P7VHOROmaaIZIraXjBCuD930P8AfB5aRair76KrZkK+KAnw3PX3xeNZrkeVCNRXiDNJviJuMFJaCVF38V2sDfc/2ximgeP7S39sVjWTOSfTSRmJsMRuTzjpUm4OxBxAgjFFMg6bRy2IEb4kT6jHLjDKRNwKyvriJG9xiy488e2w2QuDM8gY+WIEEDGk+mIMPPByFcWZCu+IknGhgMQZMHIVxZnbEL2OL2XECowykCxDUMcx4xknY45g5AAsGZUlRD8LKoYsoLSGXQdt/Lj0wFqxDBUaI21R3uCpOw6bn6Y0rkcokF2VV+y13JJ+gwTfs9RVKxoHZXVd5ppixYAXO2yj/OPOwaR69nIFQ1KCSMRtZFQG5UbdSAPc/ngnNl6d4ss1SrxzKHULsAD6cjrtiadngrvCalUVlsrPFc6duhOCFTlipSp8VP35QhCE8KEbXud7G2JTp5cFMLAdxHKGiy0WMQ+zr3IHXc43dnZWlqe7MgWNv5bJKxF7ji3Xc8f0GA1XQfDyjVMAW4DqL+nX9MdpHzKI64kqIWIbQ0UQ0Md7be+GhRcUT5Z9GqaCjqIwALyKNJdFuWA5Uk72PG1j5WwHzbLVWV5aWg104Uh0LgW2uDe4J3wOoqDNq5lNf2hniia2yeEj5WwUfsdltRTdxV5vVzrZpS6gBxptcEuTfni2DKH0srWskLK1TeIP/LA/Ftv7Yx1Bg8bwkgE7kjkk4estoMigpmpXp0mWElDPKCxNueTt7YmOzGVVcHe5dMwp5LHTHIHib6g2/e2JRpqLJYNcib2Pz05NmUkiqxpWBE2kjbyO45GPqEctSod45TUQrs0zSaCpuftAMgFtuBhTbsQVkdKSoPckEhZANyebMOLeRH1xv7P19dlEjQVMkNQrEs0V7SIR5G5Frn1NvLDvHkvSy4GCjzPVfu3jeMm5dNTJfr4yAv5njGbMO1OWUlVBDUqyCdie9jIYLbbe3ywv1WZf/wA2lFXSiWoNX3slXEQViBl1WvYgE7/mMLXa+ujrMzjlpamWePdUknvqHiNjudv8X9Al0x5TcT67PRQyi9gQeNItjK+VRtp0MdJNi1t/fA5K6roViFfqjkKjSJJNbubb6UjW3qN8bv4o0KK1Se6VxdWqSsK+4W5b5YyyXBSye2jPJk8l7RSI463O+Mc1BUx6j3RsNvDuL4Px10c8Kzwr3qsuoOuy28wTi6OeKUaVdWNrlRY/ngqpJE5dPTYnMrKQHGluoPGIFiPUX5w6tDE99cC6SLkHkHrcfTrjFPk9HKpZF0dF0+fr6Yqq/wBIy6RehUaTzxzvARg/UdmlA1RVH/UNsDZMjqQWATVp5IPBxRVoshLppowGTEdRx2WiliYiRHVuSCMUnUOATiikvTISotcomWxBjiBZuuIhj5Ya5J0yZx7FesngXx7GyB2zYMop45vhxNMjxnxFZARfpf8AtipMtcVJp1kPw4O8xuBseNrn14/vg0cukpkASHRG5usoF9XzPGPVcLUqxlJ6dmLDwxTB3Hva/wCuOZs9mxXR9nIZ5ZAwGbIq2sCYyhtzv/W2NtL2PRauKGaokjlkQuFB2j8hyb/LyxcnaLOMuEjZhS06GXdVMZi1epPXHU7W1slOkvwdNHK1/wCbqLA28jYY3j7FafoITdmXMUdO3cimTdmjc97IfXaw99/byT58qooc2kp6KqE8YYIYo2MhjNtwC3J5wQrs6zWug7uprWh8ZIalvGSPK++KaWnkmAh1uFOzOwLbjcE267Y1/QbW2wpP2VMKI0Pf1MW10sgcW9Sw9tsUyUNI0ElHNRVlCdrNKiunpe4I6YLZXHS0tMO6r62plIvaN2dV9BcEDFjQ5xUroNX8OvOrSGk9jbbDdiUuHY5anWU4e7/0ZYsiozDrWVpJWJ1z+G8l/wAQAs3l54XK7s1V0UzzZevcO1yJaQ228NtaHnYb87DDeIswgI8VJPfbxr3bH54wVmclZRBBErTAXkiRy2j3P2VHub+mJypThtMrT6ilX1YXcnznMJGeOsijm02HeU53uSdiD6dffBA1mT1sHey/DMpQPeRdLAHi4O464JGhhr4vj6WK3erdKhFAv8+GF/PnC7WZBnUpneqooK/wKNSTaZHsb73Pz5OBDz01YaolDhm2SmyiRah4BGspRwwTxBh1BXr6j2wm5dl8OXtFVN3yym5hLBWKkcalI2F+t78+eHSizCPKtXxnZx4wiA940DsWFrWuL78cW4xGozTIKiUxQO1HVzIChBB28gTYj2wZU/gVPLkyyduGoqGPvAlVJMNUbxk+IeRXofYnnB2hy+gzOggzLLB8LNUqJFm0BnH/AFXtbC1P2ZhrjHLTukTQ6kAjTRzubDjjjb5430lNnFHloginkIdekqiSHY2AN7X43ueMRcGikZO+zPXV8dPnMNLFOKyZ2Cx1VVUs0aMNvsKLA32sL43x1dYoMTpVV7sdkpafuYox5XP79MI/a/JqhKwVtJTSjvSSYnKjS34gRYHjDL2O7QZhSUCpmMaWCnTeRmldv91+Pb8sFXApNPY2UMFc0CmSJaLfUYlbvD5m5xoSupJZhCtRG8gG4DAnC/LXUmbVCrmcNQkXQwzuPqB8uMX09DWIGTJKrLqWn1NpkjiLyheg3PPvgW+lcvgwm9rD62xH0Gx5uPPzwAjzGsp701NQV9ZORdppUCL/AGHtiYzkU/dHNKykhnbinhfvCd+Ttz5+WBj8NmgwDcNqivvsCQb4pfLaKVirQRnk8W5xZFUa9JMTKhGzHg4HZ7mvwVMrU3dyuWIcMTsPl+mMk7mk1YqqezlJoOgyGTootv6b4HVPZqoiP8to26Xv/fDNRypV00M8L3VkGwBA35G++LJXMa3IYkbBSeT88NnJCOnCXoQJKGWNipRhbYbXBx7D2JIopH1qU1WPhF9+uPYdVZE300SVHPFCiw00CpGLaYlGlreZXkfPbC02aZDT53JXx6mCKY2WJOXJ3a7X2UeVsIkkc0MazUdXVr3cZCRyncL5XW3/AGjAeHN3+LZmcjWSJG3BN9jt8/PByae0I6i+H3bJKpcypEzEmpWOXUyR1SgMqgkAgevT0OM82SVOZTtUTOixDaNdRso69Lk4T8q7X11DTwxK8VTTKoCh9/DwLn/OGTLe29MsgE8E1MTyD40J/Ufnh+WPtrQUh7LwR27yU+0cYH1JvjdFk1FF/wCiHPnIdX64inaXLWQM88Y30mzXINr7jkY1U+a5bUlhBVI7LyBe4xWLijjqUakmSEcaW8IUX6bYSe1NfJlbzNUTTTTOzdyq1BVF6qNCkG/1Jw8NVUo27ws9riNftH64+bdr5apc7EqBIWYWQIbL6Ev5/Kwt1wtV5KwenpOnK9jRmGaZrU00cda9PELAukDMrLtaxYg+t+N8ZoZ4WiegpaiQRGO5jXdnVxyGP3dzuB0PFsDsnjmarmgnrJ6eee6tHUN4W9ARsRvzzjXW5RmtDBTxIA2mXaaWMFkBO2/LAehU2+mOav0tSSyjK520uppxeDVi+l7SOaaOmpMwVhSjS3drp0gfd02PHqOBfGmHPc3p6mOrY19RlryAd6Y10Nfi23HqLX6c7Kaz11LVXNPFFNTKZGJksjgkaSBYFevU/wBznZvP6g1BNfW1Os2YpHEzng73At+vvjnp05we2zqmoSWkj6Ka1AwWSI+Lc6dz6bWv++uBuYVOTzHuqinhkd9kEyLaTm4F9z6288YF7T5EYLCd5WcEMBCxLE7b7bYL5NHl9flyTU8ERp91RDEAI7ci3vj0IOUtM8utGFO0oitWUdHQwtVKJqUjSpEEjXub2svG3tiVPmBFKro4zGENpOiO0ikna9hsR6gYcZsrpZhZlNrW2OFbNOy0EdT30KvFKF8ElOwUjcX267DjEXTlBbL068KjtExVc9DWTCjq4GMyyC0U11LeHZgfvC43xkrsurSaf4mFVWEHSuX7liQOVZtwNI2Hn0xPMs1SkqJKaWGSQ0w1u68LcCxFxcc/03x2ira6OXVSwyVVJIA0aBCGU7m1mGw3PGr5WwFd8lZJC3JmuYZVQT97Ms0yShLKN1G+5FrhSQbE7Y30WfpOdLtHHURqC5Tgm2+9/n+74OwPTVWXls8pWgmD6C8yadIDeGx5tt0OMlT2aQpO1M8dp4+6kdzqYgjo3IN7He/AGNZoSzNsecmelCTslRDqDDWDYkG4IN7+WCVFSZc0TT0NLDTTuf8AWCB8ID5fmeVU9EssbKY2KzFmvHY8WIHHqRfjbqSWdZxmFPTiBJkWMDZ0I8ft6fvbAvrZs2uSrtBmFbDX/DyZi9T3bAjxaQxt6WucZp+0UU8RU08SVS+Md0NvYgk+98LFTUmQO7m2k6lH3rH1xFp7rPE9JJTsQHDsSCukEkMDzcdentiO5bJ5yPovZjOEmpDHXV60kUB8Kq1iwO5JJ9TwPphloa+pzA97TpF8ILDVIpBYc36dLHjHzDsvl0FVN8VU5nTxRINfcaCzGxsNvLbm+G6PP6zOnjy7KVpaSQqT4DfSoH3bgXPsPLjDr/pWE3bY0TZjCjlU1Pb7yi/6Y9iiGagyuJKSasikmVQWaZhqPqbnrjmDZspmj49UZsl3SNLlvshT4rnn+mM+V5HVTTiaqRY4W3IceI/LpghV5BVZBTLWTSATsQoVLta536emOPmFbRKjVIB7wfZcgOPcDj546JPJnIlbkNrTQQ+GFXQncnvGJPrck4qaHSpCSaRbcW/XGFc4hMRNzrA3QjGOEZvn0giy5FEZ+1Jq0xxi33nOw9ucLwUbi+CdTW9wGSmnivcAMadNKk+tgCPff1wzdhK+X+KQiqkolD3jaSFmifm21gL3IAt645kPY7K0o3nkrKqqq1IUloQISfKzjxj1v8sYcqSp7OdrKd6ukjWwJEKsAro1wWUDgjfY2senBwrkxcZJoPdrs5rMpqJzDHPMsz6Y+Wuf+by9OefPC9Rz1WY10LVla1M7gqgjbUjjV+IXPI4tcdRgp2gzatjFPKkZhEjEh3gZ9rWIAHXwgjpvffotJmampTvoJpIJZrhwBHJqAtdV6NxueT54optxswNWlc+hSqZIkLoQbbD8tvfGSHM6rLgIIpBLTg2aKp1FbHoNrgenHphUXPJxOY6iUtIoDAyHci2wNhswvwMWZpK9InxdbVPLTzqDHHSpqv6FiLDE3J09odJVP0hyFfkWYxlatJKRt1BlGtOmwbkD02GOx9mXpKdlyqrmkg20slQ7BVHQaSDb5HrhVo8uqpohNJNQ9xdS8Mz6GRGG2u7Er8xv05xpk/i+VlHo6HMYg6K4YK5kS/3St7D6Dp64MeopzdpIDoSj+GerMoq4J3IChERWaWaESs/QgEBiTwd9PODXZE1QjiqpaupRomEcILkrIg6FSSRx5KPXEKLthJI6QZnl81Q5sGLUzRuPW1t/lg/TVeX1smmmqO6m47mo2PA69enN8V1JeDIpYbnHQTmzlYYQZobM21lckk+lgf8AGB0ubNLOqPEw1AlWRSygeQdRa+3BIwVpcvOi9QzWIHgvzbz/AGMaaiIywFFXzU2Fv3+WGlTcoWZKPUQVTKKsgLQ0MNdUU71AR3h/mC6AknjruCOcMEdDTAX7mORwb6mF98L0sccVTKEcC4uwDWZCSdj+YxTmOb1lNAqjvJjJeFSgHhDcarnp59N745o1FDxZ3TpupaUWMUuW0s5RmhQNc7INOoevQ/PywvZvQJS1CdzMaRojcyhQUccabHjg8Y5lkuZrltNBVZgqzIigPEtgQBxve58z+mFztbW10LpKad6maZ+71KmtVb5eFSdtz+WGdSLsLGM43uFBWTS08s0MRqIFAUzq9gbc8+9r4CVuVUleJKyioBqUlnLeESkbEEAHf/zgTT53XfDyZPEyskqur7WGpgFL3G9l/M4P0Ob08KGhhLRkBtBkYm7dALnEpTinZlE00KcmTJR1rpU5XqZZFaOZKlRpIsRZWPiG3Ue/ljNn1N8fX94zsGMhbSoUFrm/I+XnzbBgtNn+bVkKTrDCp8TMviG9rAeWNuX5LT5bMamSomqZBfumbSoQ9Tb984RKpN/Ec85JOyF7LIstp6iU1uWyqjp4SSysG9Cdrfu2D2TZ9lNNmAcU5VI7tGIy2xAsL2+fN8Vz5hT5pM9FNWgU6m8kyqDqP4QxBAt5jA+p7KT04aTK6vvlJ1BWIBv78HBlTl6YFVaGTMu1WXPUCSXITWRuoMb+AEed+ccwow5V2hZSJKFrjzlj/wDtj2Mo1LDd+Q/zUkFWT3s0iryUVyur3IOE+TsdUTVhmrq+MRFy2iBSTbpuw5w2X03/AK4uTxAm5sOnF8dHHBZpPk+eVnZmphltTzd8oNwpXSyf83n8saGz3MMuCUUtNSztSOsqoyEKPM2Fj93m2xw6t3aFrOvTUC1jv+uMlRpbu5BBCZg94tanw7btff52wrm/YO2ltAGf/wDIMtd3UNJSLRv/AOvUaxMUX/2wdNz7/wCcYMjlqKouRQCSYvJI2Yy3JkbQ1hciy9BYE++CFXLRT17/ABFJSNpb/VEQBYeuLaPIaf4uGspppIFLh1VGvcA3tv0+eEyRlFv2YqeofMMvnrcxEsSx2aHvQyo+x3vb1G9sCZpKanpZIqlu970XSREYrbfqQAeT58DD52jomm7GLUtUKiUqghZEOm6mwFl31XAsd+cfOMxizIVrw1kRWRo9ZDPrtq31devz3wsVd5Nhm7LGxsWrpWVV7o6GW2uQKQpA3INh0vYW684vizSvyzXT0lezRNGWaOYfZRlvu3qDfcc7dL4wZaq1FRaSEtEF1TBNiV9yLDfywPkgmWpWWYuUdrLK4aVHW+ynrbgfPbe2Gyg5YiNSSuFaftNmCV5eGabW4VNpSEFtlvpAJx9B7O9oaOrMdDPLM1YPCZZl2c36EXAHkMI+Sdk6rNp46mGjMUGliSr7llawsGFxvfnyHzbsh7M1eX57BVvZl1F5FkU67elr/ni/8TOF0jnXWxp1MZMYoahJklDTARSkd3qWxW1ttyOo/pgjDURxVcayhijHVYtpvtsQDyOm2IVU2rvO9pyLi9z4VW3Ukc3xnijVowqAxxSfaTp80Ph/LHLdQa+notKotcMPLUpJBKUqAjlAQZFvpuPLa+K468U1Kne1C1NSEFwi6dTe1zb6nAVI6WKM2meOOnYoVaXw326E2HOOT1UFPULcqGF9W/2f87dAfljoVSpPhHI+npw5ZwTXlYyyLZCVAJvsOL8m+1vniqeSnlo31LdIYpJFstwGVfME36fXA74pWiqoZo2jbvLXhDDWpv4gRy9jck8k8nGfKYcuy4hYKhryqqmGVlBFjcAC1yDZQT6eQwY0bRv7Kd3yt6OV1dFTzNQ0lS0VRCUjhFQ99RJvdr7m+/G/qcHq6qliyKtqKhFlMMEjMkfDaRva/O4xnzKuo8hp6urYRzhZFMn8sNIhNtx8jf2wvVee5b8CKHLp6iU1Nw+pPD4h4r3Ibi+1ucRnOU5LQ6SgnsGzRGjpizBFmqSWlmJ+9v4QBwB5emJ5VlkNdTCrq5Tcse6WA7m2xufPbGntHTyTdnYZUe7CUEsGIDBrg+eAGXVKUfw1P38gSKQltLHxXvyOoB6emEjBdxuRCb9DQslFllJNRUcP8mnW8qQxtI17X8Rtu1sK2Z11ZmSvHTIEibwLqkOq1+vl7YYMvzdKZX1QL3Cs764BcqLjcr1JJP8AnBSagosyvIYo5DrMfepYHUOQfO3qMXkpW8SK0J+V0dRWxrEsao1yuleG9jx+mDmT5NXRVItVdzHbV4GBB62AwXWmjoWjVmlAp7sEDaFUHre+/wCmM1bmsdaJKei8UNrPMDbWeqrboOp+XniMaTW2UXk7I2NNBe0DTzgcmI6gPmf6Y9gRJWpAFDKSlrJ/MVdh6Hj9847incZ0fxqfthaRgPsgW9cWmqMNG00Yuy77re/oBihhqTbTc840UYUNGrC9xe1r4dmRgoZa2qjVZKMxRW1XZRpbfix335+eC0ENDPGoqfhYTcaY5pRGX9r8jGLN83molHfCd9cVlaKTQjEt/uXZdtwo4POBUXaGqZ1+FWFZWYhZNAGj0JsT+mJuKva5lI1ZhSxtmS00mVVKUgJ01NMpdHHqAuw2O/pjVNTw0UcUMDfaAKKUUm3W1+v7tgBUZxmkx0yzva9iqSNpPyvbGWrzHMtJnNTJEyXKvpHhPF/bA7VuAqaQwVVfURyVOXqAsCnxRuqukgk8e4I9SLYCHK6Q2MKdySSQ8dg2/S/On04xZRS1MkUT1dWtXJMjXl0jxlJG/wDg6bY0RF2uzxlLOQLm9x547qcIyjtHJUk8uQBW5DNUxLFFUsIxqLsdvYWHOC3ZrLYMokLSyF73AQksig2PhBNwduecaZ6hIYlHdEjXuwv12HpjuxAI3uLjGhCk3ZIWrGTjtjrl9Zl8qJTU1bFAL3ZHuNR9NX9Dg5FHBSIz6kC8s5bp74+XAE8dcaEchAisdPOm+2Lyu1o44dLTjK7GWtzOqrWYKkaU4P8AM0t4mXf6X8sWU06vGTAtnS1kPXjbf54AQVc8LalIJPIbf99caUzEgm8VgeQDsfljjdCUv0elGrCH40vhvzf4xaGWOgjjlmc+ISMV25vtzbbqOML09S5IZ2ux3uFsD7f4wVOYLJr1d6uuPRseObEdb74Uc6oc0fN6nNKKpV+8ILRBT4gFH3T6ji5OBSU6Ts1oaq4zV0wl37naw0+WJXRwAVGxuL9DgPk2afxJmgamlgqkF3jKkgD36ex/PBV6eSMXZdvxY7U1JXRytWdglT1ebNmkAhFPMjgLMlSLH/mDedtv3cHv+HsqXvZKfLKSKZ1azrCCdRBBt9emFCIvEzP3jltWq5YkqfT02w65Fmnx0GmS3fxizDz8jjh6ik081/p1UaiaxYvQqtTQPTTKEiYadiPCeb/ptj59NlFXSdqYcsDK80jjuWI8L3B5v7bjH0eSJafMq2mQ+FZNQFujDUPyI+eJRwwNUw1UsAealbVE3FtiP6nEnFPY8o5GHKOwOZtTRfxCZIzYAPqAa/oRe4v+L6YdRlGV5Plcr1SRvEBqldhz7DzJt6k4zfx+KKBEinSNpCbRtbUCOlv2MAMyrauu1RVkj91qusd9h6nz+Vv1vaKSWic2ovZi7SNRZpDHTUMNVU0JI71VkAdN77g7lfMb3xTQZfR0KRjM6qlooppwkD6j4wfukEDfyIAtffEJKQoQ0J4Nxc2P1/8AGPSVrTRmnzOBKmL8Ey+Jfn58YK44DinuLKs//g9BXNS1EsVQ8RINl+weoOoHf2OPYXs7oFNYZKKOSSOTch3uVPudz88dxyNSuB1Klz//2Q==\" alt=\"Картинки по запросу Анапа\"></p><p>Город в России</p><p>Ана́па — город на юге России, административный центр муниципального образования «город-курорт Анапа» на западе Краснодарского края, </p><p>город воинской славы. Климатический и бальнеологический курорт на берегу Чёрного моря, преимущественно детский. <a class=\"fl q _KCd\" href=\"http://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B0%D0%BF%D0%B0\"><span class=\"_tWc\"></span></a></p><p><span class=\"_xdb\">Погода: </span><span class=\"_Xbe kno-fv\">3°C, ветер Ю, 6 км/ч, влажность 93 %</span></p><p><span class=\"_xdb\">Местное время: </span><span class=\"_Xbe kno-fv\">воскресенье 23:55</span></p>','1/SJq64OZ13ko9rCZ6ViNKh1S3Zh2KjVfy.jpg','http://tportal.com/storage/files','ru');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_data_city`
--

DROP TABLE IF EXISTS `field_data_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_city` (
  `nid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `fk_field_data_city_idx` (`cid`),
  CONSTRAINT `fk_field_data_city` FOREIGN KEY (`cid`) REFERENCES `city` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_field_data_city_node` FOREIGN KEY (`nid`) REFERENCES `node` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_data_city`
--

LOCK TABLES `field_data_city` WRITE;
/*!40000 ALTER TABLE `field_data_city` DISABLE KEYS */;
INSERT INTO `field_data_city` VALUES (2,2),(1,3);
/*!40000 ALTER TABLE `field_data_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_data_tour_type`
--

DROP TABLE IF EXISTS `field_data_tour_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_tour_type` (
  `nid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `fk_field_data_tour_type_idx` (`tid`),
  CONSTRAINT `fk_field_data_tour_type` FOREIGN KEY (`tid`) REFERENCES `tour_type` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_field_data_tour_type_node` FOREIGN KEY (`nid`) REFERENCES `node` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_data_tour_type`
--

LOCK TABLES `field_data_tour_type` WRITE;
/*!40000 ALTER TABLE `field_data_tour_type` DISABLE KEYS */;
INSERT INTO `field_data_tour_type` VALUES (2,44),(1,54);
/*!40000 ALTER TABLE `field_data_tour_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `lang` varchar(12) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES ('en','English'),('ru','Русский'),('uk','Українська');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `lang` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `parent_id` (`parent_id`),
  KEY `lang` (`lang`),
  CONSTRAINT `fk_menu_lang` FOREIGN KEY (`lang`) REFERENCES `language` (`lang`) ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_self` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,NULL,'О компании','/about','ru'),(2,NULL,'Новости','/news','ru'),(3,NULL,'Услуги','/services','ru'),(4,NULL,'Отзывы','/reviews','ru'),(5,4,'Отправить отзыв','/feedback','ru'),(6,NULL,'Вопросы и ответы','/faqs','ru'),(7,6,'Задать вопрос','/ask','ru'),(8,NULL,'Контакты','/contact','ru'),(9,NULL,'Поиск','/search','ru');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `announce` text,
  `description` text,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_url` varchar(255) DEFAULT NULL,
  `image_base_url` varchar(45) DEFAULT NULL,
  `lang` varchar(12) NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `type` (`type`),
  KEY `lang` (`lang`),
  KEY `fk_node_self_idx` (`pid`),
  CONSTRAINT `fk_node_language` FOREIGN KEY (`lang`) REFERENCES `language` (`lang`) ON UPDATE CASCADE,
  CONSTRAINT `fk_node_self` FOREIGN KEY (`pid`) REFERENCES `node` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_node_type` FOREIGN KEY (`type`) REFERENCES `node_type` (`type`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,NULL,'tour','\"Приморье SPA Hotel & Wellness\" отель','','<p>Привет</p>',0,'2015-04-11 08:58:19','2015-04-15 09:03:42','1/DvIA3ho55uEHzXWJDsZdMmPzB7Awx8Sl.jpg','http://tportal.com/storage/files','ru'),(2,NULL,'tour',' \"Санвиль Арго\" мини-отель ','','',1,'2015-04-11 10:17:33','2015-04-14 18:28:15','1/XEC5ypsE39d4_mJg2grP34h9IoAPCywV.jpg','http://tportal.com/storage/files','ru');
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_type`
--

DROP TABLE IF EXISTS `node_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_type` (
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_type`
--

LOCK TABLES `node_type` WRITE;
/*!40000 ALTER TABLE `node_type` DISABLE KEYS */;
INSERT INTO `node_type` VALUES ('news','Новости','Новости'),('tour','Туры','Туры');
/*!40000 ALTER TABLE `node_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `image_base_url` varchar(45) DEFAULT NULL,
  `lang` varchar(12) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `name` (`name`),
  KEY `fk_region_language_idx` (`lang`),
  CONSTRAINT `fk_region_language` FOREIGN KEY (`lang`) REFERENCES `language` (`lang`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Украина','<p>Страна, Европа</p><p>Украи́на — государство в Восточной Европе, расположенное в юго-западной части Восточноевропейской равнины. </p><p>Наибольшая по площади страна, среди тех, которые полностью расположены в Европе, вторая, если считать Россию. <a class=\"fl q _KCd\" href=\"http://ru.wikipedia.org/wiki/%D0%A3%D0%BA%D1%80%D0%B0%D0%B8%D0%BD%D0%B0\"><span class=\"_tWc\"></span></a></p><p><span class=\"_xdb\">Столица: </span><span class=\"_Xbe kno-fv\">Киев</span></p><p><span class=\"_xdb\">Телефонный код: </span><span class=\"_Xbe kno-fv\">+380</span></p><p><span class=\"_xdb\">Президент: </span><span class=\"_Xbe kno-fv\">Пётр Алексеевич Порошенко</span></p><p><span class=\"_xdb\">Население: </span><span class=\"_Xbe kno-fv\">45,49 миллиона (2013 г.)</span> <span class=\"_wdb\">Всемирный банк</span></p><p><span class=\"_xdb\">Валовой внутренний продукт: </span><span class=\"_Xbe kno-fv\">177,4 миллиарда USD (2013 г.)</span></p>','1/lr-WwbnI9ZB5sKhucAY37VL0VtQiFB8G.jpg','http://tportal.com/storage/files','ru'),(2,'Россия','<p>\r\n	Страна\r\n</p><p>\r\n	Росси́я — государство в Восточной Европе и Северной Азии. Население — 146 267 288 чел., территория — 17 125 407 км². </p><p>Занимает первое место в мире по территории и девятое место по численности населения. Столица — Москва. <a class=\"fl q _KCd\" href=\"http://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F\"><span class=\"_tWc\"></span></a>\r\n</p><p>\r\n	<span class=\"_xdb\">Столица: </span><span class=\"_Xbe kno-fv\">Москва</span>\r\n</p><p>\r\n	<span class=\"_xdb\">Телефонный код: </span><span class=\"_Xbe kno-fv\">+7</span>\r\n</p><p>\r\n	<span class=\"_xdb\">Код ISO: </span><span class=\"_Xbe kno-fv\">RUS</span>\r\n</p><p>\r\n	<span class=\"_xdb\">Население: </span><span class=\"_Xbe kno-fv\">143,5 миллиона (2013 г.)</span> <span class=\"_wdb\">Всемирный банк</span>\r\n</p><p>\r\n	<span class=\"_xdb\">Президент: </span><span class=\"_Xbe kno-fv\">Владимир Владимирович Путин</span>\r\n</p><p>\r\n	<span class=\"_xdb\">Государственный гимн: </span><span class=\"_Xbe kno-fv\">Государственный гимн России</span>\r\n</p>','1/Uz_ldMad2qJ_n1G6nG1iIHdsukarG-vS.jpg','http://tportal.com/storage/files','ru');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_type`
--

DROP TABLE IF EXISTS `tour_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `image_base_url` varchar(45) DEFAULT NULL,
  `lang` varchar(12) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `fk_tour_type_self_idx` (`pid`),
  KEY `name` (`name`),
  KEY `fk_tour_type_language_idx` (`lang`),
  CONSTRAINT `fk_tour_type_self` FOREIGN KEY (`pid`) REFERENCES `tour_type` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_type`
--

LOCK TABLES `tour_type` WRITE;
/*!40000 ALTER TABLE `tour_type` DISABLE KEYS */;
INSERT INTO `tour_type` VALUES (1,NULL,'Деловые туры','',NULL,NULL,'ru'),(2,NULL,'Оздоровительные туры',NULL,NULL,NULL,'ru'),(3,NULL,'Развлечения и отдых',NULL,NULL,NULL,'ru'),(4,NULL,'Спортивные туры',NULL,NULL,NULL,'ru'),(5,NULL,'Экстремальный туризм',NULL,NULL,NULL,'ru'),(8,1,'Бизнес поездки',NULL,NULL,NULL,'ru'),(9,1,'Обучение за границей',NULL,NULL,NULL,'ru'),(10,1,'Загранпаспорт',NULL,NULL,NULL,'ru'),(11,1,'Визы',NULL,NULL,NULL,'ru'),(12,1,'Бронь отелей',NULL,NULL,NULL,'ru'),(13,1,'Корпоративные туры',NULL,NULL,NULL,'ru'),(14,1,'Военные туры',NULL,NULL,NULL,'ru'),(15,1,'VIP Услуги',NULL,NULL,NULL,'ru'),(23,2,'Бальнеологические курорты',NULL,NULL,NULL,'ru'),(24,2,'Грязевые курорты',NULL,NULL,NULL,'ru'),(25,2,'Лесные курорты',NULL,NULL,NULL,'ru'),(26,2,'Горные курорты',NULL,NULL,NULL,'ru'),(27,2,'Приморские курорты',NULL,NULL,NULL,'ru'),(30,3,'Пляжный отдых',NULL,NULL,NULL,'ru'),(31,3,'Круизы',NULL,NULL,NULL,'ru'),(32,3,'Романтические поездки',NULL,NULL,NULL,'ru'),(33,3,'Поездка на сафари',NULL,NULL,NULL,'ru'),(34,3,'Экскурсионные туры',NULL,NULL,NULL,'ru'),(35,3,'Свадьбы за границей',NULL,NULL,NULL,'ru'),(36,3,'Винные и пивные туры',NULL,NULL,NULL,'ru'),(37,4,'Автотуризм',NULL,NULL,NULL,'ru'),(38,4,'Мототуризм',NULL,NULL,NULL,'ru'),(39,4,'Велосипедный туризм',NULL,NULL,NULL,'ru'),(40,4,'Водный туризм',NULL,NULL,NULL,'ru'),(41,4,'Парусный туризм',NULL,NULL,NULL,'ru'),(42,4,'Конный туризм',NULL,NULL,NULL,'ru'),(43,4,'Лыжный туризм',NULL,NULL,NULL,'ru'),(44,4,'Пешеходный туризм',NULL,NULL,NULL,'ru'),(45,4,'Горный туризм',NULL,NULL,NULL,'ru'),(46,4,'Спелеотуризм',NULL,NULL,NULL,'ru'),(47,4,'Комбинированный туризм',NULL,NULL,NULL,'ru'),(52,5,'Горный турихэ',NULL,NULL,NULL,'ru'),(53,5,'Дайвинг',NULL,NULL,NULL,'ru'),(54,5,'Виндсёрфинг',NULL,NULL,NULL,'ru'),(55,5,'Джиппинг',NULL,NULL,NULL,'ru'),(56,5,'Диггерство',NULL,NULL,NULL,'ru'),(57,5,'Спелеотуризм',NULL,NULL,NULL,'ru'),(58,5,'Водный туризм',NULL,NULL,NULL,'ru'),(59,5,'Каякинг',NULL,NULL,NULL,'ru'),(60,5,'Рафтинг',NULL,NULL,NULL,'ru'),(61,5,'Парусный туризм',NULL,NULL,NULL,'ru'),(62,5,'Родео',NULL,NULL,NULL,'ru'),(63,5,'Автостоп',NULL,NULL,NULL,'ru'),(64,5,'Легкоходство',NULL,NULL,NULL,'ru');
/*!40000 ALTER TABLE `tour_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_alias`
--

DROP TABLE IF EXISTS `url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_alias` (
  `nid` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`nid`),
  CONSTRAINT `fk_url_alias_node` FOREIGN KEY (`nid`) REFERENCES `node` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_alias`
--

LOCK TABLES `url_alias` WRITE;
/*!40000 ALTER TABLE `url_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','5SmPKuZB-nw1s6oVCv9VlX9XNn9cCRVb','$2y$13$f5mtkgY2YvR4YI71to6Qv.nZZq7Ph5PdS7YeeSJ8FsVXknQidJFLG',NULL,'admin.tportal@gmail.com',10,1428485605,1428485605);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tportal'
--

--
-- Dumping routines for database 'tportal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-15 12:04:36
