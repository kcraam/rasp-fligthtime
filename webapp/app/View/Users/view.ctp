<!-- File: /app/View/Users/view.ctp -->

<h1><?php echo h($user['User']['username']); ?></h1>

<p><small>Created: <?php echo $user['User']['created']; ?></small></p>

<p><?php echo h($user['User']['role']); ?></p>

<table>
    <tr>
        <th>Id</th>
        <th>Fligth Time (ms)</th>
        <th>Created</th>
    </tr>

    <!-- Here is where we loop through our $jumps array, printing out jump info -->

    <?php foreach ($jumps as $jump): ?>
    <?php if ($user_id=$id): ?>
    <tr>
        <td><?php echo $jump['Jump']['id']; ?></td>
        <td>
<?php echo $this->Html->link($jump['Jump']['username'],
    array('controller' => 'jumps', 'action' => 'view', $jump['Jump']['id'])); ?>
        </td>
        <td><?php echo $jump['Jump']['ftime']; ?></td>
        <td><?php echo $jump['Jump']['created']; ?></td>
    </tr>
    <?php endif; ?>
    <?php endforeach; ?>
    <?php unset($jump); ?>
</table>

