CREATE TABLE paf_languages (
  display_order integer,
  name varchar(49) DEFAULT NULL,
  iso varchar(2) DEFAULT NULL
);

ALTER TABLE paf_languages ADD PRIMARY KEY (iso);

INSERT INTO paf_languages VALUES(1, 'English', 'en');
INSERT INTO paf_languages VALUES(2, 'Afar', 'aa');
INSERT INTO paf_languages VALUES(3, 'Abkhazian', 'ab');
INSERT INTO paf_languages VALUES(4, 'Afrikaans', 'af');
INSERT INTO paf_languages VALUES(5, 'Amharic', 'am');
INSERT INTO paf_languages VALUES(6, 'Arabic', 'ar');
INSERT INTO paf_languages VALUES(7, 'Assamese', 'as');
INSERT INTO paf_languages VALUES(8, 'Aymara', 'ay');
INSERT INTO paf_languages VALUES(9, 'Azerbaijani', 'az');
INSERT INTO paf_languages VALUES(10, 'Bashkir', 'ba');
INSERT INTO paf_languages VALUES(11, 'Belarusian', 'be');
INSERT INTO paf_languages VALUES(12, 'Bulgarian', 'bg');
INSERT INTO paf_languages VALUES(13, 'Bihari', 'bh');
INSERT INTO paf_languages VALUES(14, 'Bislama', 'bi');
INSERT INTO paf_languages VALUES(15, 'Bengali/Bangla', 'bn');
INSERT INTO paf_languages VALUES(16, 'Tibetan', 'bo');
INSERT INTO paf_languages VALUES(17, 'Breton', 'br');
INSERT INTO paf_languages VALUES(18, 'Catalan', 'ca');
INSERT INTO paf_languages VALUES(19, 'Corsican', 'co');
INSERT INTO paf_languages VALUES(20, 'Czech', 'cs');
INSERT INTO paf_languages VALUES(21, 'Welsh', 'cy');
INSERT INTO paf_languages VALUES(22, 'Danish', 'da');
INSERT INTO paf_languages VALUES(23, 'German', 'de');
INSERT INTO paf_languages VALUES(24, 'Bhutani', 'dz');
INSERT INTO paf_languages VALUES(25, 'Greek', 'el');
INSERT INTO paf_languages VALUES(26, 'Esperanto', 'eo');
INSERT INTO paf_languages VALUES(27, 'Spanish', 'es');
INSERT INTO paf_languages VALUES(28, 'Estonian', 'et');
INSERT INTO paf_languages VALUES(29, 'Basque', 'eu');
INSERT INTO paf_languages VALUES(30, 'Persian', 'fa');
INSERT INTO paf_languages VALUES(31, 'Finnish', 'fi');
INSERT INTO paf_languages VALUES(32, 'Fiji', 'fj');
INSERT INTO paf_languages VALUES(33, 'Faeroese', 'fo');
INSERT INTO paf_languages VALUES(34, 'French', 'fr');
INSERT INTO paf_languages VALUES(35, 'Frisian', 'fy');
INSERT INTO paf_languages VALUES(36, 'Irish', 'ga');
INSERT INTO paf_languages VALUES(37, 'Scots/Gaelic', 'gd');
INSERT INTO paf_languages VALUES(38, 'Galician', 'gl');
INSERT INTO paf_languages VALUES(39, 'Guarani', 'gn');
INSERT INTO paf_languages VALUES(40, 'Gujarati', 'gu');
INSERT INTO paf_languages VALUES(41, 'Hausa', 'ha');
INSERT INTO paf_languages VALUES(42, 'Hindi', 'hi');
INSERT INTO paf_languages VALUES(43, 'Croatian', 'hr');
INSERT INTO paf_languages VALUES(44, 'Hungarian', 'hu');
INSERT INTO paf_languages VALUES(45, 'Armenian', 'hy');
INSERT INTO paf_languages VALUES(46, 'Interlingua', 'ia');
INSERT INTO paf_languages VALUES(47, 'Interlingue', 'ie');
INSERT INTO paf_languages VALUES(48, 'Inupiak', 'ik');
INSERT INTO paf_languages VALUES(49, 'Indonesian', 'in');
INSERT INTO paf_languages VALUES(50, 'Icelandic', 'is');
INSERT INTO paf_languages VALUES(51, 'Italian', 'it');
INSERT INTO paf_languages VALUES(52, 'Hebrew', 'iw');
INSERT INTO paf_languages VALUES(53, 'Japanese', 'ja');
INSERT INTO paf_languages VALUES(54, 'Yiddish', 'ji');
INSERT INTO paf_languages VALUES(55, 'Javanese', 'jw');
INSERT INTO paf_languages VALUES(56, 'Georgian', 'ka');
INSERT INTO paf_languages VALUES(57, 'Kazakh', 'kk');
INSERT INTO paf_languages VALUES(58, 'Greenlandic', 'kl');
INSERT INTO paf_languages VALUES(59, 'Cambodian', 'km');
INSERT INTO paf_languages VALUES(60, 'Kannada', 'kn');
INSERT INTO paf_languages VALUES(61, 'Korean', 'ko');
INSERT INTO paf_languages VALUES(62, 'Kashmiri', 'ks');
INSERT INTO paf_languages VALUES(63, 'Kurdish', 'ku');
INSERT INTO paf_languages VALUES(64, 'Kirghiz', 'ky');
INSERT INTO paf_languages VALUES(65, 'Latin', 'la');
INSERT INTO paf_languages VALUES(66, 'Lingala', 'ln');
INSERT INTO paf_languages VALUES(67, 'Laothian', 'lo');
INSERT INTO paf_languages VALUES(68, 'Lithuanian', 'lt');
INSERT INTO paf_languages VALUES(69, 'Latvian/Lettish', 'lv');
INSERT INTO paf_languages VALUES(70, 'Malagasy', 'mg');
INSERT INTO paf_languages VALUES(71, 'Maori', 'mi');
INSERT INTO paf_languages VALUES(72, 'Macedonian', 'mk');
INSERT INTO paf_languages VALUES(73, 'Malayalam', 'ml');
INSERT INTO paf_languages VALUES(74, 'Mongolian', 'mn');
INSERT INTO paf_languages VALUES(75, 'Moldavian', 'mo');
INSERT INTO paf_languages VALUES(76, 'Marathi', 'mr');
INSERT INTO paf_languages VALUES(77, 'Malay', 'ms');
INSERT INTO paf_languages VALUES(78, 'Maltese', 'mt');
INSERT INTO paf_languages VALUES(79, 'Burmese', 'my');
INSERT INTO paf_languages VALUES(80, 'Nauru', 'na');
INSERT INTO paf_languages VALUES(81, 'Nepali', 'ne');
INSERT INTO paf_languages VALUES(82, 'Dutch', 'nl');
INSERT INTO paf_languages VALUES(83, 'Norwegian', 'no');
INSERT INTO paf_languages VALUES(84, 'Occitan', 'oc');
INSERT INTO paf_languages VALUES(85, '(Afan)/Oromoor/Oriya', 'om');
INSERT INTO paf_languages VALUES(86, 'Punjabi', 'pa');
INSERT INTO paf_languages VALUES(87, 'Polish', 'pl');
INSERT INTO paf_languages VALUES(88, 'Pashto/Pushto', 'ps');
INSERT INTO paf_languages VALUES(89, 'Portuguese', 'pt');
INSERT INTO paf_languages VALUES(90, 'Quechua', 'qu');
INSERT INTO paf_languages VALUES(91, 'Rhaeto-Romance', 'rm');
INSERT INTO paf_languages VALUES(92, 'Kirundi', 'rn');
INSERT INTO paf_languages VALUES(93, 'Romanian', 'ro');
INSERT INTO paf_languages VALUES(94, 'Russian', 'ru');
INSERT INTO paf_languages VALUES(95, 'Kinyarwanda', 'rw');
INSERT INTO paf_languages VALUES(96, 'Sanskrit', 'sa');
INSERT INTO paf_languages VALUES(97, 'Sindhi', 'sd');
INSERT INTO paf_languages VALUES(98, 'Sangro', 'sg');
INSERT INTO paf_languages VALUES(99, 'Serbo-Croatian', 'sh');
INSERT INTO paf_languages VALUES(100, 'Singhalese', 'si');
INSERT INTO paf_languages VALUES(101, 'Slovak', 'sk');
INSERT INTO paf_languages VALUES(102, 'Slovenian', 'sl');
INSERT INTO paf_languages VALUES(103, 'Samoan', 'sm');
INSERT INTO paf_languages VALUES(104, 'Shona', 'sn');
INSERT INTO paf_languages VALUES(105, 'Somali', 'so');
INSERT INTO paf_languages VALUES(106, 'Albanian', 'sq');
INSERT INTO paf_languages VALUES(107, 'Serbian', 'sr');
INSERT INTO paf_languages VALUES(108, 'Siswati', 'ss');
INSERT INTO paf_languages VALUES(109, 'Sesotho', 'st');
INSERT INTO paf_languages VALUES(110, 'Sundanese', 'su');
INSERT INTO paf_languages VALUES(111, 'Swedish', 'sv');
INSERT INTO paf_languages VALUES(112, 'Swahili', 'sw');
INSERT INTO paf_languages VALUES(113, 'Tamil', 'ta');
INSERT INTO paf_languages VALUES(114, 'Telugu', 'te');
INSERT INTO paf_languages VALUES(115, 'Tajik', 'tg');
INSERT INTO paf_languages VALUES(116, 'Thai', 'th');
INSERT INTO paf_languages VALUES(117, 'Tigrinya', 'ti');
INSERT INTO paf_languages VALUES(118, 'Turkmen', 'tk');
INSERT INTO paf_languages VALUES(119, 'Tagalog', 'tl');
INSERT INTO paf_languages VALUES(120, 'Setswana', 'tn');
INSERT INTO paf_languages VALUES(121, 'Tonga', 'to');
INSERT INTO paf_languages VALUES(122, 'Turkish', 'tr');
INSERT INTO paf_languages VALUES(123, 'Tsonga', 'ts');
INSERT INTO paf_languages VALUES(124, 'Tatar', 'tt');
INSERT INTO paf_languages VALUES(125, 'Twi', 'tw');
INSERT INTO paf_languages VALUES(126, 'Ukrainian', 'uk');
INSERT INTO paf_languages VALUES(127, 'Urdu', 'ur');
INSERT INTO paf_languages VALUES(128, 'Uzbek', 'uz');
INSERT INTO paf_languages VALUES(129, 'Vietnamese', 'vi');
INSERT INTO paf_languages VALUES(130, 'Volapuk', 'vo');
INSERT INTO paf_languages VALUES(131, 'Wolof', 'wo');
INSERT INTO paf_languages VALUES(132, 'Xhosa', 'xh');
INSERT INTO paf_languages VALUES(133, 'Yoruba', 'yo');
INSERT INTO paf_languages VALUES(134, 'Chinese', 'zh');
INSERT INTO paf_languages VALUES(135, 'Zulu', 'zu');
