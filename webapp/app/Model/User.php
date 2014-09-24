<?php
// app/Model/User.php
App::uses('AppModel', 'Model');
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');

class User extends AppModel {
    var $uses = array('User','Jump');

    public $validate = array(
        'username' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A username is required'
            )
        ),
        'password' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A password is required'
            )
        ),
        'role' => array(
            'valid' => array(
                'rule' => array('inList', array('admin', 'jumper')),
                'message' => 'Please enter a valid role',
                'allowEmpty' => false
            )
        )
    );
    public $userJump = array (
        'Jump' => array(
            'className' => 'Jump',
            'foreignKey' => 'user_id'
            'conditions' => array('user_id' => $id)
            'order' => 'jumps.created DESC'
        )
    );
    public function beforeSave($options = array()) {
    if (isset($this->data[$this->alias]['password'])) {
        $passwordHasher = new BlowfishPasswordHasher();
        $this->data[$this->alias]['password'] = $passwordHasher->hash(
            $this->data[$this->alias]['password']
        );
    }
    return true;
    }
}
?>
