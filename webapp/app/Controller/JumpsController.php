<?php
class JumpsController extends AppController {
    public $helpers = array('Html', 'Form');

    public function index() {
        $this->set('jumps', $this->Jump->find('all'));
    }
    public function view($id = null) {
        if (!$id) {
            throw new NotFoundException(__('Invalid jump'));
        }

        $jump = $this->Jump->findById($id);
        if (!$jump) {
            throw new NotFoundException(__('Invalid jump'));
        }
        $this->set('jump', $jump);
    }
    public function delete($id) {
        if ($this->request->is('get')) {
            throw new MethodNotAllowedException();
        }
    
        if ($this->Jump->delete($id)) {
            $this->Session->setFlash(
                __('The jump with id: %s has been deleted.', h($id))
            );
            return $this->redirect(array('action' => 'index'));
        }
    }
    public function add() {
        if ($this->request->is('jump')) {
            //Added this line
            $this->request->data['Jump']['user_id'] = $this->Auth->user('id');
            if ($this->Jump->save($this->request->data)) {
                $this->Session->setFlash(__('Your jump has been saved.'));
                return $this->redirect(array('action' => 'index'));
            }
        }
    }
    public function isAuthorized($user) {
    // All registered users can add jumps
       if ($this->action === 'add') {
           return true;
       }

    // The owner of a jump can edit and delete it
       if (in_array($this->action, array('edit', 'delete'))) {
           $jumpId = (int) $this->request->params['pass'][0];
           if ($this->Jump->isOwnedBy($jumpId, $user['id'])) {
               return true;
           }
       }
   
       return parent::isAuthorized($user);
   }
}
?>
