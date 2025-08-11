<template>
    <a :href="link" target="_blank" rel="noopener noreferrer"
        class="text-blue-700 hover:text-blue-900">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="white" viewBox="0 0 24 24">
            <path
                d="M19 0h-14c-2.76 0-5 2.24-5 5v14c0 2.76 2.24 5 5 5h14c2.76 0 5-2.24 5-5v-14c0-2.76-2.24-5-5-5zm-11.75 20.5h-3v-11h3v11zm-1.5-12.75c-.96 0-1.75-.79-1.75-1.75s.79-1.75 1.75-1.75c.96 0 1.75.79 1.75 1.75s-.79 1.75-1.75 1.75zm13.25 12.75h-3v-5.5c0-1.31-1.07-2.38-2.38-2.38-1.31 0-2.38 1.07-2.38 2.38v5.5h-3v-11h3v1.5c.56-.92 1.73-1.5 2.88-1.5 2.21 0 4 1.79 4 4v6z" />
        </svg>
    </a>
</template>
<script setup>
import { defineProps } from 'vue'

// Define props
const props = defineProps({
  link: {
    type: String
  },
})
</script>
