{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
  {* overide brand image with clips logo *}
  {assign var=brandImage value="plugins/themes/defaultFogs/templates/images/journals_uc.png"}
  {assign var=ucPressLogo value="plugins/themes/defaultFogs/templates/images/UC_Press_White.png"}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div class="pkp_structure_footer_wrapper" role="contentinfo">
	<a id="pkp_content_footer"></a>

	<div class="pkp_structure_footer">

		{if $pageFooter}
			<div class="pkp_footer_content">
				{$pageFooter}
			</div>
		{/if}

		<div class="pkp_brand_footer pull-left" role="complementary">

      <div class="footer-logo journals">
        <a href={$baseUrl}>
          <img class="footer-img" src="{$baseUrl}/{$brandImage}" alt="Journals @ UC logo">
        </a>
      </div>
      <div class="footer-logo">
        <a href="https://ucincinnatipress.uc.edu/">
          <img class="img-responsive footer-img" src="{$baseUrl}/{$ucPressLogo}" alt="University of Cincinnati Press logo">
        </a>
      </div>
		</div>
	</div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
