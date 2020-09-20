<script>
import { add_attribute } from "svelte/internal";

  export let name;
  let notes = getNotes();
	async function getNotes(){
		const res = await fetch('http://localhost:3000/notes.json')
		const notes = await res.json();
		return notes
	}
</script>

<style>
  h1 {
    color: #FF3E00;
  }
</style>

<h1>Notes</h1>
{#await notes}
loading...
{:then data}
{#each data.data as note}
  <h2>{note.attributes.title}</h2>
  <p>{note.attributes.description}</p>
{/each}
{/await}