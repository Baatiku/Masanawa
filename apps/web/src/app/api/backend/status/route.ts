import { NextResponse } from "next/server";
import { gatewayFetch, NO_STORE } from "@/lib/gateway";

/** Public, sanitized readiness probe; never exposes tokens, private hostnames or configuration. */
export const dynamic = "force-dynamic";
export async function GET() {
  const ready = await gatewayFetch("/readyz","GET",undefined,undefined,{timeoutMs:8000});
  const connected = ready.status === 200;
  let otpChannels: ("email"|"sms")[] = [];
  if(connected) {
    const capabilities = await gatewayFetch("/auth/capabilities","GET",undefined,undefined,{timeoutMs:7000});
    if(capabilities.status === 200 && Array.isArray(capabilities.data.otpChannels)) {
      otpChannels = capabilities.data.otpChannels.filter(
        (channel):channel is "email"|"sms" => channel==="email"||channel==="sms"
      );
    }
  }
  return NextResponse.json({
    connected,
    ...(connected?{otpChannels}:{}),
    message:connected?"Masanawa Gateway is connected.":"The Masanawa Gateway is currently unreachable or not ready.",
  },{status:connected?200:503,headers:NO_STORE});
}
