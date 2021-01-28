<?php
/**
 * Default footer meta template part.
 *
 * @package markiter
 */

$markiter_tags = get_the_tag_list( '', ', ', '' );
?>
<footer class="entry-footer entry-meta">
	<span class="entry-permalink">
	  <?php
    echo wp_kses(
      sprintf(
        markiter_get_the_permalink()
      ),
      array(
        'a' => array(
          'href' => array(),
          'rel'  => array(),
        ),
      )
    );
    ?>
	</span>

	<?php
	if ( $markiter_tags ) {
		echo '<span class="entry-tags">' . wp_kses_post(
			sprintf(
				// translators: %s is for the tag list.
				__( 'Tagged %s', 'markiter' ),
				$markiter_tags
			)
		) . '</span>';
	}
	?>
</footer>
