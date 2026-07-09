<template>
  <section class="section-band light">
    <div class="section-inner">
      <div class="section-header">
        <p class="section-kicker">Experience</p>
        <h2 class="section-title">Production work across startups, logistics, and contract builds.</h2>
      </div>

      <div class="experience-list">
        <article v-for="role in roles" :key="role.company" class="experience-card">
          <div>
            <p v-if="role.title" class="experience-time">{{ role.title }}</p>
            <p class="experience-time">{{ role.dates }}</p>
          </div>
          <div>
            <h3>
              <a :href="role.url" target="_blank" rel="noopener noreferrer">
                {{ role.company }}
                <NewTabIcon class="w-4 h-4" />
              </a>
            </h3>
            <p>{{ role.description }}</p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import NewTabIcon from '../icons/NewTabIcon.vue';

const roles = [
  {
    company: 'USAI',
    url: 'https://www.usai.io/',
    dates: 'Aug 2025',
    title: 'Software Engineer',
    description: 'Hired to build Angular-based applications and support website development.',
  },
  {
    company: 'RisingTide',
    url: 'https://www.risingtide.us/',
    dates: 'Apr 2024 - Aug 2025',
    title: 'Backend Engineer',
    description: 'Maintained and built new features for a route optimization platform.',
  },
  {
    company: 'HubGroup',
    url: 'https://hubgroup.com',
    dates: 'Oct 2019 - Apr 2024',
    title: 'Fullstack Developer',
    description: 'Managed, created, and optimized Final Mile backend services for HubGroup.',
  },
  {
    company: 'ActivePrime',
    url: 'https://activeprime.com',
    dates: 'Jan 2019 - Feb 2021',
    title: 'Fullstack Developer',
    description: 'Created and managed ActivePrime CRM plugin work for Salesforce.',
  },
  {
    company: 'Various Contracts',
    url: 'https://www.upwork.com/freelancers/~010fc2505a8c7800b0',
    dates: 'Jan 2018',
    title: 'Fullstack Developer',
    description: 'Began doing contract development work on Upwork.',
  },
];
</script>
