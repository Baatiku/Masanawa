import type { MetadataRoute } from "next";
export default function manifest(): MetadataRoute.Manifest {return {
  name:"Masanawa",short_name:"Masanawa",description:"Chat, call and share with people and Masana.",
  start_url:"/",display:"standalone",background_color:"#FFFFFF",theme_color:"#25D366",
  icons:[{src:"/masanawa-mark.png",sizes:"512x512",type:"image/png"}],
};}
