import {MovieResult} from "./movie_result_model";
import {Timestamp} from "@google-cloud/firestore";

export interface SavedMovie{
    id:string,
    userId:string,
    movie:MovieResult,
    isAdded:boolean,
    createdAt?:Timestamp,
}
