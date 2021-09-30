import axios from "axios";
import {ContentRecommendation} from "../models/content_recommendation_model";
import {MovieResult} from "../models/movie_result_model";
import {Timestamp} from "@google-cloud/firestore";
import {FirestoreService} from "./firestore_service";
import { logger } from "firebase-functions/v1";


export class GettingContentInternalError extends Error {}


export class MovieService {
    public static apiKey=process.env.MOVIE_DB_API;

    public static async getRecommenationMovies(movieId:string) {
      const movies= await axios.
      get(`https://api.themoviedb.org/3/tv/${movieId}/recommendations?api_key=235f8d85a7c4198073a406eeb3d67977&language=en-US&page=1`);

      if (movies.status !=200 ) {
          logger.info('can not get the movie info');
      throw new  GettingContentInternalError();
       
      }

   
      return movies.data['results'][0] as MovieResult;
    }

    public static async saveContentRecommendation(recommendationMovie:MovieResult, referralContentId:string, userId:string) {
      const contentRecommendationDocRef = FirestoreService.userMovieRecommendationCollection(userId).doc();

      const recommendationsData:ContentRecommendation={
        createdAt: Timestamp.now(),
        movie: recommendationMovie,
        id: contentRecommendationDocRef.id,
        referralContentId: referralContentId,

      };

      await contentRecommendationDocRef.create(recommendationsData);

      return contentRecommendationDocRef.id;
    }
}
