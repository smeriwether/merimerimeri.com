<?php
/**
 * Default no content template part.
 *
 * @package markiter
 */

?>
<section class="nothing-found">
	<header class="entry-header">
		<h1 class="entry-title"><?php esc_html_e( 'Nothing found', 'markiter' ); ?></h1>
	</header>

	<div class="entry-content">
		<p><?php esc_html_e( 'We couldn&rsquo;t find what you&rsquo;re looking for. Perhaps try a search?', 'markiter' ); ?></p>

    <div class="entry-search">
		  <?php get_search_form(); ?>
    </div>
	</div>
</section>
