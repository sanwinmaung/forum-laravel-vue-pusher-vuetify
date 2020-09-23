<template>
  <v-card>
    <div>
        <v-card-title>
            <router-link :to="data.path">
                {{ data.title }}
            </router-link>
        </v-card-title>
        <v-card-subtitle class="pb-0 grey--text">
            {{ data.user }} said
            {{ data.created_at }}
        </v-card-subtitle>
    </div>
    <v-card-text class="text--primary">
      <div>{{ data.body }}</div>
    </v-card-text>
  </v-card>
</template>

<script>
export default {
    props: ['data']
}
</script>