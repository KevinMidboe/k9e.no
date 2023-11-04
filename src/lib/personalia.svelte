<script lang="ts">
	import colors from './colors';
	import type IPersonalia from '$lib/interfaces/IPersonalia';

	const personalias: IPersonalia[] = [
		{
			length: 'short bio',
			text: 'Hello 👋 I currently work at Aller Media as DevOps Lead. I enjoy building things with my	hands & head, bouldering and teaching in my free time.'
		},
		{
			length: 'long bio',
			text: 'Hello longer 👋 I currently work at Aller Media as DevOps Lead. I enjoy building things with my	hands & head, bouldering and teaching in my free time.'
		}
	];

	let selectedPersonalia = personalias[0];

	function setSelectedPersonalia(personalia: IPersonalia) {
		selectedPersonalia = personalia;

		const color = colors[Math.floor(Math.random() * colors.length)];
		document.documentElement.style.setProperty('--selected-color', color);
	}
</script>

<div class="personalia-toggles">
	{#each personalias as p}
		<button
			on:click={() => setSelectedPersonalia(p)}
			class={selectedPersonalia.length === p.length ? 'selected' : ''}
		>
			{p.length}
		</button>
	{/each}
</div>

<p>{selectedPersonalia.text}</p>

<style lang="scss">
	.personalia-toggles {
		margin-top: 3rem;
	}

	button {
		width: 120px;
		height: 30px;
		border: 2px solid gray;
		border-radius: 15px;
		box-sizing: border-box;
		color: gray;
		font-size: 1rem;
		background-color: white;
		overflow: auto;
		transition: 0.2s ease all;

		&:not(&:last-of-type) {
			margin-right: 1rem;
		}

		&.selected {
			font-weight: bold;
			border-color: var(--selected-color);
			color: var(--selected-color);
		}

		&:hover {
			background: rgba(150, 151, 156, 0.1);
			cursor: pointer;
		}
	}
</style>
