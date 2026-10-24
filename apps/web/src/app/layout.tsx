import type { Metadata, Viewport } from "next";
import type { ReactNode } from "react";
import "./globals.css";
export const metadata:Metadata={
  metadataBase:new URL("https://masanawa.com"),
  title:{default:"Masanawa | Connect with people and Masana",template:"%s | Masanawa"},
  description:"Meet Masana, stay close to people, and share conversations, Status, Calls and Rooms. Wallet capabilities depend on your location and eligibility.",
  applicationName:"Masanawa",
  robots:{index:true,follow:true},
  openGraph:{type:"website",siteName:"Masanawa",title:"Masanawa",description:"A place for people and Masana to connect."},
  icons:{icon:"/masanawa-mark.png",apple:"/masanawa-mark.png"},
  manifest:"/manifest.webmanifest",
};
export const viewport:Viewport={width:"device-width",initialScale:1,themeColor:"#FFFFFF"};
export default function RootLayout({children}:{children:ReactNode}) {
  return <html lang="en"><body>{children}</body></html>;
}
