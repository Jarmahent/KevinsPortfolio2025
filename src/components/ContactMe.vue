<template>
  <div class="contact-backdrop" role="dialog" aria-modal="true" aria-labelledby="contact-title">
    <div class="contact-panel">
      <button
        type="button"
        class="icon-button absolute right-4 top-4"
        aria-label="Close contact dialog"
        @click="$emit('close')"
      >
        &times;
      </button>

      <p class="section-kicker">Contact</p>
      <h2 id="contact-title" class="mt-3 text-4xl font-black leading-none text-[var(--ink)]">Let's talk.</h2>
      <p class="mt-4 text-base leading-7 text-[rgba(23,21,17,0.66)]">
        My email appears after a short delay to make scraping a little harder.
      </p>

      <div class="mt-6">
        <div v-if="isWaiting" class="rounded-lg border border-[var(--line)] bg-[rgba(23,21,17,0.04)] p-4">
          <p class="font-bold text-[var(--ink)]">Please wait...</p>
        </div>

        <button
          v-if="showEmail"
          type="button"
          class="email-button"
          @click="copyEmail"
        >
          {{ copied ? 'Copied!' : myEmail }}
        </button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue';

const showEmail = ref(false);
const isWaiting = ref(true);
const copied = ref(false);
const myEmail = 'kjh7796@gmail.com';

onMounted(() => {
  const delay = Math.floor(Math.random() * 2000) + 3000;
  setTimeout(() => {
    showEmail.value = true;
    isWaiting.value = false;
  }, delay);
});

function copyEmail() {
  navigator.clipboard.writeText(myEmail).then(() => {
    copied.value = true;
    setTimeout(() => {
      copied.value = false;
    }, 1500);
  });
}
</script>
