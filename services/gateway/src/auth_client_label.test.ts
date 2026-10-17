import {describe,it,expect} from "vitest";
import {authClientLabel} from "./auth_client_label.js";

describe("safe client label",()=>{
  it("uses bounded, recognizable platform labels",()=>{
    expect(authClientLabel({platformHeader:"android",userAgent:"Dart/3"}))
      .toBe("Android · Masanawa app");
    expect(authClientLabel({platformHeader:"ios",userAgent:"Dart/3"}))
      .toBe("iPhone/iPad · Masanawa app");
    expect(authClientLabel({platformHeader:undefined,
      userAgent:"Mozilla/5.0 (Windows NT 10.0)"})).toBe("Windows browser");
  });
  it("never reflects user-supplied content into the session label",()=>{
    const raw="<script>alert('privacy')</script>";
    const value=authClientLabel({platformHeader:raw,userAgent:raw});
    expect(value).toBe("Unknown device");
    expect(value).not.toContain("<");
    expect(value.length).toBeLessThanOrEqual(64);
  });
});
