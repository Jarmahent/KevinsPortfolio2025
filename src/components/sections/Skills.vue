<template>
  <section class="section-band light">
    <div class="section-inner">
      <div class="section-header">
        <p class="section-kicker">Skills & technologies</p>
        <h2 class="section-title">Tools I use to ship, support, and improve software.</h2>
      </div>

      <div class="skills-grid">
        <article v-for="skill in skills" :key="skill.title" class="skill-card">
          <div class="skill-icon" aria-hidden="true">
            <span class="font-black">{{ skill.mark }}</span>
          </div>
          <h3>{{ skill.title }}</h3>
          <p>{{ skill.description }}</p>
        </article>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const skills = [
  {
    mark: 'JS',
    title: 'Vanilla JavaScript',
    description: 'A core web development skill I have used throughout my eight years of building for the web.',
  },
  {
    mark: 'UI',
    title: 'Vue, Angular, React',
    description: 'Vue is my favorite frontend framework, and I also have hands-on experience with React and Angular.',
  },
  {
    mark: 'PY',
    title: 'Python',
    description: 'Python is my favorite language and the one I have the most experience using professionally.',
  },
  {
    mark: 'ND',
    title: 'Node.js',
    description: 'Node.js is a powerful backend runtime I use when JavaScript is the right fit outside the browser.',
  },
  {
    mark: 'GT',
    title: 'Git',
    description: 'Git was one of the first tools in my web development journey, and I still keep learning new ways to use it well.',
  },
  {
    mark: 'TM',
    title: 'Teamwork',
    description: 'Teamwork is one of my top values. I have worked with diverse teams across many years of web development.',
  },
  {
    mark: 'DB',
    title: 'Databases',
    description: 'I have worked with several database technologies, including MySQL, MariaDB, and DB2.',
  },
  {
    mark: 'CI',
    title: 'CI/CD & Testing',
    description: 'I have built GitHub Actions pipelines, written unit tests, and supported release and deployment workflows.',
  },
];
</script>
