import type { Metadata } from "next";
import { DesignPreview } from "@/components/design-preview";
export const metadata: Metadata = { title: "Web design preview", robots: { index: false, follow: false } };
export default function Page() { return <DesignPreview />; }
