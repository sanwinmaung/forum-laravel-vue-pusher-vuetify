<template>
  <v-card
    class="mx-auto"
    outlined
  >
    <v-list-item three-line>
      <v-list-item-content>
        <v-list-item-title class="headline mb-1">{{ data.title }}</v-list-item-title>
        <v-list-item-subtitle>{{ data.user }} said {{ data.created_at }}</v-list-item-subtitle>
      </v-list-item-content>

      <v-btn color="teal" dark>{{ data.reply_count }} Replies</v-btn>
    </v-list-item>

    <v-card-text v-html="body" class="text--primary"></v-card-text>
    <v-card-actions v-if="own">
      <v-btn icon small @click="edit">
        <v-icon color="orange">edit</v-icon>
      </v-btn>
      <v-btn icon small @click="destroy">
        <v-icon color="red">delete</v-icon>
      </v-btn>
    </v-card-actions>
    
  </v-card>
</template>

<script>
export default {
    props: ['data'],
    data() {
      return {
        own : User.own(this.data.user_id)
      }
    },
    computed: {
      body() {
        return md.parse(this.data.body);
      }
    },
    methods: {
      destroy() {
        axios.delete(`/api/question/${this.data.slug}`)
        .then(res => this.$router.push('/forum'))
        .catch(error => console.log(error.response.data));
      },
      edit() {
        EventBus.$emit('startEditing');
      }
    }
}
</script>