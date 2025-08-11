<script setup lang="ts">
import MainPortfolio from './components/MainPortfolio.vue'
import SideBar from './components/SideBar.vue';
</script>

<template>
  <div class="flex h-screen">
    <!-- Side Panel -->
    <aside class="w-64 bg-gray-800 text-white flex flex-col p-4">
      <h2 class="text-lg font-semibold mb-6">Menu</h2>

      <button
        class="mb-2 bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded transition"
      >
        Dashboard
      </button>

      <button
        class="mb-2 bg-green-500 hover:bg-green-600 text-white py-2 px-4 rounded transition"
      >
        Settings
      </button>

      <button
        class="bg-red-500 hover:bg-red-600 text-white py-2 px-4 rounded transition"
      >
        Logout
      </button>
    </aside>

    <!-- Main Content -->
    <main class="flex-1 p-6 bg-gray-100">
      <h1 class="text-2xl font-bold mb-4">Main Content Area</h1>
      <p>This is where your portfolio content will go.</p>
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
