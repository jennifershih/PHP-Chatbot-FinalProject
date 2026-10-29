<div class="user_edit_wrap">
  <?php echo validation_errors(); ?>
  <?php echo form_open('admin/users/'.$user['id'].'/update') ?>
  <div class="data">
    <label for="name">名稱</label>
      <input type="input" name="name" value="<?php echo html_escape($user['name']) ?>"/><br />
  </div>
    <div class="data">
      <label for="email">帳號</label>
        <input type="input" name="email" value="<?php echo html_escape($user['email']) ?>"/><br />
    </div>
    <div class="data">
        <label for="password">密碼</label>
        <input type="password" name="password" value="" placeholder="留空表示不變更" autocomplete="new-password"/><br />
    </div>
    <div class="confirm">
      <input type="submit" name="submit" value="確定" />
    </div>
  </form>
</div>