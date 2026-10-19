import {describe,expect,it,vi} from "vitest";
import {createApprovedMasanaMediaPort} from "./profile_media.js";
const input={tenantId:"tenant_a",characterId:"masana_one",
  mediaId:"media_rights_portrait",kind:"portrait" as const};

describe("approved Masana media grants",()=>{
  it("never signs without the dedicated configured private media store",async()=>{
    const query=vi.fn();
    const service=createApprovedMasanaMediaPort({query} as never);
    expect(await service.publicMediaUrl(input)).toBeNull();
    await expect(service.verifyMedia({...input,staffId:"editor_a"}))
      .rejects.toMatchObject({statusCode:503});
    expect(query).not.toHaveBeenCalled();
  });
  it("issues expiring signed links only after rights-cleared matching approved revisions",async()=>{
    const query=vi.fn(async (..._args:unknown[])=>({rows:[{object_key:"masana/portrait.png"}]}));
    const statObject=vi.fn(async()=>({contentType:"image/png",bytes:450}));
    const presignGet=vi.fn(async()=>({url:"https://status.example/masana/portrait.png?sig=ok",
      expiresAt:new Date(Date.now()+120000).toISOString()}));
    const service=createApprovedMasanaMediaPort({query} as never,{
      objects:{statObject,presignGet},approvedDownloadOrigins:["https://status.example"],
    });
    expect(await service.publicMediaUrl(input)).toMatch(/status.example/);
    expect(query).toHaveBeenCalledTimes(2);
    expect(query.mock.calls[0]?.[1])
      .toEqual(["tenant_a","masana_one","media_rights_portrait","portrait","portraitMediaId"]);
    const sql=query.mock.calls[0]?.[0];
    expect(sql).toContain("o.kind='creator-agent'");
    expect(sql).toContain("ca.state='published'");
    expect(sql).toContain("u.state='active'");
    expect(sql).toContain("r.profile->>$5=m.media_id");
    expect(sql).toContain("length(btrim(m.rights_note))>4");
    expect(statObject).toHaveBeenCalledWith("masana/portrait.png");
    expect(presignGet).toHaveBeenCalledWith("masana/portrait.png",120);
  });
  it("rejects revoked media, incompatible MIME, and untrusted signed origins",async()=>{
    const query=vi.fn(async (..._args:unknown[])=>({rows:[{object_key:"masana/portrait.png"}]}));
    const config={
      objects:{
        statObject:vi.fn(async()=>({contentType:"audio/mpeg",bytes:100})),
        presignGet:vi.fn(async()=>({url:"https://malicious.example/image",
          expiresAt:new Date(Date.now()+120000).toISOString()})),
      },approvedDownloadOrigins:["https://status.example"],
    };
    const service=createApprovedMasanaMediaPort({query} as never,config);
    expect(await service.publicMediaUrl(input)).toBeNull();
    expect(config.objects.presignGet).not.toHaveBeenCalled();
    config.objects.statObject.mockResolvedValue({contentType:"image/png",bytes:100});
    expect(await service.publicMediaUrl(input)).toBeNull();
  });
});
