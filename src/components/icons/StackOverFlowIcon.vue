<template>
    <a :href="link" target="_blank" rel="noopener noreferrer"
        class="text-orange-600 hover:text-orange-800">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="white" viewBox="0 0 24 24">
            <path
                d="M17.818 20.865H6.186v-5.175h1.745v3.43h8.05v-3.43h1.737v5.175zm-7.785-3.487h5.703v1.744h-5.703v-1.744zm6.142-2.876l-4.81-1.19.366-1.48 4.809 1.192-.365 1.478zm.38-3.655-4.352-2.58.845-1.426 4.351 2.58-.844 1.426zm1.375-3.582-3.6-3.27 1.235-1.359 3.601 3.27-1.236 1.36zm3.824 13.712H6.186v-6.696H4.44v8.441h15.378v-1.745z" />
        </svg>
    </a>

</template>

<script setup>
import { ref, defineProps, defineEmits } from 'vue'

// Define props
const props = defineProps({
  link: {
    type: String
  },
})
</script>