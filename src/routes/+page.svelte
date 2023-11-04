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
	<div class="personalia">
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
			margin: 1rem 0;
		}

		> div {
			width: 50%;
		}

		div.personalia {
			font-size: 1.5rem;

			ul {
				margin: 1rem 0;
				display: flex;
				flex-direction: column;
				padding-left: 0;

				li {
					list-style: none;
					margin: 0.8rem 1rem 0;
				}
			}
		}
	}
</style>
