<script lang="ts">
	import type IImage from '$lib/interfaces/IImage';

	let images: IImage[] = [
		{ name: 'fish', alt: 'Kevin fishing' },
		{ name: 'boat', alt: 'Kevin in a boat with dog' },
		{ name: 'sand', alt: 'Kevin at beach' }
	];

	function cycle() {
		images.push(images.shift() || images[0]);
		images = images;
	}
</script>

<div
	class="images"
	on:click={cycle}
	on:keydown={(e) => e.key === 'Enter'}
	role="button"
	tabindex="0"
>
	{#each images as image (image.name)}
		<picture>
			<source media="(max-width: 420px)" srcset="/images/{image.name}-300w.jpeg" />
			<source media="(max-width: 1800px)" srcset="/images/{image.name}-620w.jpeg" />
			<source media="(min-width: 1801px)" srcset="/images/{image.name}-900w.jpeg" />
			<img src="/images/{image.name}-300w.jpeg" alt={image.alt} />
		</picture>
	{/each}
</div>

<style lang="scss">
	div.images {
		position: relative;
		display: flex;
		user-select: none;
		-webkit-user-select: none;
		margin-left: 40px;

		picture {
			position: absolute;
			margin-top: 10vh;
			transition: all 0.51s ease;
		}

		img {
			max-width: 42vw;
		}

		@for $i from 0 through 4 {
			picture:nth-of-type(#{$i}) {
				left: calc(-10px * $i);
				top: calc(-10px * $i);
			}
		}
	}

	@media (max-width: 500px) {
		div.images img {
			margin-bottom: 3rem;
			max-width: 80vw;
		}
	}
</style>
