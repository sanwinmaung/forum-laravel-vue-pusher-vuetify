<template>
  <div class="text-xs-center">
    <v-menu offset-y>
      <template v-slot:activator="{ on, attrs }">
        <v-btn 
        icon 
        v-bind="attrs"
        v-on="on">
            <v-icon :color="color">add_alert</v-icon> {{ unreadCount }}
        </v-btn>
      </template>

      <v-list>
        <v-list-item v-for="item in unread" :key="item.id">
          <router-link :to="item.path">
            <v-list-item-title @click="readIt(item)">{{ item.question }}</v-list-item-title>
          </router-link>
        </v-list-item>
        <v-divider></v-divider>

        <v-list-item v-for="item in read" :key="item.id">
          <v-list-item-title>{{ item.question }}</v-list-item-title>
        </v-list-item>
        <v-divider></v-divider>
      </v-list>

    </v-menu>
  </div>
</template>

<script>
export default {
    created() {
        if(User.loggedIn()) {
            this.getNotifications()
        }
    },
    data() {
        return {
            read: {},
            unread: {},
            unreadCount: 0
        }
    },
    computed: {
        color() {
            return this.unreadCount > 0 ? 'pink accent-2' : 'pink accent-1'
        }
    },
    methods: {
        getNotifications() {
            axios.post('/api/notifications')
            .then(res => {
                this.read = res.data.read
                this.unread = res.data.unRead
                this.unreadCount = res.data.unRead.length
            })
        },
        readIt(notification) {
            axios.post('/api/mark-as-read', {id: notification.id})
            .then(res => {
                this.unread.splice(notification, 1)
                this.read.push(notification)
                this.unreadCount--
            })
        }
    }
}
</script>