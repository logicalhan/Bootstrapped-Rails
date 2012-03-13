module TwitterBreadcrumbsHelper
	def render_breadcrumbs(divider = '/')
		render partial: 'twitter_bootstrap/breadcrumbs', locals: {divider: divider}
	end
end