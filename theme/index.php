<?php
/**
 * Default blog index template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/
 *
 * @package markiter
 */

get_header();
?>

<main id="content" class="site-content" role="main">
	<div class="site-content-wrap">
		<?php
		if ( have_posts() ) {
			get_template_part( 'partials/header' );

			while ( have_posts() ) {
				the_post();
				get_template_part( 'partials/content', get_post_format() );
			}

			get_template_part( 'partials/pagination' );

		} else {
			get_template_part( 'partials/content', 'none' );
		}
		?>

    <div class="site-end">
      <?php
      echo wp_kses(
        sprintf(
          // translators: %s for the current date.
          __( 'That&rsquo;s it. Enjoy the rest of your %s!', 'markiter' ),
          markiter_get_today()
        ),
        array(
          'time' => array(
            'datetime' => array(),
          ),
        )
      );
      ?>
    </div>
	</div><!-- .site-content-wrap -->
</main>

<?php
get_footer();
