# ChatBot 文章上架平台（PHP 期末專題，2017）

大學「PHP 與資料庫」課程的期末專題：使用者可以上架介紹聊天機器人（ChatBot）的文章、加標籤、留言、按讚；管理員可以審核文章、管理會員。

- 程式：[`Chatbot_FinalProject/PHP_Final_Project_108th`](Chatbot_FinalProject/PHP_Final_Project_108th)（CodeIgniter 3）
- 資料庫：[`Chatbot_FinalProject/chatbot.sql`](Chatbot_FinalProject/chatbot.sql)
- 簡報：`Chatbot_FinalProject/PHP&DB_Final.pptx`

## 功能

- 註冊、登入、登出
- 文章：新增、編輯、刪除、我的文章、標籤、留言、按讚／收回讚
- 排行：熱門文章、依標籤與作者瀏覽
- 後台：文章審核（上架／退回）、會員管理

## 在本機執行

需要 PHP 8.1 以上與 MySQL／MariaDB。

```bash
mysql -u root -p -e "CREATE DATABASE chatbot DEFAULT CHARSET utf8"
mysql -u root -p chatbot < Chatbot_FinalProject/chatbot.sql

cd Chatbot_FinalProject/PHP_Final_Project_108th
DB_USER=root DB_PASSWORD=你的密碼 php -S localhost:8000 index.php
```

開啟 http://localhost:8000 。連線設定可用 `DB_HOST`、`DB_PORT`、`DB_USER`、`DB_PASSWORD`、`DB_NAME` 環境變數調整（MAMP 預設埠號是 8888）。範例帳號的密碼都是 `123`，第一次登入時會自動改存成雜湊值。

## 2026 年的修正

- CodeIgniter 3.1.3 → 3.1.13，可在 PHP 8 執行。
- **安全性**
  - 密碼改用 `password_hash()` 儲存，舊的明碼帳號登入時自動升級；後台不再顯示密碼。
  - 開啟 CSRF 保護（所有表單都用 `form_open()`，已確認登入流程正常）。
  - 文章標題、內容、留言、使用者名稱等輸出都經過 `html_escape()`，修正儲存型 XSS；文章連結只接受 `http(s)://`。
  - 登入後重新產生 session id，避免 session fixation。
- **錯誤修正**
  - 控制器檔名 `chatbots.php` 在 Linux 上找不到（CodeIgniter 3 要求首字大寫），改為 `Chatbots.php`，熱門／標籤頁面恢復正常。
  - 登入失敗導向不存在的 `/login`，改為 `/sign_in`。
  - 後台編輯會員時，密碼改為選填（留空不變更）。
  - jQuery 原本載入兩次且用 http，改成一次、https。
- 資料庫連線改由環境變數設定。
