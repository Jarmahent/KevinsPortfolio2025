<template>
  <section class="section-band light">
    <div class="section-inner">
      <div class="section-header">
        <p class="section-kicker">About me</p>
        <h2 class="section-title">A practical fullstack developer who likes clean handoffs.</h2>
      </div>

      <div class="about-grid">
        <div>
          <p class="about-copy">
            I am a fullstack developer with a strong foundation in Python, particularly FastAPI and Pydantic,
            for building and maintaining APIs. My experience spans the full development lifecycle, from writing
            clean backend logic to creating deployment pipelines and maintaining production systems.
          </p>
          <p class="about-copy mt-5">
            In addition to backend development, I have experience with Node.js and frontend frameworks including
            Vue.js, React, and Angular. I have also designed and maintained CI/CD pipelines, mainly with GitHub
            Actions, written comprehensive unit tests, and contributed to infrastructure and deployment processes.
            I value clean, maintainable code, clear communication, and thoughtful collaboration.
          </p>

          <div class="metric-grid">
            <div class="metric">
              <strong>Python</strong>
              <span>Primary language</span>
            </div>
            <div class="metric">
              <strong>FastAPI</strong>
              <span>API development</span>
            </div>
            <div class="metric">
              <strong>GitHub</strong>
              <span>CI/CD actions</span>
            </div>
          </div>

          <div class="button-row">
            <a href="./khrn2025.pdf" rel="noopener noreferrer" target="_blank" class="quiet-action">
              Resume PDF
            </a>
          </div>
        </div>

        <div class="about-photo">
          <img src="../../assets/me2-edited.png" alt="Kevin Hernandez">
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts"></script>
