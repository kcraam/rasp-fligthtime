<!-- File: /app/View/Jumps/index.ctp -->

<h1>Blog jumps</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Fligth Time (ms)</th>
        <th>Created</th>
	<th>Action</th>
    </tr>

    <!-- Here is where we loop through our $jumps array, printing out jump info -->

    <?php foreach ($jumps as $jump): ?>
    <tr>
        <td><?php echo $jump['Jump']['id']; ?></td>
        <td>
            <?php echo $this->Html->link($jump['Jump']['username'],
array('controller' => 'jumps', 'action' => 'view', $jump['Jump']['id'])); ?>
        </td>
        <td><?php echo $jump['Jump']['ftime']; ?></td>
        <td><?php echo $jump['Jump']['created']; ?></td>
	<td>
	    <?php
                echo $this->Form->postLink(
                    'Delete',
                    array('action' => 'delete', $jump['Jump']['id']),
                    array('confirm' => 'Are you sure?')
                );
            ?>
	</td
    </tr>
    <?php endforeach; ?>
    <?php unset($jump); ?>
</table>
