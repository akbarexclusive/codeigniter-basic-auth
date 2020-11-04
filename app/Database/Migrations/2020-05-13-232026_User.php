<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class User extends Migration
{
    /**
     *
     */
    public function up()
    {
        $this->forge->addField([
            'user_id'          => [
                'type'           => 'INT',
                'unsigned'       => TRUE,
                'auto_increment' => TRUE
            ],
            'user_name'       => [
                'type'           => 'VARCHAR',
                'null'           => FALSE,
            ],
            'user_password'       => [
                'type'           => 'VARCHAR',
                'null'           => FALSE,
            ],

            'user_type' => [
                'type'           => 'VARCHAR',
                'null'           => FALSE,
            ],
        ]);
        $this->forge->addKey('user_id', TRUE);
        $this->forge->createTable('tbl_users');
    }

    /**
     *
     */
    public function down()
    {
        $this->forge->dropTable('tbl_users');
    }
}
