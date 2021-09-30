import * as admin from "firebase-admin";
import {firestore} from "../admin";


export class FirestoreService {
  /**
 *
 *
 * @return {CollectionReference}
 */
  public static get usersCollection(): admin.firestore.CollectionReference {
    return firestore.collection("users");
  }

  /**
 *
 *
 * @returns {CollectionReference}
 */
  public static userMovieListCollection(
      userId: string
  ): admin.firestore.CollectionReference {
    return FirestoreService.usersCollection
        .doc(userId)
        .collection("movieList");
  }
   /**
 *
 *
 * @returns {CollectionReference}
 */
  public static userMovieRecommendationCollection(
      userId: string
  ): admin.firestore.CollectionReference {
    return FirestoreService.usersCollection
        .doc(userId)
        .collection("contentRecommendations");
  }
}
