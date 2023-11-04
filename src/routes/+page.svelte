<script lang="ts">
	import Images from '$lib/images.svelte';
	import LinkColor from '$lib/linkColor.svelte';
	import Personalia from '$lib/personalia.svelte';
	import type ILink from '$lib/interfaces/ILink';

	const links: ILink[] = [
		{ title: 'github', url: 'https://github.com/kevinmidboe' },
		{ title: 'blog', url: 'https://blog.schleppe.cloud' },
		{ title: 'CV', url: 'https://no.linkedin.com/in/kevin-midbøe-687837161' },
		{ title: 'Linkedin', url: 'https://no.linkedin.com/in/kevin-midbøe-687837161' }
	];
</script>

<section>
	<div>
		<h1>Kevin Midbøe</h1>

		<ul>
			{#each links as link}
				<li>
					<a href={link.url}>{link.title}</a>
				</li>
			{/each}
		</ul>

		<Personalia />
	</div>

	<Images />
</section>

<LinkColor />

<style lang="scss">
	section {
		display: flex;
		flex-direction: row;

		h1 {
			font-size: 5rem;
			margin: 1rem 0;
		}

		> div {
			width: 50vw;
		}

		ul {
			margin: 1rem 0;
			display: flex;
			flex-direction: column;
			padding-left: 0;
			font-size: 1.5rem;

			li {
				list-style: none;
				margin: 0.8rem 1rem 0;
			}
		}
	}

	@media (max-width: 500px) {
		section {
			flex-direction: column;

			> div {
				width: 100%;
			}

			h1 {
				font-size: 13vw;
			}
		}
	}
</style>
