import {firestore} from "./admin";

firestore.settings({ignoreUndefinedProperties: true});

export {saveMovieListOnCreate} from
"./save_movie_recommendation/save_movie_recommendation_on_create";


