<?php
class User_model extends CI_Model
{
    /**
     * Return the user when the email and password match, otherwise null.
     * Passwords are stored with password_hash(); accounts that still hold a
     * plain-text password (from the original seed data) are upgraded on login.
     */
    public function getUser($email, $password)
    {
        $query = $this->db->get_where("users", array("email" => $email));
        $user = $query->row();
        if (!$user) {
            return null;
        }

        $info = password_get_info($user->password);
        if ($info['algo'] !== null && $info['algo'] !== 0) {
            return password_verify($password, $user->password) ? $user : null;
        }

        if (hash_equals((string) $user->password, (string) $password)) {
            $this->update(array("password" => password_hash($password, PASSWORD_DEFAULT)), $user->id);
            return $user;
        }
        return null;
    }

    public function all()
     {
         $query = $this->db->get('users');
         return $query->result_array();
     }

     public function get($id)
    {
        $this->db->where('id', $id);
        $query = $this->db->get('users');
        if ($query->num_rows() <= 0) {
            return null;
        }
        return $query->row_array();
    }


    public function find_by_ids($user_ids)
    {
        $user_ids = array_values(array_unique($user_ids));
        $this->db->where_in('id', $user_ids);
        $query = $this->db->get('users');
        $users = $query->result_array();
        $result = array();
        foreach ($users as $user) {
            $result[$user['id']] = $user;
        }
        return $result;
    }

    public function find($user_id)
    {
        $this->db->where('id', $user_id);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) { 
            return $query->row_array();
        } else {
            return null;
        }
    }

    public function create($value)
    {
        $query = $this->db->insert("users", $value);
        if ($query) {
            return $this->db->insert_id();
        } else {
            return false;
        }
    }

public function update($value, $id)
    {
        $this->db->where('id', $id);
        $query = $this->db->update('users', $value);
        return $query;
    }
    public function destroy($id)
    {
        $this->db->where('id', $id);
        $query = $this->db->delete('users');
        return $query;
    }
}