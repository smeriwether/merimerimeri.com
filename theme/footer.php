<?php
/**
 * Default footer template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/
 *
 * @package markiter
 */

?>

<footer id="footer" class="site-footer" role="contentinfo">
	<div class="site-footer-wrap">
		<?php if ( has_nav_menu( 'secondary' ) ) : ?>
			<nav id="footer-navigation" class="footer-navigation" role="navigation" aria-label="<?php esc_attr_e( 'Secondary menu', 'markiter' ); ?>">
				<?php
				wp_nav_menu(
					array(
						'container'      => false,
						'depth'          => 1,
						'theme_location' => 'secondary',
					)
				);
				?>
			</nav>
		<?php endif; ?>
	</div>
</footer>

<?php wp_footer(); ?>
</body>
</html>
