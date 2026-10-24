import { notFound } from "next/navigation";
import type {Metadata} from "next";
import {Workspace, type Section} from "@/components/workspace";
const allowed=new Set(["chats","status","wallet","calls","rooms","masana","settings"]);
export async function generateMetadata({params}:{params:Promise<{section:string}>}):Promise<Metadata>{const {section}=await params;return {title:section.charAt(0).toUpperCase()+section.slice(1),robots:{index:false,follow:false}};}
export default async function Page({params}:{params:Promise<{section:string}>}){
  const {section}=await params;
  if(!allowed.has(section))notFound();
  return <Workspace section={section as Section}/>;
}
