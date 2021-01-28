<?php
/**
 * Default meta template part.
 *
 * @package markiter
 */

?>
<div class="entry-meta">
	<span class="entry-date">
		<?php
		echo wp_kses(
			sprintf(
				markiter_get_the_date()
			),
			array(
				'a' => array(
					'href' => array(),
					'rel'  => array(),
				),
				'time' => array(
					'datetime' => array(),
					'class'    => array(),
				),
			)
		);
		?>
	</span>
</div>
