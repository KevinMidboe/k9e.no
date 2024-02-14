<script lang="ts">
	import colors from './colors';

	const bioSelectOptions: string[] = ['short', 'long'];
	const shortBio =
		'Hello 👋 I currently work at Aller Media as DevOps Lead. I enjoy building things with my	hands & head, bouldering and teaching in my free time.';

	let bioSelected = bioSelectOptions[0];

	function setSelectedPersonalia(personalia: string) {
		bioSelected = personalia;

		const color = colors[Math.floor(Math.random() * colors.length)];
		document.documentElement.style.setProperty('--selected-color', color);
	}
</script>

<div class="personalia-toggles">
	{#each bioSelectOptions as p}
		<button on:click={() => setSelectedPersonalia(p)} class={bioSelected === p ? 'selected' : ''}>
			{p} bio
		</button>
	{/each}
</div>

<p>{shortBio}</p>

{#if bioSelected === 'long'}
	<p>
		I currently work at Aller Media as DevOps Lead. I enjoy building things with my hands and head,
		bouldering and teaching in my free time.
	</p>

	<p>
		Since I child I have been interested in building together with people, either from scrap wood, a
		soldering iron or application of code. My 50 m2 apartment acts both as my workshop and my
		playground where anything that can have ethernet has it, has a microcontroller attached to it, a
		3D printed fix attached to it or hand built kitchen that fits my needs. My ideas and creativity
		reaches beyond the personality built into my walls, and down into my basement where I run 5
		(ambrosia) servers.
	</p>

	<p>
		My servers let me practice end-to-end development from client application to hosting it,
		including deploying, logging, updating, monitoring and backing up. I also have a unknown need
		for having a offline backup of everything. This taken so far that my power can go out and
		everything plugged into ethernet or wifi AP will still work internally, even security cameras
		will still record to local server off battery. Nothing should be lost or unavilable, all within
		my control.
	</p>
{/if}

<style lang="scss">
	.personalia-toggles {
		margin-top: 3rem;
	}

	p {
		font-size: 1.4rem;
		line-height: 1.6;
		white-space: pre-line;

		max-width: 800px;
	}

	button {
		width: 120px;
		// height: 30px;
		padding: 0.8rem 0.4rem;
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
