"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[989],{40989:(e,a,t)=>{t.d(a,{DsaModal:()=>ee});var s=t(79474),i=t(9037),n=t(98891),d=t(18891),l=t(24934),r=t(694),o=t(22466),c=t(84423),m=t(18121),u=t(92980),g=t(93800),E=t(17122),N=t(66758),h=t(78826);const x="vkMQw77rXE4cp8xsAdzl",f="emw6kR941D2wReukhCAJ";var v=t(13274);const T=({advertiser:e,legalEntityName:a})=>{const{item:t}=(0,g.L)()||{item:null},s=t&&(0,N.N)(t)?t?.images:void 0,i=(0,h.h)(s);return(0,v.jsxs)("div",{className:x,children:[i&&(0,v.jsx)(E._,{className:f,src:i,loading:"lazy"}),(0,v.jsx)(n.E,{variant:"bodyMediumBold","aria-label":e,children:e}),a&&(0,v.jsx)(n.E,{variant:"bodySmall",semanticColor:"textSubdued","aria-label":a,children:a})]})};var R=t(425),y=t(96367),b=t(38110);let j=function(e){return e[e.UNKNOWN=0]="UNKNOWN",e[e.AGE=1]="AGE",e[e.GEO=2]="GEO",e[e.GENDER=3]="GENDER",e[e.INTEREST=4]="INTEREST",e[e.UNRECOGNIZED=-1]="UNRECOGNIZED",e}({});const p={fromJSON:e=>({targetingTypes:globalThis.Array.isArray(e?.targetingTypes)?e.targetingTypes.map((e=>function(e){switch(e){case 0:case"UNKNOWN":return j.UNKNOWN;case 1:case"AGE":return j.AGE;case 2:case"GEO":return j.GEO;case 3:case"GENDER":return j.GENDER;case 4:case"INTEREST":return j.INTEREST;default:return j.UNRECOGNIZED}}(e))):[],legalEntityName:A(e.legalEntityName)?globalThis.String(e.legalEntityName):"",showTailoredAdsSection:A(e.showTailoredAdsSection)?Boolean(e.showTailoredAdsSection):void 0}),toJSON(e){const a={};return e.targetingTypes?.length&&(a.targetingTypes=e.targetingTypes.map((e=>function(e){switch(e){case j.UNKNOWN:return"UNKNOWN";case j.AGE:return"AGE";case j.GEO:return"GEO";case j.GENDER:return"GENDER";case j.INTEREST:return"INTEREST";case j.UNRECOGNIZED:default:return"UNRECOGNIZED"}}(e)))),""!==e.legalEntityName&&(a.legalEntityName=e.legalEntityName),void 0!==e.showTailoredAdsSection&&(a.showTailoredAdsSection=e.showTailoredAdsSection),a},create:e=>p.fromPartial(e??{}),fromPartial(e){const a={targetingTypes:[],legalEntityName:"",showTailoredAdsSection:void 0};return a.targetingTypes=e.targetingTypes?.map((e=>e))||[],a.legalEntityName=e.legalEntityName??"",a.showTailoredAdsSection=e.showTailoredAdsSection??void 0,a}};function A(e){return null!=e}const _="khENZvA4G9EjpLQiINss",w="Fu87PEr0tL6oDjmw_X2H",G=({title:e,showTitle:a,children:t})=>(0,v.jsxs)("section",{className:_,children:[a&&(0,v.jsx)(n.E,{className:w,variant:"bodyMediumBold",as:"h3","aria-label":e,children:e}),t]});var S=t(43955);const I="P9gpV_sgryfUERYOdfor",O=({text:e,icon:a})=>(0,v.jsxs)(S.K,{className:I,condensed:!0,children:[a,(0,v.jsx)(n.E,{variant:"bodyMedium","aria-label":e,as:"h4",children:e})]}),C="FB2PxTNhkGbwFwYI2ufG",k="gZYgXNWbFSAAjLzGhOI9",D="eYxzC4s3Nw68RcbK7xzl",B="QrelMvam4WOTMVaO28Rl",U="_EaBFRLKy0nZJXkiRwlx",M="N77hKGzNc_lKQ5OG1EBN",K="JceC3xibcl3MHVULIK0b",F="Uk72m6OFBBdTZ3RJb0K_",L="IFqCps3krPbH25azco3F";const W=({activeTargetingTypes:e})=>{const a=[j.GEO,j.INTEREST].some((a=>e.includes(a)));if(!a)return null;const t=a&&e.some((e=>e===j.AGE||e===j.GENDER));return(0,v.jsx)(G,{title:o.Ru.get("ad-formats.dsa.modal.otherInfo"),showTitle:t,children:(0,v.jsx)(b.b,{className:L,condensedAll:!0,children:e.map((e=>{const a=function(e){switch(e){case j.GEO:return{icon:(0,v.jsx)(R.t,{}),text:o.Ru.get("ad-formats.dsa.modal.targeting.location")};case j.INTEREST:return{icon:(0,v.jsx)(y.T,{}),text:o.Ru.get("ad-formats.dsa.modal.targeting.interests")};default:return null}}(e);return a?(0,v.jsx)(O,{icon:a.icon,text:a.text},e):null}))})})};var z=t(50472),Z=t(25949),J=t(90313),P=t(1059),Y=t(62530),q=t(54452),Q=t(82317);const V=({activeTargetingTypes:e,item:a})=>{const t=(0,u.vh)(),{openURLWithSessionTransfer:s}=(0,Q.L)();return[j.AGE,j.GENDER].some((a=>e.includes(a)))?(0,v.jsxs)(G,{title:o.Ru.get("ad-formats.dsa.modal.profileInfo"),showTitle:!0,children:[(0,v.jsx)(b.b,{className:L,condensedAll:!0,style:{marginBlockEnd:J.CD},children:e.map((e=>{const a=function(e){switch(e){case j.AGE:return{icon:(0,v.jsx)(z.w,{}),text:o.Ru.get("ad-formats.dsa.modal.targeting.age")};case j.GENDER:return{icon:(0,v.jsx)(Z.v,{}),text:o.Ru.get("ad-formats.dsa.modal.targeting.gender")};default:return null}}(e);return a?(0,v.jsx)(O,{icon:a.icon,text:a.text},e):null}))}),(0,v.jsx)(n.E,{variant:"bodyMedium",semanticColor:"textSubdued","aria-label":o.Ru.get("ad-formats.dsa.modal.adRelevancyAction"),children:o.Ru.get("ad-formats.dsa.modal.adRelevancyAction")}),(0,v.jsxs)(P.Y,{component:"button","aria-label":"Edit your Spotify profile, link",className:M,semanticColor:"textBrightAccent",onClick:()=>{s(q.vE),t.send((0,r.m)({ad_id:a.adId,lineitem_id:a.metadata?.lineitem_id,creative_id:a.metadata?.creative_id,slot:a.slot,event:"event_clicked",reason:"edit_profile",surface:"ad_dsa_view"}))},standalone:!0,children:[(0,v.jsx)(n.E,{variant:"bodyMediumBold",as:"h2",children:o.Ru.get("ad-formats.dsa.modal.editProfile")}),(0,v.jsx)(Y.p,{semanticColor:"textBrightAccent"})]})]}):null},X=({item:e})=>{const a=(0,u.vh)(),{openURLWithSessionTransfer:t}=(0,Q.L)();return(0,v.jsxs)(v.Fragment,{children:[(0,v.jsx)("hr",{className:K}),(0,v.jsx)(n.E,{className:F,variant:"titleSmall","aria-label":o.Ru.get("ad-formats.dsa.modal.aboutTailoredAds"),as:"h2",children:o.Ru.get("ad-formats.dsa.modal.aboutTailoredAds")}),(0,v.jsx)(n.E,{variant:"bodyMedium",semanticColor:"textSubdued","aria-label":o.Ru.get("ad-formats.dsa.modal.tailoredAds"),children:o.Ru.get("ad-formats.dsa.modal.tailoredAds")}),(0,v.jsxs)(P.Y,{component:"button","aria-label":"Visit your privacy settings, link",className:M,semanticColor:"textBrightAccent",onClick:()=>{t(`${q.k$}/#tailored-ads`),a.send((0,r.m)({ad_id:e.adId,creative_id:e.metadata?.creative_id,event:"event_clicked",lineitem_id:e.metadata?.lineitem_id,reason:"change_preferences",request_id:e.requestId,slot:e.slot,surface:"ad_dsa_view"}))},standalone:!0,children:[(0,v.jsx)(n.E,{variant:"bodyMediumBold",as:"h2",children:o.Ru.get("ad-formats.dsa.modal.privacySetting")}),(0,v.jsx)(Y.p,{semanticColor:"textBrightAccent"})]})]})};var H=t(93984);const $=e=>{const[a,t]=(0,s.useState)(null),[i,n]=(0,s.useState)(!1);return(0,s.useEffect)((()=>{e?.metadata?.lineitem_id&&e.adId&&(async e=>{try{n(!0);const a=await H.getDsaAdMetadata(e);t(p.fromJSON(a)),n(!1)}catch(e){n(!1)}})({lineitemId:e.metadata.lineitem_id,adId:e.adId})}),[e]),{data:a,loading:i}},ee=({item:e})=>{const a=(0,u.vh)(),t=(0,i.wA)(),{isOpen:g}=(0,i.d4)((e=>e.ui.dsaDialog)),{data:E,loading:N}=$(e);return(0,s.useEffect)((()=>{a.send((0,r.m)({ad_id:e.adId,creative_id:e.metadata?.creative_id,event:"event_viewed",lineitem_id:e.metadata?.lineitem_id,reason:"ad_dsa_view",request_id:e.requestId,slot:e.slot,surface:"ad_dsa_view"}))}),[]),(0,v.jsxs)(m.A,{className:C,isOpen:g,shouldCloseOnEsc:!0,shouldCloseOnOverlayClick:!0,contentLabel:o.Ru.get("ad-formats.dsa.aboutThisAd"),children:[(0,v.jsx)("div",{className:D,children:(0,v.jsx)(n.E,{"aria-label":o.Ru.get("ad-formats.dsa.aboutThisAd"),variant:"titleMedium",as:"h1",children:o.Ru.get("ad-formats.dsa.aboutThisAd")})}),(0,v.jsx)("hr",{className:K}),(0,v.jsx)("div",{className:k,children:N?(0,v.jsx)("div",{className:B,"data-testid":"loading-indicator",children:(0,v.jsx)(d.I,{size:"large"})}):(0,v.jsxs)(v.Fragment,{children:[(0,v.jsx)(T,{advertiser:e.metadata.advertiser,legalEntityName:E?.legalEntityName}),E?.targetingTypes.length?(0,v.jsxs)(v.Fragment,{children:[(0,v.jsx)(n.E,{className:F,variant:"titleSmall",as:"h2","aria-label":o.Ru.get("ad-formats.dsa.modal.adBasedInfoExplanation"),children:o.Ru.get("ad-formats.dsa.modal.adBasedInfoExplanation")}),(0,v.jsx)(V,{item:e,activeTargetingTypes:E?.targetingTypes}),(0,v.jsx)(W,{item:e,activeTargetingTypes:E?.targetingTypes})]}):(0,v.jsx)(n.E,{className:F,as:"h2","aria-label":o.Ru.get("ad-formats.dsa.modal.targeting.unknown"),tabIndex:0,children:o.Ru.get("ad-formats.dsa.modal.targeting.unknown")}),E?.showTailoredAdsSection&&(0,v.jsx)(X,{item:e})]})}),(0,v.jsx)("button",{"aria-label":o.Ru.get("close_button_action"),className:U,onClick:()=>{t((0,c.ft)())},children:(0,v.jsx)(l.M,{size:"medium",semanticColor:"textBase"})})]})}}}]);
//# sourceMappingURL=989.js.map