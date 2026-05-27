<script setup lang="ts">
import { ref } from 'vue';
import LinkedInIcon from './components/icons/LinkedInIcon.vue';
import StackOverFlowIcon from './components/icons/StackOverFlowIcon.vue';
import GithubIcon from './components/icons/GithubIcon.vue';
import Experience from './components/sections/Experience.vue';
import Skills from './components/sections/Skills.vue';
import AboutMe from './components/sections/AboutMe.vue';
import ContactMe from './components/ContactMe.vue';
import Projects from './components/sections/Projects.vue';
import FavoriteProjects from './components/sections/FavoriteProjects.vue';

const showingContactMe = ref(false);

const navItems = [
  { id: 'about-me', label: 'About', short: 'About' },
  { id: 'skills', label: 'Skills', short: 'Skills' },
  { id: 'experience', label: 'Experience', short: 'Work' },
  { id: 'projects', label: 'Projects', short: 'Builds' },
  { id: 'favorite-projects', label: 'Favorites', short: 'Reads' },
];

function scrollTo(id: string) {
  const el = document.getElementById(id);
  if (el) {
    el.scrollIntoView({ behavior: 'smooth' });
  }
}
</script>

<template>
  <ContactMe v-if="showingContactMe" @close="showingContactMe = false" />

  <div class="site-shell">
    <aside class="desktop-rail">
      <div>
        <img src="./assets/me.png" alt="Kevin Hernandez" class="rail-photo">
        <h2 class="rail-name">Kevin Hernandez</h2>
        <p class="rail-meta">Fullstack Developer<br>Northern Virginia</p>
        <div class="availability-pill">
          <span class="availability-dot"></span>
          Building useful software
        </div>
      </div>

      <nav class="nav-stack" aria-label="Portfolio sections">
        <button
          v-for="(item, index) in navItems"
          :key="item.id"
          type="button"
          class="nav-button"
          @click="scrollTo(item.id)"
        >
          <span>{{ item.label }}</span>
          <span class="nav-index">0{{ index + 1 }}</span>
        </button>
      </nav>

      <div class="rail-actions">
        <a href="./khrn2025.pdf" rel="noopener noreferrer" target="_blank" class="primary-action">
          Resume PDF
        </a>
        <button type="button" class="secondary-action" @click="showingContactMe = true">
          Contact Kevin
        </button>
        <div class="social-row" aria-label="Social links">
          <LinkedInIcon size="20px" color="#e9fbff" link="https://www.linkedin.com/in/kevin-h-9932a5153/" />
          <StackOverFlowIcon size="20px" color="#e9fbff" link="https://stackoverflow.com/users/5875610/kevin-hernandez" />
          <GithubIcon size="20px" color="#e9fbff" link="https://github.com/Jarmahent" />
        </div>
        <p class="rail-meta">Built with care by Kevin.</p>
      </div>
    </aside>

    <main class="main-canvas">
      <header class="mobile-topbar">
        <div class="mobile-brand">
          <img src="./assets/me.png" alt="Kevin Hernandez">
          <div>
            <div class="mobile-name">Kevin Hernandez</div>
            <div class="mobile-role">Fullstack Developer</div>
          </div>
        </div>
        <button type="button" class="secondary-action" @click="showingContactMe = true">
          Contact
        </button>
      </header>

      <section class="hero-band">
        <div class="section-inner hero-grid">
          <div>
            <p class="section-kicker">Fullstack Developer / Northern Virginia</p>
            <h1 class="hero-title">Clean APIs. Useful interfaces. Reliable systems.</h1>
            <p class="hero-subtitle">
              I build and maintain production software across Python, FastAPI, Node.js, Vue, React, Angular, CI/CD,
              testing, and deployment workflows.
            </p>
            <div class="hero-tags" aria-label="Core specialties">
              <span class="tag">Python + FastAPI</span>
              <span class="tag">Vue / React / Angular</span>
              <span class="tag">CI/CD</span>
              <span class="tag">Backend systems</span>
            </div>
            <div class="hero-actions">
              <a href="./khrn2025.pdf" rel="noopener noreferrer" target="_blank" class="primary-action">
                View Resume
              </a>
              <button type="button" class="secondary-action" @click="scrollTo('projects')">
                See Projects
              </button>
            </div>
          </div>

          <div class="hero-card">
            <img src="./assets/me2-edited.png" alt="Kevin Hernandez">
            <div class="hero-statbar">
              <div class="hero-stat">
                <strong>8+</strong>
                <span>Years web dev</span>
              </div>
              <div class="hero-stat">
                <strong>5</strong>
                <span>Roles & contracts</span>
              </div>
              <div class="hero-stat">
                <strong>3</strong>
                <span>Frontend stacks</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <AboutMe id="about-me" />
      <Skills id="skills" />
      <Experience id="experience" />
      <Projects id="projects" />
      <FavoriteProjects id="favorite-projects" />

      <nav class="mobile-nav" aria-label="Portfolio sections">
        <button
          v-for="item in navItems"
          :key="item.id"
          type="button"
          @click="scrollTo(item.id)"
        >
          {{ item.short }}
        </button>
      </nav>
    </main>
  </div>
</template>
