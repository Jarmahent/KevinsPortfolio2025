<script setup lang="ts">
import { ref } from 'vue'

defineProps<{ msg: string }>()

const count = ref(0)
</script>

<template>
  <div class="grid grid-cols-3 gap-4">
    <div class="">
      Left Pane, here is the navigator
    </div>
    <div class="">

    </div>
    <div class="">

    </div>
  </div>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
