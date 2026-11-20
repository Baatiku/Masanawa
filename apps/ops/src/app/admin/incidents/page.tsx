"use client";

import {useCallback,useEffect,useState} from 'react';
type Incident={id:string;reference:string;title:string;description:string;category:string;subcategory:string;urgency:string;status:string;locationState:string;locationLga:string;locationDetails:string;reporterId:string;createdAt:string;updatedAt:string;revision:number;assignedAgencyId:string|null;privateStaffNotes:string|null;reporterUpdate:string|null;externalReference:string|null;dispatchConfirmedAt:string|null;dispatchConfirmationSource:string|null;hiddenAt:string|null;sourceMode:string};
type Event={action:string;actorRole:string;createdAt:string;previousStatus:string|null;newStatus:string|null;reason:string;message:string|null};
type Agency={id:string;name:string;verificationStatus:string;removedAt:string|null};
const statuses=['submitted','triage','needs_info','routed','acknowledged','in_progress','resolved','closed','dismissed'];
const urgencies=['routine','priority','urgent','immediate'];
const statusLabel=(s:string)=>s==='routed'?'Internal routing review':s==='acknowledged'?'Agency receipt confirmed':s.replaceAll('_',' ').replace(/^./,c=>c.toUpperCase());

async function json(url:string,init?:RequestInit){
  const response=await fetch(url,{cache:'no-store',...init});const result=await response.json().catch(()=>({}));
  if(!response.ok)throw new Error(result.error||`Request failed (${response.status})`);return result;
}

export default function ResponseIncidentsAdmin(){
  const [rows,setRows]=useState<Incident[]>([]),[contacts,setContacts]=useState<Agency[]>([]);
  const [selected,setSelected]=useState<Incident|null>(null),[events,setEvents]=useState<Event[]>([]);
  const [filter,setFilter]=useState(''),[search,setSearch]=useState(''),[offset,setOffset]=useState(0),[includeHidden,setIncludeHidden]=useState(false);
  const [revision,setRevision]=useState(0),[busy,setBusy]=useState(false),[saving,setSaving]=useState(false),[error,setError]=useState(''),[success,setSuccess]=useState('');
  const [form,setForm]=useState({status:'',urgency:'',category:'',title:'',description:'',assignedAgencyId:'',reporterUpdate:'',privateStaffNotes:'',externalReference:'',dispatchConfirmationSource:'',reason:''});
  const load=useCallback(async()=>{
    setBusy(true);setError('');
    try{const q=new URLSearchParams({limit:'40',offset:String(offset)});if(filter)q.set('status',filter);if(includeHidden)q.set('includeHidden','true');
      const result=await json(`/api/ops/v1/admin/incidents?${q}`);setRows(result.incidents||[]);
    }catch(e){setError(e instanceof Error?e.message:'Could not load incidents');}finally{setBusy(false);}
  },[offset,filter,includeHidden]);
  useEffect(()=>{void load()},[load]);
  useEffect(()=>{void json('/api/ops/v1/admin/response/contacts').then(d=>setContacts(d.contacts||[])).catch(()=>{})},[]);
  async function open(id:string){
    setError('');setSuccess('');
    try{const data=await json(`/api/ops/v1/admin/incidents/${id}`);const item:Incident=data.incident;setSelected(item);setEvents(data.events||[]);setForm({
      status:item.status,urgency:item.urgency,category:item.category,title:item.title,description:item.description,assignedAgencyId:item.assignedAgencyId||'',
      reporterUpdate:item.reporterUpdate||'',privateStaffNotes:item.privateStaffNotes||'',externalReference:item.externalReference||'',dispatchConfirmationSource:item.dispatchConfirmationSource||'',reason:'',
    });}catch(e){setError(e instanceof Error?e.message:'Could not open incident');}
  }
  async function save(visibility?:boolean){
    if(!selected||saving)return;
    if(form.reason.trim().length<8){setError('Please explain the reason for this change (at least eight characters).');return;}
    if(visibility===true&&!window.confirm('Hide this report from the active queue? Its evidence and audit trail will be retained.'))return;
    setSaving(true);setError('');setSuccess('');
    const patch:Record<string,unknown>={expectedRevision:selected.revision,reason:form.reason.trim()};
    if(visibility!==undefined)patch.hide=visibility;
    else {
      for(const key of ['status','urgency','category','title','description','reporterUpdate','privateStaffNotes','externalReference','dispatchConfirmationSource'] as const){if(form[key]!==String(selected[key]??''))patch[key]=form[key]}
      if(form.assignedAgencyId!==(selected.assignedAgencyId??''))patch.assignedAgencyId=form.assignedAgencyId||null;
    }
    if(Object.keys(patch).length===2){setError('Nothing has changed.');setSaving(false);return;}
    try{await json(`/api/ops/v1/admin/incidents/${selected.id}/update`,{method:'POST',headers:{'content-type':'application/json'},body:JSON.stringify(patch)});await open(selected.id);await load();setSuccess('Saved to the canonical incident record with an audit entry.');}
    catch(e){setError(e instanceof Error?e.message:'Update not confirmed. Refresh the record before retrying.');}finally{setSaving(false);}
  }
  const shown=rows.filter(r=>[r.reference,r.title,r.locationState,r.category].join(' ').toLowerCase().includes(search.toLowerCase()));
  return <>
    <div className="admin-page-heading"><div><span className="admin-overline">MASANAWA RESPONSE · OPERATIONS</span><h1>Incident response desk</h1><p>Review private citizen reports, correct records, maintain the response queue and document every administrative change.</p></div><button className="admin-outline" onClick={()=>void load()} disabled={busy}>Refresh queue</button></div>
    <div className="admin-warning">Masanawa is not an official emergency dispatcher. A suggested or routed agency does not mean an incident was delivered to or acknowledged by the government. For immediate danger, advise the citizen to call 112.</div>
    {error&&<div role="alert" className="admin-warning">{error}</div>}{success&&<div role="status" className="admin-state good response-success">{success}</div>}
    <div className="response-admin-layout">
      <section className="admin-surface">
        <div className="surface-heading"><div><h2>Incident queue</h2><p>{busy?'Refreshing…':`${shown.length} reports on this page`}</p></div><label className="response-checkbox"><input type="checkbox" checked={includeHidden} onChange={e=>{setIncludeHidden(e.target.checked);setOffset(0)}}/> Include hidden</label></div>
        <div className="response-filters"><input value={search} onChange={e=>setSearch(e.target.value)} placeholder="Search reference, title or state" aria-label="Search incidents"/><select aria-label="Filter status" value={filter} onChange={e=>{setFilter(e.target.value);setOffset(0)}}><option value="">All statuses</option>{statuses.map(s=><option key={s} value={s}>{statusLabel(s)}</option>)}</select></div>
        <div className="response-queue">{shown.map(item=><button key={item.id} type="button" aria-pressed={selected?.id===item.id} className={`response-queue-item ${selected?.id===item.id?'active':''}`} onClick={()=>void open(item.id)}><span><strong>{item.title}</strong><small>{item.reference} · {item.locationState}{item.locationLga?`, ${item.locationLga}`:''}</small></span><span className="response-queue-trailing"><span className={`response-level ${item.urgency}`}>{statusLabel(item.urgency)}</span><small>{statusLabel(item.status)}</small>{item.hiddenAt&&<small>Hidden</small>}</span></button>)}{!busy&&!shown.length&&<div className="admin-empty">No matching incident reports.</div>}</div>
        <div className="admin-pagination"><button disabled={offset===0||busy} onClick={()=>setOffset(v=>Math.max(0,v-40))}>Previous</button><span>Page {Math.floor(offset/40)+1}</span><button disabled={rows.length<40||busy} onClick={()=>setOffset(v=>v+40)}>Next</button></div>
      </section>
      <section className="admin-surface response-editor">{!selected?<div className="admin-empty">Select an incident to review its full record, history and authorized controls.</div>:<>
        <div className="surface-heading"><div><h2>{selected.reference}</h2><p>Received {new Date(selected.createdAt).toLocaleString('en-NG')} · Revision {selected.revision}</p></div><span className="admin-state">{statusLabel(selected.status)}</span></div>
        <form className="response-edit-form" onSubmit={e=>{e.preventDefault();void save()}}>
          <div className="response-field-grid"><label>Tracking status<select value={form.status} onChange={e=>setForm(v=>({...v,status:e.target.value}))}>{statuses.map(s=><option key={s} value={s}>{statusLabel(s)}</option>)}</select></label><label>Urgency<select value={form.urgency} onChange={e=>setForm(v=>({...v,urgency:e.target.value}))}>{urgencies.map(s=><option key={s} value={s}>{statusLabel(s)}</option>)}</select></label></div>
          <div className="response-field-grid"><label>Category<input value={form.category} onChange={e=>setForm(v=>({...v,category:e.target.value}))}/></label><label>Suggested agency<select value={form.assignedAgencyId} onChange={e=>setForm(v=>({...v,assignedAgencyId:e.target.value}))}><option value="">Not assigned</option>{contacts.filter(c=>c.verificationStatus==='verified'&&!c.removedAt).map(c=><option key={c.id} value={c.id}>{c.name}</option>)}</select></label></div>
          <label>Incident title<input maxLength={180} value={form.title} onChange={e=>setForm(v=>({...v,title:e.target.value}))}/></label>
          <label>Incident details<textarea rows={5} maxLength={10000} value={form.description} onChange={e=>setForm(v=>({...v,description:e.target.value}))}/></label>
          <div className="response-meta"><span>Reported by: <code>{selected.reporterId}</code></span><span>Source: {selected.sourceMode.replace('_',' ')}</span><span>Location: {selected.locationState} · {selected.locationDetails||'Not provided'}</span></div>
          <label>Public tracking update<textarea rows={3} maxLength={2000} value={form.reporterUpdate} onChange={e=>setForm(v=>({...v,reporterUpdate:e.target.value}))} placeholder="What the citizen may see about your review"/></label>
          <label>Private staff notes<textarea rows={3} maxLength={5000} value={form.privateStaffNotes} onChange={e=>setForm(v=>({...v,privateStaffNotes:e.target.value}))} placeholder="Internal review observations (never shown to reporter)"/></label>
          <label>External agency case reference (if actually received)<input maxLength={200} value={form.externalReference} onChange={e=>setForm(v=>({...v,externalReference:e.target.value}))}/></label>
          <label>Verified agency acknowledgement evidence<textarea rows={2} maxLength={1000} value={form.dispatchConfirmationSource} onChange={e=>setForm(v=>({...v,dispatchConfirmationSource:e.target.value}))} placeholder="Document how receipt was confirmed, by whom and when. Required with an external case reference before marking acknowledged."/></label>
          {selected.dispatchConfirmedAt&&<div className="response-meta">Agency receipt evidence recorded on {new Date(selected.dispatchConfirmedAt).toLocaleString('en-NG')}. This does not prove a responder is on the way.</div>}
          <label>Required audit reason<textarea required minLength={8} maxLength={1000} rows={2} value={form.reason} onChange={e=>setForm(v=>({...v,reason:e.target.value}))} placeholder="Why is this record being changed?"/></label>
          <div className="response-admin-actions"><button className="admin-primary" type="submit" disabled={saving}>{saving?'Saving…':'Save tracked changes'}</button><button type="button" className="admin-outline" disabled={saving} onClick={()=>void save(!selected.hiddenAt)}>{selected.hiddenAt?'Restore visibility':'Hide incident'}</button></div>
        </form>
        <div className="response-timeline"><h3>Immutable activity history</h3>{events.map((ev,i)=><div key={i}><span className="response-timeline-dot"/><div><strong>{statusLabel(ev.action)}</strong><small>{ev.actorRole} · {new Date(ev.createdAt).toLocaleString('en-NG')}</small><p>{ev.reason}{ev.message?` · ${ev.message}`:''}</p>{ev.newStatus&&<small>{ev.previousStatus||'New'} → {ev.newStatus}</small>}</div></div>)}</div>
      </>}</section>
    </div>
  </>;
}
