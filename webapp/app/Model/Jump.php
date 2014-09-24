<?php
class Jump extends AppModel {
        public function isOwnedBy($jump, $user) {
            return $this->field('id', array('id' => $jump, 'user_id' => $user)) !== false;
        }
class UserJumps extends AppModel {
    public $jumpTable = 'jumps';
    public $userJump = array
            'className' => 'Users',
            'jump_id' => 'user_id'
        )
    );
}
?>
