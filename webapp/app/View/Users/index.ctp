<!-- File: /app/View/users/index.ctp -->

<h1>User List</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Role</th>
        <th>Action</th>
    </tr>
    <!-- Here is where we loop through our $users array, printing out user info -->

    <?php foreach ($users as $user): ?>
    <tr>
        <td><?php echo $user['User']['id']; ?></td>
        <td>
            <?php echo $this->Html->link($user['User']['username'],
array('controller' => 'users', 'action' => 'view', $user['User']['id'])); ?>
        </td>
        <td><?php echo $user['User']['role']; ?></td>
	<td>
	    <?php
                echo $this->Form->postLink(
                    'Delete',
                    array('action' => 'delete', $user['User']['id']),
                    array('confirm' => 'Are you sure?')
                );
            ?>
	</td
    </tr>
    <?php endforeach; ?>
    <?php unset($user); ?>
</table>
