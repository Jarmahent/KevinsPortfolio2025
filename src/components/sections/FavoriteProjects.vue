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
          v-for="project in paginatedLinks"
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

      <nav v-if="pageCount > 1" class="favorites-pagination" aria-label="Favorite articles pages">
        <button
          type="button"
          class="pagination-button"
          :disabled="currentPage === 1"
          @click="goToPage(currentPage - 1)"
        >
          Previous
        </button>

        <div class="pagination-pages">
          <button
            v-for="page in pageCount"
            :key="page"
            type="button"
            class="pagination-page"
            :class="{ active: page === currentPage }"
            :aria-current="page === currentPage ? 'page' : undefined"
            @click="goToPage(page)"
          >
            {{ page }}
          </button>
        </div>

        <button
          type="button"
          class="pagination-button"
          :disabled="currentPage === pageCount"
          @click="goToPage(currentPage + 1)"
        >
          Next
        </button>
      </nav>
    </div>
  </section>
</template>

<script setup lang="ts">
import { computed, ref } from 'vue';
import { links } from '../../assets/fav-articles/links';

const itemsPerPage = 6;
const currentPage = ref(1);

const pageCount = computed(() => Math.ceil(links.length / itemsPerPage));

const paginatedLinks = computed(() => {
  const start = (currentPage.value - 1) * itemsPerPage;
  return links.slice(start, start + itemsPerPage);
});

function goToPage(page: number) {
  currentPage.value = Math.min(Math.max(page, 1), pageCount.value);
}
</script>
