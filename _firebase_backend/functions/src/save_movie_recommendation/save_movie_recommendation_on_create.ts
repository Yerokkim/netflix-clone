import * as functions from "firebase-functions";
import {SavedMovie} from "../models/saved_movie_model";
import {MovieService} from "../service/movie_service";


export const saveMovieListOnCreate=
functions.region("europe-west3").firestore.
    document("users/{userId}/movieList/{documentId}").onCreate(async (snapshot, _)=>{
      try {
        const movieData= snapshot.data() as SavedMovie;

        functions.logger.info(`Executing  with ID: ${movieData.movie.id}`);

 const recommendationData=
     await MovieService.
     getRecommenationMovies(movieData.movie.id);

  

 const recommendataionDataDocId=
    await MovieService.
    saveContentRecommendation(recommendationData,
         movieData.movie.id, 
     movieData.userId,);

        functions.logger.
        info(`sucessfully create the recommendation document with ID:
         ${recommendataionDataDocId}`);
      } catch (e) {
        functions.logger.error(e);
        functions.logger
        .error("can not create the recommendation document");
      }
    });

   
