"use client";
import {useEffect,useState} from 'react';

type Contact={id:string;name:string;acronym:string;serviceType:string;scope:string;state:string|null;lga:string|null;address:string|null;phone:string|null;email:string|null;website:string|null;sourceUrl:string;verifiedAt:string;verificationStatus:string;routingTags:string[];publicNotes:string;revision:number;removedAt:string|null};
const empty={id:'',name:'',acronym:'',serviceType:'security',scope:'local',state:'',lga:'',address:'',phone:'',email:'',website:'',sourceUrl:'',verifiedAt:new Date().toISOString().slice(0,10),verificationStatus:'needs_review',routingTags:'',publicNotes:'',reason:'',expectedRevision:0};
type Form=typeof empty;
async function api(path:string,body?:unknown){const r=await fetch(`/api/ops/v1/admin/${path}`,{cache:'no-store',...(body?{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify(body)}:{})});const d=await r.json().catch(()=>({}));if(!r.ok)throw new Error(d.error||`Request failed (${r.status})`);return d;}

export default function ResponseContactsAdmin(){
  const [contacts,setContacts]=useState<Contact[]>([]),[form,setForm]=useState<Form>(empty),[search,setSearch]=useState('');
  const [busy,setBusy]=useState(false),[saving,setSaving]=useState(false),[error,setError]=useState(''),[success,setSuccess]=useState('');
  const set=(key:keyof Form,value:string)=>setForm(f=>({...f,[key]:value}));
  async function load(){setBusy(true);setError('');try{setContacts((await api('response/contacts')).contacts||[])}catch(e){setError(e instanceof Error?e.message:'Contacts could not be loaded')}finally{setBusy(false)}}
  useEffect(()=>{void load()},[]);
  function choose(item:Contact){setForm({id:item.id,name:item.name,acronym:item.acronym,serviceType:item.serviceType,scope:item.scope,state:item.state||'',lga:item.lga||'',address:item.address||'',phone:item.phone||'',email:item.email||'',website:item.website||'',sourceUrl:item.sourceUrl,verifiedAt:String(item.verifiedAt).slice(0,10),verificationStatus:item.verificationStatus,routingTags:item.routingTags.join(', '),publicNotes:item.publicNotes,expectedRevision:item.revision,reason:''});setSuccess('');setError('');}
  async function save(removed=false){
    if(saving)return;
    if(form.reason.trim().length<8){setError('Explain the source or reason for your change.');return;}
    if(removed&&!window.confirm('Remove this contact from public results while preserving its audit history?'))return;
    setSaving(true);setError('');setSuccess('');
    try{const body={...form,state:form.state||null,lga:form.lga||null,address:form.address||null,phone:form.phone||null,email:form.email||null,website:form.website||null,verifiedAt:form.verifiedAt,routingTags:form.routingTags.split(',').map(s=>s.trim().toLowerCase().replace(/\s+/g,'_')).filter(Boolean),removed};
      const r=await api('response/contacts',body);await load();setForm(v=>({...v,expectedRevision:r.contact.revision,reason:''}));setSuccess(removed?'Contact hidden from public search.':'Verified source record saved.');
    }catch(e){setError(e instanceof Error?e.message:'Contact change not confirmed.');}finally{setSaving(false)}
  }
  const filtered=contacts.filter(c=>[c.name,c.acronym,c.state,c.lga,c.phone,c.serviceType].join(' ').toLowerCase().includes(search.toLowerCase()));
  return <>
    <div className="admin-page-heading"><div><span className="admin-overline">MASANAWA RESPONSE · SOURCE DESK</span><h1>Agency contact directory</h1><p>Maintain national and local response contacts, addresses, categories, verification dates and provenance.</p></div><button className="admin-outline" onClick={()=>void load()} disabled={busy}>Refresh contacts</button></div>
    <div className="admin-warning">Only reviewed, current official contact information is published. Do not infer a local police-station phone number or claim a response partnership. Removing a contact hides it from citizen searches without erasing the revision history.</div>
    {error&&<div className="admin-warning" role="alert">{error}</div>}{success&&<div className="admin-state good response-success" role="status">{success}</div>}
    <div className="response-admin-layout">
      <section className="admin-surface"><div className="surface-heading"><div><h2>Contact records</h2><p>{contacts.length} verified or reviewable entries</p></div><button className="admin-outline" onClick={()=>{setForm({...empty});setError('');setSuccess('')}}>Add contact</button></div>
        <div className="response-filters"><input aria-label="Search agencies" value={search} onChange={e=>setSearch(e.target.value)} placeholder="Search agency, state, LGA, telephone"/></div>
        <div className="response-queue">{filtered.map(item=><button key={item.id} className={`response-queue-item ${form.id===item.id?'active':''}`} aria-pressed={form.id===item.id} onClick={()=>choose(item)}><span><strong>{item.name}</strong><small>{item.acronym} · {item.state||'National'}{item.lga?`, ${item.lga}`:''}</small></span><span className="response-queue-trailing"><span className={`response-level ${item.verificationStatus==='verified'?'routine':'priority'}`}>{item.verificationStatus.replace('_',' ')}</span><small>{item.phone||'No phone'}</small>{item.removedAt&&<small>Removed</small>}</span></button>)}{!busy&&!filtered.length&&<div className="admin-empty">No contacts match the search.</div>}</div>
      </section>
      <section className="admin-surface response-editor"><div className="surface-heading"><div><h2>{form.expectedRevision?'Edit agency contact':'New verified agency record'}</h2><p>Official source and verification status are required for publication.</p></div>{form.expectedRevision>0&&<span className="admin-state">Revision {form.expectedRevision}</span>}</div>
        <form className="response-edit-form" onSubmit={e=>{e.preventDefault();void save()}}>
          <label>Stable record ID<input required pattern="[a-z0-9-]{4,80}" disabled={form.expectedRevision>0} maxLength={80} value={form.id} onChange={e=>set('id',e.target.value)} placeholder="ng-police-station-oyo-ibadan-..."/></label>
          <label>Agency or station name<input required maxLength={180} value={form.name} onChange={e=>set('name',e.target.value)}/></label>
          <div className="response-field-grid"><label>Acronym<input maxLength={30} value={form.acronym} onChange={e=>set('acronym',e.target.value)}/></label><label>Service type<input required maxLength={80} value={form.serviceType} onChange={e=>set('serviceType',e.target.value)} placeholder="fire, security, road..."/></label></div>
          <div className="response-field-grid"><label>Coverage<select value={form.scope} onChange={e=>set('scope',e.target.value)}><option value="national">National</option><option value="state">State</option><option value="local">Local station</option></select></label><label>Verification<select value={form.verificationStatus} onChange={e=>set('verificationStatus',e.target.value)}><option value="needs_review">Needs review · not public</option><option value="verified">Verified · public</option><option value="inactive">Inactive · not public</option></select></label></div>
          <div className="response-field-grid"><label>State / FCT<input maxLength={80} value={form.state} onChange={e=>set('state',e.target.value)}/></label><label>LGA<input maxLength={100} value={form.lga} onChange={e=>set('lga',e.target.value)}/></label></div>
          <label>Address<input maxLength={300} value={form.address} onChange={e=>set('address',e.target.value)} placeholder="Verifiable station or headquarters address"/></label>
          <div className="response-field-grid"><label>Public telephone<input maxLength={35} value={form.phone} onChange={e=>set('phone',e.target.value)}/></label><label>Public email<input maxLength={150} value={form.email} onChange={e=>set('email',e.target.value)}/></label></div>
          <label>Official website<input type="url" value={form.website} onChange={e=>set('website',e.target.value)}/></label>
          <label>Evidence URL<input type="url" required value={form.sourceUrl} onChange={e=>set('sourceUrl',e.target.value)}/></label>
          <div className="response-field-grid"><label>Last verified<input type="date" required value={form.verifiedAt} onChange={e=>set('verifiedAt',e.target.value)}/></label><label>Routing tags<input value={form.routingTags} onChange={e=>set('routingTags',e.target.value)} placeholder="fire, rescue"/></label></div>
          <label>Citizen-facing notes<textarea rows={3} maxLength={800} value={form.publicNotes} onChange={e=>set('publicNotes',e.target.value)}/></label>
          <label>Required audit reason<textarea rows={2} minLength={8} maxLength={500} required value={form.reason} onChange={e=>set('reason',e.target.value)} placeholder="Cite the source / describe your verification or correction"/></label>
          <div className="response-admin-actions"><button className="admin-primary" type="submit" disabled={saving}>{saving?'Saving…':'Save contact'}</button>{form.expectedRevision>0&&<button className="admin-outline" type="button" disabled={saving} onClick={()=>void save(true)}>Remove from directory</button>}</div>
        </form>
      </section>
    </div>
  </>;
}
