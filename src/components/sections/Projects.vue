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
            <img
              class="project-logo"
              src="../../assets/projects/gource-generator.png"
              alt="Gource Generator logo"
            >
          </div>
          <div class="project-body">
            <h3>
              <a href="https://github.com/Jarmahent/GourceGenerator" target="_blank" rel="noopener noreferrer">
                Gource Generator
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>
              Visualize a Git repository's history with Gource, from the first commit to the latest changes.
            </p>
          </div>
        </article>

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

        <article class="project-card rogue-invader-card">
          <div class="project-media">
            <img src="../../assets/projects/rogue-invader.png" alt="Rogue Invader artwork with a spaceship firing at asteroids">
          </div>
          <div class="project-body">
            <h3>
              <a href="https://rogueinvader.netlify.app/" target="_blank" rel="noopener noreferrer">
                Rogue Invader
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>My first Rogue Like Game based off the hit 90s game asteroids (Work in progress).</p>
            <p>
              Click <a href="https://github.com/Jarmahent" target="_blank" rel="noopener noreferrer">here</a> to view the roadmap and what is currently done
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

<style scoped>
.project-media .project-logo {
  object-fit: contain;
  object-position: center;
}

.rogue-invader-card {
  position: relative;
  cursor: pointer;
}

.rogue-invader-card .project-media {
  background: #000;
}

.rogue-invader-card .project-media img {
  object-fit: contain;
}

.rogue-invader-card h3 a::after {
  position: absolute;
  z-index: 4;
  inset: 0;
  content: '';
}

.rogue-invader-card h3 a:focus-visible::after {
  outline: 3px solid currentColor;
  outline-offset: -3px;
}

.rogue-invader-card p a {
  position: relative;
  z-index: 5;
  font-weight: 700;
  text-decoration: underline;
  text-underline-offset: 2px;
}
</style>
