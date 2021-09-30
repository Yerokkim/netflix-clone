import {MovieResult} from "./movie_result_model";
import {Timestamp} from "@google-cloud/firestore";

export interface ContentRecommendation{

    createdAt:Timestamp;
    id:string;
    referralContentId:string;
    movie:MovieResult;
    recommendedAt?:Timestamp;
}
