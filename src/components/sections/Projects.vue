<template>
  <section class="section-band light">
    <div class="section-inner">
      <div class="section-header">
        <p class="section-kicker">Projects</p>
        <h2 class="section-title">A few builds with live demos, product work, and early experiments.</h2>
      </div>

      <div class="project-grid">
        <article class="project-card">
          <div class="project-media">
            <iframe
              title="Loteria live demo"
              src="https://kevinsloteria.netlify.app/"
            ></iframe>
          </div>
          <div class="project-body">
            <h3>
              <a href="https://kevinsloteria.netlify.app/" target="_blank" rel="noopener noreferrer">
                Loteria
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>
              Built for the San Antonio Spurs so fans could play and win merchandise during games.
              This is a live embed, not a screenshot.
            </p>
            <p class="project-note">Go ahead and use it. It's fully playable.</p>
          </div>
        </article>

        <article class="project-card">
          <div class="project-media">
            <iframe
              title="Spurs character game live demo"
              src="https://spurscharactergame.netlify.app/"
            ></iframe>
          </div>
          <div class="project-body">
            <h3>
              <a href="https://spurscharactergame.netlify.app/" target="_blank" rel="noopener noreferrer">
                Spurs FanMoji
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>A quickly built fan engagement app for use during games.</p>
            <p class="project-note">Go ahead and use it. It's fully playable.</p>
          </div>
        </article>

        <article class="project-card">
          <div class="project-media">
            <img src="../../assets/projects/pip.png" alt="Image Processing Bot result">
          </div>
          <div class="project-body">
            <h3>
              <a href="https://github.com/Jarmahent/ImageProcessingBot" target="_blank" rel="noopener noreferrer">
                Image Processing Bot
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>
              One of my first projects. This bot searched Reddit, downloaded images, added filters, and posted them to
              <a href="https://www.reddit.com/r/processingimages/top/" target="_blank" rel="noopener noreferrer">
                r/processingimages
              </a>.
            </p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import NewTabIcon from '../icons/NewTabIcon.vue';
</script>
