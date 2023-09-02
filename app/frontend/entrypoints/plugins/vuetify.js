import { createVuetify } from "vuetify";
import { aliases, mdi } from "vuetify/iconsets/mdi-svg";


export default createVuetify({
    icons: {
        defaultSet: "mdi",
        aliases,
        sets: {
            mdi,
        },
    },
});