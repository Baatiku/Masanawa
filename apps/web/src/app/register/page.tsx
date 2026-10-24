import { Suspense } from "react";
import type {Metadata} from "next";import {AuthForm} from "@/components/auth-form";
export const metadata:Metadata={title:"Create account",robots:{index:false,follow:false}};
export default function Page(){return <Suspense fallback={<main className="auth-loading" aria-busy="true">Loading secure sign in…</main>}><AuthForm mode="register"/></Suspense>;}
