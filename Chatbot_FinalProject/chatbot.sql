-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2017 年 06 月 23 日 05:50
-- 伺服器版本: 5.6.35
-- PHP 版本： 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `chatbot`
--

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(256) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `pic_url` varchar(256) DEFAULT NULL,
  `status` enum('active','inactive','refuse') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `created_at`, `updated_at`, `content`, `title`, `url`, `views`, `pic_url`, `status`) VALUES
(9, 2, '2017-05-30 22:34:43', '2017-06-07 10:12:29', '今天要介紹的這款聊天機器人並不涉及複雜的NLP或機器學習--它試圖解決更為實際的問題，也就是在當代宏偉的社群平台上，耕耘我們古老且久遠的需求--社交。來自台灣的兩人團隊在臉書平台上搭建了聊天配對功能，解決了臉書向來缺乏的匿名聊天服務。\r\n \r\nWe will introduce a variety of interesting chatbots regularly in our chatbot columns.\r\nToday we introduce this chatbot which is neither involved in complex NLP nor machine learning. It tries to solve a more practical problem, socializing, which is a long-term needs via the social networking platforms.\r\n \r\n只要你擁有臉書帳號，就可以在臉書搜尋欄輸入「@getHerHim」，抵達粉專後向專頁發送訊息，就可以迅速開啟聊天配對服務。\r\n\r\nHER/HIM--在這款透過Messenger API所搭建的聊天服務中，你可以自訂性別與年齡，然後設定篩選條件，根據性別、年齡篩選出理想中的聊天對象。\r\n\r\n聊天過程中雙方都是匿名狀態，在一無所知的情況下摸索著對方的輪廓，雙方訊息皆透過系統來進行即時傳送，你可以跟對方天南地北的亂聊，就跟所有匿名聊天室一樣。\r\n\r\n如果聊出了興趣聊出了感情聊出了默契，你可以使用系統自帶的「我想交換臉書」功能，順理成章的互相交換臉書資訊。\r\n\r\n好把，或許這次聊天不是那麼順利，使用選單中的「我要閃了」功能，就能結束一段匿名聊天，結束之後可以重新開啟配對功能，繼續找尋聊天對象。\r\n\r\n如同粉專封面所主打的「上班族訴苦解悶的聊天軟體」，這款有趣的聊天機器人所能做到的不只於此，因為他的年齡範圍設定在15歲到100歲，所以理論上你可以認識從高中生到老杯杯的橫跨85歲的年齡段。當然，如果設定的年齡範圍過窄(例如18~20歲)的話，會拉長配對時間，甚至配不到適合的對象。\r\n \r\n在聊天機器人潮流中，HER/HIM反映了開發者在MESSENGER API上能做到的許多事情中的其中一部份，它不是直覺上大家以為的那種會跟人類聊天的機器人，這反而是他們現階段所要避免的，研發團隊在其他訪談中提到，為了避免使用者懷疑自己在跟機器人聊天，短時間內並不考慮開放機器人聊天功能，對於這個正在起步的聊天應用而言，他們順理成章地在聊天室中建立了一個聊天室功能，似乎還挺適合的。\r\n \r\n這款面向台灣使用者的臉書chatbot服務無須下載任何APP，操作簡單且使用起來很有趣，值得大家來使用。', 'HER/HIM', 'https://www.messenger.com/login.php?next=https%3A%2F%2Fwww.messenger.com%2Ft%2FgetHerHim', 0, 'https://www.inside.com.tw/wp-content/uploads/2016/07/Her-and-Him.png', 'active'),
(11, 5, '2017-05-30 22:34:43', '2017-06-23 01:01:39', 'https://youtu.be/KLtCjJ3TDu8?list=PLE1yRwMphrQH_mAdfxLu0IUiSlPm4X3p1\r\n \r\n分享GPS即可獲得周遭Ubike的點\r\nhttps://youtu.be/3wqRZMjEAco?list=PLE1yRwMphrQH_mAdfxLu0IUiSlPm4X3p1\r\n \r\n透過語音找尋Ubike的位置\r\n \r\nName: UBike helper\r\nTag: Social,photo\r\nSummary: Find our the nearest Ubike by voice and GPS location.\r\n \r\nContext：\r\nhttps://youtu.be/KLtCjJ3TDu8?list=PLE1yRwMphrQH_mAdfxLu0IUiSlPm4X3p1\r\n \r\n分享GPS即可獲得周遭Ubike的點\r\nShare your location and you can get the nearest UBike location\r\nhttps://youtu.be/3wqRZMjEAco?list=PLE1yRwMphrQH_mAdfxLu0IUiSlPm4X3p1\r\n', 'Ubike小幫手', 'http://m.me/chat.youbike?ref=botpartner', 1, 'http://www.ericsfchuang.com/wp-content/uploads/2015/02/iTunesArtwork@2x.png', 'refuse'),
(12, 4, '2017-05-30 22:34:43', '2017-06-22 22:53:07', 'https://youtu.be/-0zyUzqaG90\r\n透過引導方式了解最新動態\r\n點選熱門新聞\r\n出現最新新聞，下面的氣泡可以瀏覽熱門關鍵詞\r\n \r\n\r\n常常找不到奧運的新聞，輸入奧運即可找到奧運最近新聞\r\n', '新聞小幫手', 'https://youtu.be/-0zyUzqaG90', 2, 'http://farm8.staticflickr.com/7337/13095089453_d123b064e9_o.jpg', 'active'),
(13, 3, '2017-06-22 18:06:03', '2017-06-22 22:59:57', '喜歡用表情符號或養虛擬寵物的網友，可透過 Yahoo 推出的虛擬寵物機器人（@MonkeyPet）飼養超萌雲端寵物猴，用戶可透過傳送各種 emojis 食物貼圖的有趣餵食方式，與寵物猴互動，寵物猴也會傳送到各地美景遊玩的自拍照給你，和寵物機器人一起探索世界吧！\r\n \r\n \r\nFor those of you longing for a pet monkey or using stickers, your dreams have come true. By using Yahoo bot, @MonkeyPet, you can keep a cute cloud monkey. You can send emojis to a virtual pet and it will share a selfie from its “travels” even responds to your emojis. Let’s explore the workd with pet bot!\r\n', 'MonkeyPet', 'https://www.facebook.com/messages/t/monkeypet', 3, 'https://tctechcrunch2011.files.wordpress.com/2016/07/yahoo-monkeypet.png?w=738', 'inactive'),
(20, 4, '2017-06-22 18:20:35', '2017-06-23 01:18:58', '前言\r\n \r\nFacebook Messenger在當地時間2016年11月29號推出了Instant Games功能，還拍攝了一部很有質感的短片來進行宣傳。你可以在網頁或手機上與朋友暢玩17款遊戲，其中包括了經典的古早遊戲。\r\n\r\n選擇一位朋友，在聊天欄底下會出現遊戲手把，點擊即可開始遊玩。\r\n(部分瀏覽器，例如Chrome，或者型號比較老舊的手機可能無法遊玩)\r\n \r\nArkanoid\r\n我們曾經介紹過幾款80年代的遊戲，今天這款同樣為太東(TAITO)在1986年所研發的遊戲，其最初的創造者必須追溯到10年前的賈伯斯與他的好基友沃茲尼克所設計的「Breakout」。\r\n \r\nBreakout的靈感則來自於1974年的「乓」。乓是雅達利研發的遊戲，後來被大家玩到膩了，所以公司想再研發出一款「乓的單人版遊戲」，老奸巨猾的布許聶爾指派賈伯斯來做這個項目，他期待賈伯斯拉上好基友沃茲尼克一起幹，雇一個人等於雇兩個人(沃茲尼克當時在惠普工作)。\r\n \r\n賈伯斯果然拉上沃茲尼克，用4天就做出Breakout，之後賈伯斯還私吞了大部分獎金。這就是Breakout的起源。\r\n \r\n不知道Facebook為什麼選擇了Arkanoid而不選Breakout，所以我們今天來介紹Arkanoid。\r\n \r\n與太東公司的另一款遊戲Space Invaders類似，故事背景發生在外星人襲擊後，一艘名為Arkanoid的太空船被摧毀了，唯一的倖存者”Vaus”被困在未知空間中，玩家必須協助Vaus擊敗保全系統來突破重圍。\r\n\r\n遊戲沒有首頁，點進來就要你直接開始。\r\n \r\n\r\n \r\n唯一倖存者Vaus在未知空間對抗外星人的戰況--就像打壁球那樣，你必須擋住畫面中不斷跳動的球，試圖讓球球擊碎上方所有磚塊。\r\n \r\n\r\n畫面上這些奇怪的東西是外星巡邏艇，他不會對玩家的槓槓產生傷害，卻會改變子彈的彈道。\r\n \r\n\r\n擊碎磚塊偶而會掉落寶物，吃下去會獲得特殊力量。\r\n\r\n一次只能獲得一種，吃進新的寶物，就得就會消失。\r\n \r\n\r\n漏接球的下場-粉身碎骨，作為最後生還者..人類的希望，破滅...\r\n \r\n\r\n就算你只有50分他也會跟你說Well done!，很像有點敷衍。圖中的摩艾石像是本作中的BOSS，名叫DOH(Dominate over hour)\r\n \r\n\r\n遊戲模式雷同，每一關卻不一樣，敵人也不一樣，尤其考量到還有最終BOSS的存在(目前不知道他會在第幾關出現)，可能會花掉玩家許多時間，如果玩家想破關的話。\r\n \r\n想要嘗試這款遊戲的玩家，可以在Messenger找到他。\r\n \r\n如果喜歡這篇文章，歡迎分享給朋友，讓大家一起來玩。\r\n', 'Facebook Messenger 小遊戲：Arkanoid', 'https://www.facebook.com/messenger/videos/1125491070903905/', 0, 'https://repo.openpandora.org/files/pnd/arkanoid_ptitseb/preview3.png', 'active'),
(21, 3, '2017-06-22 20:37:54', '2017-06-23 01:27:45', '前言\r\n \r\nFacebook Messenger在當地時間2016年11月29號推出了Instant Games功能，還拍攝了一部很有質感的短片來進行宣傳。你可以在網頁或手機上與朋友暢玩17款遊戲，其中包括了經典的古早遊戲。\r\n\r\n選擇一位朋友，在聊天欄底下會出現遊戲手把，點擊即可開始遊玩。\r\n(部分瀏覽器，例如Chrome，或者型號比較老舊的手機可能無法遊玩)\r\n \r\nSpace Invaders\r\n \r\n\r\n \r\nSpace Invaders(太空侵略者)，又一款日本人研發的經典遊戲，由西角友宏設計，日本太東公司於1978年發行，在台灣時常被統稱為「小蜜蜂」，但小蜜蜂(Galaxian)與太空侵略者(Space Invaders) 其實是兩款不同的遊戲，這款遊戲是太空侵略者。\r\n \r\n\r\n左邊為太空侵略者，右邊為小蜜蜂，兩者相似。\r\n \r\n根據維基百科上的資料顯示，以上個世紀80年代人們的標準來看，這款遊戲可以說「非常刺激」，現在大家就可以上Messenger感受一下80年代人們所謂的刺激是什麼，讓我們來看看吧！\r\n\r\n遊戲首頁，可以注意到版權所有方為太東(TAITO)公司，年份為1978\r\n \r\n如同原作，遊戲只能以單人模式進行，玩家可以跟朋友比較分數。\r\n \r\n\r\n \r\n玩家所扮演的「大砲」（CANNON）躲在畫面下方的掩體後面，承受來自上方外星人艦隊的攻擊，好一場惡戰！\r\n \r\n\r\n請你甲慶記，外星人\r\n \r\n隨著時間過去，敵人的艦隊會緩慢的逐漸往下，當你殺死越多敵人時，敵人的移動速度會加快。\r\n\r\n敵人擁有將碉堡直接削掉的能力，最終將會碰觸到玩家，玩家就GG了\r\n\r\n玩家的子彈與敵人的子彈碰再一起會爆炸！\r\n \r\n需要特別注意的是，這款遊戲對手機玩家不太友善，你必須滑動手指來進行移動，又必須點選螢幕來進行射擊，中間的硬直時間(或者手殘)將會造成致命的後果。其他一些戰機手遊其實已經有解決方法，例如雷X戰機採用自動射擊，玩家只需要專心控制方向就好。但這種自動射擊的方式不適用於太空入侵者，在玩家一次只能發射一發子彈的情況下，必須等待子彈命中敵人或者跑到畫面外才能重新填裝新子彈，意味著胡亂發射子彈會產生許多硬直時間。\r\n \r\n如果你用桌電或筆電來玩的話則沒有這種問題。\r\n \r\n\r\n當你打完一關之後，遊戲會接著進入第二關，重複同樣的動作，敵人速度似乎變快了。\r\n \r\n筆者目前只破到第二關，不知道接下來的關卡會發生什麼事情，起初筆者為了獲得破關的材料，想請公司的軟體工程師寫一個減速外掛給我用，結果被教訓了一頓。還請有實力的高手在Messenger的遊戲中親自探究一番嚕~\r\n \r\n \r\n如果喜歡這篇文章，歡迎分享給朋友，讓大家一起來玩。\r\n', 'Facebook Messenger 小遊戲：Space Invaders', 'https://www.facebook.com/messenger/videos/1125491070903905/', 0, 'http://orig01.deviantart.net/d3da/f/2010/044/4/6/space_invaders_by_maleiva.jpg', 'refuse'),
(22, 3, '2017-06-22 20:41:36', '2017-06-23 01:27:48', '前言\r\n \r\nFacebook Messenger在當地時間2016年11月29號推出了Instant Games功能，還拍攝了一部很有質感的短片來進行宣傳。你可以在網頁或手機上與朋友暢玩17款遊戲，其中包括了經典的古早遊戲。\r\n\r\n選擇一位朋友，在聊天欄底下會出現遊戲手把，點擊即可開始遊玩。\r\n(部分瀏覽器，例如Chrome，或者型號比較老舊的手機可能無法遊玩)\r\n \r\nSpace Invaders\r\n \r\n\r\n \r\nSpace Invaders(太空侵略者)，又一款日本人研發的經典遊戲，由西角友宏設計，日本太東公司於1978年發行，在台灣時常被統稱為「小蜜蜂」，但小蜜蜂(Galaxian)與太空侵略者(Space Invaders) 其實是兩款不同的遊戲，這款遊戲是太空侵略者。\r\n \r\n\r\n左邊為太空侵略者，右邊為小蜜蜂，兩者相似。\r\n \r\n根據維基百科上的資料顯示，以上個世紀80年代人們的標準來看，這款遊戲可以說「非常刺激」，現在大家就可以上Messenger感受一下80年代人們所謂的刺激是什麼，讓我們來看看吧！\r\n\r\n遊戲首頁，可以注意到版權所有方為太東(TAITO)公司，年份為1978\r\n \r\n如同原作，遊戲只能以單人模式進行，玩家可以跟朋友比較分數。\r\n \r\n\r\n \r\n玩家所扮演的「大砲」（CANNON）躲在畫面下方的掩體後面，承受來自上方外星人艦隊的攻擊，好一場惡戰！\r\n \r\n\r\n請你甲慶記，外星人\r\n \r\n隨著時間過去，敵人的艦隊會緩慢的逐漸往下，當你殺死越多敵人時，敵人的移動速度會加快。\r\n\r\n敵人擁有將碉堡直接削掉的能力，最終將會碰觸到玩家，玩家就GG了\r\n\r\n玩家的子彈與敵人的子彈碰再一起會爆炸！\r\n \r\n需要特別注意的是，這款遊戲對手機玩家不太友善，你必須滑動手指來進行移動，又必須點選螢幕來進行射擊，中間的硬直時間(或者手殘)將會造成致命的後果。其他一些戰機手遊其實已經有解決方法，例如雷X戰機採用自動射擊，玩家只需要專心控制方向就好。但這種自動射擊的方式不適用於太空入侵者，在玩家一次只能發射一發子彈的情況下，必須等待子彈命中敵人或者跑到畫面外才能重新填裝新子彈，意味著胡亂發射子彈會產生許多硬直時間。\r\n \r\n如果你用桌電或筆電來玩的話則沒有這種問題。\r\n \r\n\r\n當你打完一關之後，遊戲會接著進入第二關，重複同樣的動作，敵人速度似乎變快了。\r\n \r\n筆者目前只破到第二關，不知道接下來的關卡會發生什麼事情，起初筆者為了獲得破關的材料，想請公司的軟體工程師寫一個減速外掛給我用，結果被教訓了一頓。還請有實力的高手在Messenger的遊戲中親自探究一番嚕~\r\n \r\n \r\n如果喜歡這篇文章，歡迎分享給朋友，讓大家一起來玩。\r\n', 'Facebook Messenger 小遊戲：Space Invaders', 'https://www.facebook.com/messenger/videos/1125491070903905/', 0, 'http://orig01.deviantart.net/d3da/f/2010/044/4/6/space_invaders_by_maleiva.jpg', 'active'),
(23, 3, '2017-06-22 21:07:31', '2017-06-22 21:09:35', '開始使用\r\n\r\n \r\n點選Storie for you CNN的app會推薦適合你的新聞\r\n\r\n選擇Topic，推薦給你最近熱門的新聞\r\n\r\n', 'Icon8', 'http://m.me/cnn?ref=botpartner', 0, 'http://blog.redbubble.com/wp-content/uploads/2014/07/icon8-header.jpg', 'active');

-- --------------------------------------------------------

--
-- 資料表結構 `article_tags`
--

CREATE TABLE `article_tags` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `article_tags`
--

INSERT INTO `article_tags` (`id`, `article_id`, `tag_id`) VALUES
(11, 9, 11),
(5, 9, 12),
(12, 9, 13),
(6, 11, 12),
(10, 12, 11),
(9, 12, 12),
(13, 13, 18),
(17, 20, 11),
(18, 20, 12),
(19, 20, 13),
(20, 22, 14),
(21, 22, 15),
(22, 23, 16),
(23, 23, 17);

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `message` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `article_id`, `message`, `created_at`, `updated_at`) VALUES
(12, 5, 9, '設計得好美！', '2017-06-02 17:33:29', '2017-06-22 23:17:00'),
(13, 2, 9, '這文章沒分行耶！', '2017-06-02 23:11:07', '2017-06-07 10:34:13'),
(14, 2, 9, '<a>內容好實用喔<a>', '2017-06-02 23:11:56', '2017-06-07 10:34:36'),
(15, 3, 9, '第一次看到呢', '2017-06-07 10:34:51', '2017-06-07 10:34:51'),
(16, 4, 13, 'I really like it!', '2017-06-22 00:00:00', '2017-06-22 00:00:00'),
(17, 3, 22, '好期待這個遊戲！', '2017-06-23 01:28:25', '2017-06-23 01:28:25');

-- --------------------------------------------------------

--
-- 資料表結構 `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `article_id`) VALUES
(6, 2, 9),
(19, 3, 9),
(13, 3, 11),
(12, 3, 12),
(21, 3, 13),
(20, 3, 22),
(16, 4, 11),
(15, 4, 12),
(18, 5, 12);

-- --------------------------------------------------------

--
-- 資料表結構 `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(11, 'chatbot'),
(12, '機器人'),
(13, '機器'),
(14, '遊戲'),
(15, '太空侵略者'),
(16, 'news'),
(17, 'read'),
(18, 'Yahoo');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_admin` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `created_at`, `updated_at`, `is_admin`) VALUES
(2, 'jk195417@gmail.com', '123', '楊竑昕', '2017-06-02 23:10:51', '2017-06-05 01:12:01', 'Y'),
(3, 'manager@gmail.com', '123', 'manager', '2017-06-02 23:10:51', '2017-06-07 10:06:23', 'Y'),
(4, 'member@gmail.com', '123', 'member', '2017-06-02 23:10:51', '2017-06-07 10:06:42', ''),
(5, 'candice@gmail.com', '123', 'Candice', '2017-06-02 23:10:51', '2017-06-07 10:07:01', 'Y');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_user_fk` (`user_id`),
  ADD KEY `status` (`status`);

--
-- 資料表索引 `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_id_tag_id` (`article_id`,`tag_id`),
  ADD KEY `tag_article_tags_fk` (`tag_id`),
  ADD KEY `article_article_tags_fk` (`article_id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_comment_fk` (`user_id`),
  ADD KEY `article_comment_fk` (`article_id`);

--
-- 資料表索引 `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_article_id` (`user_id`,`article_id`),
  ADD KEY `user_like_fk` (`user_id`),
  ADD KEY `article_like_fk` (`article_id`);

--
-- 資料表索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用資料表 AUTO_INCREMENT `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用資料表 AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用資料表 AUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用資料表 AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `article_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- 資料表的 Constraints `article_tags`
--
ALTER TABLE `article_tags`
  ADD CONSTRAINT `article_article_tags_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tag_article_tags_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- 資料表的 Constraints `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `article_comment_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_comment_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- 資料表的 Constraints `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `article_like_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_like_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
