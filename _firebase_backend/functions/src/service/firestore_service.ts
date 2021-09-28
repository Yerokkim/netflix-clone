import * as admin from "firebase-admin";
import { firestore } from '../admin';



export class FirestoreService{

    public static get usersCollection(): admin.firestore.CollectionReference {
        return firestore.collection('users');
      }

      public static userCollaborationsCollection(
        userId: string
      ): admin.firestore.CollectionReference {
        return FirestoreService.usersCollection
          .doc(userId)
          .collection('movieList');
      }
    


}