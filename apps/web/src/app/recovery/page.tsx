import type {Metadata} from "next";import {AuthForm} from "@/components/auth-form";
export const metadata:Metadata={title:"Recover account",robots:{index:false,follow:false}};
export default function Page(){return <AuthForm mode="recovery"/>;}
