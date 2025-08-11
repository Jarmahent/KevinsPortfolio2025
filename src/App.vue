<script setup>
import LinkedInIcon from './components/icons/LinkedInIcon.vue';
import StackOverFlowIcon from './components/icons/StackOverFlowIcon.vue';
import GithubIcon from './components/icons/GithubIcon.vue'
import Experience from './components/main/Experience.vue';
</script>

<template>
  <div class="flex h-screen">
    <!-- Side Panel -->
    <aside class="w-64 bg-gray-900 text-white flex flex-col h-screen p-4">
      <div class="flex justify-center m-4">
        <img src="./assets/me.png" alt="kevin hernandez" class="w-30 h-30 rounded-full object-cover">
      </div>
      <div class="m-4 flex-grow-[.8]">
        <div>
          <h2 class="text-2xl font-extrabold text-white-900 tracking-tight"> Kevin Hernandez</h2>

        </div>
        <div>
          <p class="text-sm  tracking-tight">Fullstack Developer</p>

        </div>
        <div>
          <p class="text-sm  tracking-tight">Northern Virginia</p>

        </div>
      </div>


      <div class="flex flex-col flex-grow-[2]">
        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold  flex items-center">+</span>
          What I do
        </button>

        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold flex items-center">+</span>
          Experience
        </button>

        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          <span class="text-2xl font-bold  flex items-center">+</span>
          Projects
        </button>
      </div>

      <footer class="p-1 flex flex-row">
        <LinkedInIcon class="p-1" link="https://www.linkedin.com/in/kevin-h-9932a5153/" />
        <StackOverFlowIcon class="p-1" link="https://stackoverflow.com/users/5875610/kevin-hernandez" />
        <GithubIcon class="p-1" link="https://github.com/Jarmahent" />
      </footer>
      <footer>

        <button class="mb-2 hover:bg-gray-600 flex items-center gap-2 px-3 py-1 ">
          Built with ❤ By Kevin
        </button>

      </footer>

    </aside>

    <!-- Main Content -->
    <main class="flex-1 p-6 bg-gray-100">
      <Experience/>
    </main>
  </div>
</template>


<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}

.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}

.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
