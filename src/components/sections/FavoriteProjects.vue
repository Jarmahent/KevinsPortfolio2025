<template>
  <section class="section-band dark">
    <div class="section-inner">
      <div class="section-header">
        <p class="section-kicker">Favorites</p>
        <h2 class="section-title">Projects and articles I keep coming back to.</h2>
        <p class="section-copy">
          A small bookshelf of technical curiosities: games, networks, simulations, visual processing, and systems work.
        </p>
      </div>

      <div class="favorites-grid">
        <a
          v-for="project in links"
          :key="project.url"
          :href="project.url"
          target="_blank"
          rel="noopener noreferrer"
          class="favorite-card"
        >
          <img
            :src="'images/' + project.image"
            :alt="project.name"
            draggable="false"
          >
          <div class="favorite-content">
            <h3>{{ project.name }}</h3>
            <p>{{ project.description }}</p>
            <div class="tag-row">
              <span v-for="tag in project.tags" :key="tag" class="small-tag">{{ tag }}</span>
            </div>
          </div>
        </a>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import { links } from '../../assets/fav-articles/links';
</script>
