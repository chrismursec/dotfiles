"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[5962],{68359:(e,a,s)=>{s.r(a),s.d(a,{default:()=>Je});var i=s(79474),r=s(9037),l=s(83648),t=s(98891),n=s(12185),o=s(71662),c=s(61115),u=s(95216),d=s(22466),m=s(57122),h=s(57689),g=s(20370),x=s(27513),b=s(33783),j=s(86682),p=s(62914),y=s(21740),f=s(93535),k=s(88140),v=s(73929),C=s(57108),w=s(2255);const R=new C.l("queryAlbumMerch","query","7b258651f4a220aeab4a0573edbd5cf7edd0acfa4d35de2f18b72235e3300ac4",null);var M=s(24191),U=s(59773),I=s(13274);const P=({albumName:e,albumURI:a})=>{const{data:s}=(i={uri:a},r={gcTime:5*w.i},(0,w.I)(R,i,r));var i,r;const l=s?.albumUnion&&"merch"in s.albumUnion?s?.albumUnion?.merch?.items:[];return l&&l?.length>0?(0,I.jsx)("div",{className:"contentSpacing",children:(0,I.jsx)("div",{className:U.A.albumMerch,children:(0,I.jsx)(M.q,{id:e,uri:a,merchItems:l,merchVariant:"Album page merch items"})})}):null};var A=s(82890),N=s(2711),L=s(3341),S=s(80480),z=s(13125),T=s(57134),B=s(40088),_=s(3030),E=s(22929),F=s(5245),D=s(2338),O=s(75152),q=s(906),Q=s(70105),V=s(67683),H=s(51897),W=s(54800),Z=s(82810),J=s(90047),X=s(85809),$=s(91817),K=s(96628),Y=s(42091),G=s(3561),ee=s(56607),ae=s(80156),se=s(5579),ie=s(35281),re=s(60508);const le="album-albumPage-sectionWrapper",te="zddjxV2lX9ukNM5QXloA",ne="lVqlPjQLuQhK2flsxB78",oe="O_EguRjsZ4uI1hHamkOA",ce="jcaQQxoVnuuhtVwDJU1R",ue="x-album-releasesDropdown",de="in4OjUTflcsoj9RUpf05",me="vveb4Rn0dK_r8YUM7L_n",he=i.memo((function({uri:e,togglePlay:a,isPlaying:s,isActive:r,spec:l,logger:t,backgroundColor:n,name:o,artists:c,isPlayable:u,sharingInfo:m}){const h=(0,G.W)(),g=(0,ee.n)(),b=(0,Q.t)(),j=(0,i.useMemo)((()=>l.actionBarFactory()),[l]),[p,y]=(0,Q.A)(e),k=(0,i.useCallback)((()=>{const i=(0,ae.$I)({isPlaying:s,isActive:r,spec:j.playButtonFactory(),logger:t,uri:e});a({loggingParams:i})}),[s,r,a,j,t,e]),v=(0,i.useCallback)((async()=>{let a;const s=j.saveButtonFactory();a=p?s.hitDislike({itemToBeDisliked:e}):s.hitLike({itemToBeLiked:e}),t.logInteraction(a),h({targetUri:e,intent:p?"unsave":"save",type:"click"});try{await y(!p)}catch{}}),[h,e,p,y,j,t]),C=(0,re.X)(),w=(0,Y.j)();return(0,I.jsx)(W.E,{backgroundColor:n,children:(0,I.jsxs)(Z.S,{children:[(0,I.jsx)(f.D,{onClick:k,disabled:!u,isPlaying:s,size:w,uri:e}),C&&(0,I.jsx)(V.r,{spec:j,children:(0,I.jsx)(ie.Y,{entityName:o,contextUri:e,activationPlacement:"bottomEnd",size:w})}),(0,I.jsx)(K.h,{uri:e,action:se.no.SAVE_ALBUM,children:(0,I.jsx)(J.M,{isAdded:!!p,onClick:v,disabled:!g&&!b?.getCapabilities().canModifyOffline,size:w})}),(0,I.jsx)(X.f,{uri:e,isFollowing:!!p,onClick:(a,s)=>(0,ae.Qv)(s,j.downloadButtonFactory(),t,e),onFollow:v,size:w}),(0,I.jsx)(D.b,{onShow:()=>(0,ae.R2)(j,t),menu:(0,I.jsx)(x.h,{uri:e,artistUri:c?.[0]?.uri,sharingInfo:m}),children:(0,I.jsx)($.e,{label:d.Ru.get("more.label.context",o),size:w})}),(0,I.jsx)("div",{className:me,children:(0,I.jsx)(O.u,{property:H.mA,renderNewExperience:()=>(0,I.jsx)(q.g,{options:[],onSelect:()=>{},selected:null,enableViewModeMenu:!0})})})]})})}));var ge=s(60377);const xe=864e5,be=365.25*xe;var je=s(98954),pe=s(16015),ye=s(98475),fe=s(30201),ke=s(77394),ve=s(80236),Ce=s(32733),we=s(27936),Re=s(66853),Me=s(49865),Ue=s(22061),Ie=s(18121),Pe=s(17122),Ae=s(70431);const Ne="TCmZzqInstJMZjkHgnw3",Le="PeNI572tTpqsN23o3QhJ",Se="oUsSfFiifMPXqW0kHjR6",ze="XKvEMQZlPfPncTqiitM5",Te="GdbPVlmUCW0Q6ZZ0z0wh",Be="Hu7O5y7x5c7wUYFbnIoS",_e=i.memo((function(e){const{images:a,title:s,isOpen:r,onClose:l}=e,t=(0,i.useMemo)((()=>(0,Ae.g)(a,{desiredSize:1e4})),[a]);return t?(0,I.jsx)(Ie.A,{className:Ne,isOpen:r,onRequestClose:l,animation:{modal:{base:ze,afterOpen:Te,beforeClose:Be}},animated:!0,children:(0,I.jsxs)("div",{style:{"--image-width":`${t.width}px`,"--image-height":`${t.height}px`},className:Le,children:[(0,I.jsx)(Pe._,{loading:"eager",alt:s,src:t.url,className:Se}),(0,I.jsx)(Ue.H,{onClick:l,semanticColor:"textBase",children:d.Ru.get("web-player.cover-art-modal.close")})]})}):null}));var Ee=s(61444),Fe=s(6174),De=s(89199);const Oe=({releases:e})=>(0,I.jsx)(Fe.W,{children:e.map((e=>(0,I.jsx)(De.D,{role:"menuitem",to:(0,Ee.o_)(e.uri).toURLPath(!0),children:e.name},e.uri)))});var qe=s(43496),Qe=s(65285),Ve=s(35743);const He=i.lazy((()=>s.e(4934).then(s.bind(s,34934))));function We(e){switch(e){case Qe._.Single:return d.Ru.get("single");case Qe._.Ep:return d.Ru.get("ep");case Qe._.Compilation:return d.Ru.get("compilation");case Qe._.Audiobook:return d.Ru.get("card.tag.audiobook");case Qe._.Album:default:return d.Ru.get("album")}}const Ze=({uri:e,album:a})=>{const s=(0,l.zy)(),{spec:y,logger:C,UBIFragment:w}=(0,E.r)(u.E,{data:{uri:e}}),R=(0,i.useMemo)((()=>y.trackListFactory()),[y]),M=(0,i.useMemo)((()=>y.moreByArtistShelfFactory()),[y]),U=a.moreAlbumsByArtist,z=parseInt(new URLSearchParams((0,l.zy)().search).get("index")||"0",10),T=(0,N.J)(e),{usePlayContextItem:D,togglePlay:O,isPlaying:q,isActive:Q}=(0,B.P)({uri:T},{featureIdentifier:"album"}),V=(0,i.useCallback)(((e,a)=>{if(y){const e=y.headerFactory().artistNameFactory().hitUiNavigate({destination:a.creator.uri});C.logInteraction(e)}}),[C,y]),{isOpen:H,openModal:W,closeModal:Z}=(()=>{const[e,a]=(0,i.useState)(!1);return{isOpen:e,openModal:(0,i.useCallback)((()=>a(!0)),[]),closeModal:(0,i.useCallback)((()=>a(!1)),[])}})(),J=(0,c.NC)(Re.WJ1,{loadingValue:!1})?{onClick:W,ariaLabel:d.Ru.get("web-player.album.open_coverart_modal")}:{},X=(0,i.useCallback)((()=>new URLSearchParams(s.search.slice(1)).get("highlight")||""),[s.search]),$=a.uri,K=a.name,Y=a.albumType,G=a.release?.date,ee=a.release?.precision,ae=a.nrTracks,se=a.images,ie=a.extractedColors?.colorRaw.hex,re=a.artists,me=a.isPlayable,Ue=a.isCatalogueRestricted,Ie=a.copyright.items,Pe=a.courtesyLine,Ae=a.duration.durationMs,Ne=a.duration.isEstimate,Le=X(),Se=(0,r.d4)(Me.Ht),ze=Se.overrides?.locale??d.Ru.getLocaleForTranslation(),Te=(0,we.W)({uri:e,type:"locale"}),Be=(0,_.qc)({albumName:K,albumType:Y,albumArtists:re.map((e=>e.name)).join(d.Ru.getSeparator()),shouldLocalize:Te,i18n:d.Ru});(0,L.z6)(ie||null);const Ee=function(e){return(0,i.useMemo)((()=>{if(!e?.date)return null;if("day"===e.precision){const a=new Date(e.date),s=(new Date).getTime()-a.getTime(),i=s%be;return i<3.5*xe||i>312552e5?Math.round(s/be):null}return null}),[e])}(a.release),{isCompactMode:Fe}=(0,A.an)(),De=(0,v.t)();return(0,I.jsxs)("section",{className:le,"data-testid":"album-page",children:[(0,I.jsx)(b.Q,{children:Be}),null!==Ee?(0,I.jsx)(i.Suspense,{fallback:null,children:(0,I.jsx)(He,{colorLight:a?.extractedColors?.colorLight.hex,colorDark:a?.extractedColors?.colorDark.hex,name:K,years:Ee})}):null,(0,I.jsxs)(je.z,{backgroundColor:ie,children:[(0,I.jsxs)(j.h,{children:[(0,I.jsx)(f.D,{size:"medium",onClick:()=>O(),disabled:!me,isPlaying:q,uri:e}),(0,I.jsx)(p.X,{text:K,dragUri:e,dragLabel:K})]}),(0,I.jsx)(g.h,{menu:(0,I.jsx)(x.h,{uri:a.uri,artistUri:re?.[0]?.uri,sharingInfo:a.sharingInfo}),children:(0,I.jsx)(pe.K,{dragUri:$,images:se,name:K,placeholderType:"album",...J})}),(0,I.jsxs)(ye.Y,{children:[(0,I.jsx)(ke.B,{children:We(Y)}),(0,I.jsx)(g.h,{menu:(0,I.jsx)(x.h,{uri:a.uri,artistUri:re?.[0]?.uri,sharingInfo:a.sharingInfo}),children:(0,I.jsx)(ve.mm,{dragUri:a.uri,dragLabel:a.name,scaleAtMinWidth:ve.tw,children:K})}),(0,I.jsx)(fe.t,{creators:re,onCreatorClick:V,releaseDate:G,releaseDatePrecision:ee,totalItems:ae,durationMilliseconds:Ae,isEstimatedDuration:Ne,hasTracks:!0})]})]}),(0,I.jsx)(he,{backgroundColor:ie,uri:e,togglePlay:O,isPlaying:q,isActive:Q,spec:y,logger:C,sharingInfo:a.sharingInfo,name:a.name,artists:a.artists,isPlayable:a.isPlayable}),Ue?(0,I.jsxs)("div",{className:te,children:[(0,I.jsx)(t.E,{as:"h2",variant:"bodyMediumBold",className:ne,children:d.Ru.get("windowed.product-album-header")}),(0,I.jsx)("div",{className:oe,children:d.Ru.get("windowed.product-album-description")})]}):null,(0,I.jsxs)("div",{className:"contentSpacing",children:[(0,I.jsx)(w,{spec:R,children:(0,I.jsx)(k.a,{columns:De,children:(0,I.jsx)(ge.F,{ariaLabel:K,nrTracks:(0,Ve.Y)(a.discs)?a.discs.totalCount+ae:ae,discs:a.discs,albumUri:$,highlightUri:Le,scrollToIndex:z,usePlayContextItem:D,initalTracks:a.items,isCompactMode:Fe})})}),(0,I.jsxs)("div",{className:de,children:[(0,I.jsxs)("div",{children:[G&&(0,I.jsx)(t.E,{as:"p",variant:"bodySmall",children:(0,F.rh)((0,F.ad)(G),ze,{year:"numeric",month:"long",day:"numeric"},ee)}),(0,I.jsx)(S.Z,{copyrights:Ie,courtesyLine:Pe})]}),a.releases.items.length>0&&(0,I.jsx)(h.t,{menu:(0,I.jsx)(Oe,{releases:a.releases.items}),children:(e,s,i)=>(0,I.jsxs)("button",{ref:i,className:ue,type:"button",onClick:s,children:[(0,I.jsx)(t.E,{variant:"bodySmall",children:d.Ru.get("album-page.more-releases",a.releases.items.length)}),e?(0,I.jsx)(n.J,{size:"small"}):(0,I.jsx)(o.y,{size:"small"})]})})]})]}),(0,I.jsx)(P,{albumName:K,albumURI:$}),(0,I.jsx)(I.Fragment,{children:U?.length>0&&(0,I.jsx)("div",{className:"contentSpacing",children:(0,I.jsx)(w,{spec:M,children:(0,I.jsx)(Ce.p,{index:0,id:"more-albums",className:ce,title:d.Ru.get("album-page.more-by-artist",re?.[0]?.name),total:U.length,seeAllUri:`${re?.[0]?.uri.replace("artist","app:artist")}:discography`,seeAllLabel:d.Ru.get("artist-page.show-discography"),alwaysShowSeeAll:!0,children:U.map(((e,a)=>(0,I.jsx)(m.R,{index:a,artists:re,images:e.images||[],name:e.name,uri:e.uri,year:e.year,type:e.albumType,sharingInfo:e.sharingInfo},e.uri)))})})})}),(0,I.jsx)(_e,{title:Be,isOpen:H,onClose:Z,images:se})]})},Je=i.memo((function(){const{albumId:e}=(0,l.g)(),a=`spotify:album:${e}`,{loading:s,error:i,data:r,canLoadOffline:t}=(0,qe.$)(a);return s||!r?(0,I.jsx)(y.A,{hasError:null!==i,loadOffline:t,errorMessage:d.Ru.get("error.not_found.title.album")}):(0,I.jsx)(T.P,{surface:z.u.ALBUM,uris:[a],children:(0,I.jsx)(Ze,{uri:a,album:r})})}))},3341:(e,a,s)=>{s.d(a,{Hk:()=>r.H,z6:()=>i.z});s(98251);var i=s(63479),r=s(42341)}}]);
//# sourceMappingURL=xpui-routes-album.js.map