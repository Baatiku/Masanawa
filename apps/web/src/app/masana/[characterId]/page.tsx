import type {Metadata} from "next";
import {MasanaExperience} from "@/components/masana-experience";
export const metadata:Metadata={title:"Masana profile",robots:{index:false,follow:false}};
export default async function Page({params}:{params:Promise<{characterId:string}>}){
  const {characterId}=await params;
  return <MasanaExperience characterId={characterId} mode="profile"/>;
}
