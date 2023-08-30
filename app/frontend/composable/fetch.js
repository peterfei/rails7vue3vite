import {ref} from "vue";

export function useFetch(url) {
    const data = ref(null);
    const error = ref(null);

    fetch(url)
        .then((res) => res.json())
        .then((json) => {
            console.log("----------------------");
            console.log(JSON.stringify(json));
            data.value = json;
        })
        .catch((err) => (error.value = err));

    return {data, error};
}
