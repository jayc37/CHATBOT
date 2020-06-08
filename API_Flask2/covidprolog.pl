world(world_statistics(Verbs,Wlaces)) --> ask_first,verbs(Verbs),ask_second,placewsw(Wlaces),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> ask_first,verbs(Verbs),ask_second,placewsw(Wlaces).
world(world_statistics(Verbs,Wlaces)) --> placewsw(Wlaces),ask_first,verbs(Verbs),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> placewsw(Wlaces),ask_first,verbs(Verbs).
world(world_statistics(Verbs,Wlaces)) --> ask_second,placewsw(Wlaces),ask_first,verbs(Verbs).
world(world_statistics(Verbs,Wlaces)) --> ask_second,placewsw(Wlaces),ask_first,verbs(Verbs),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> ask_first,ask_first,verbs(Verbs),ask_second,placewsw(Wlaces),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> ask_first,ask_first,verbs(Verbs),ask_second,ask_second,placewsw(Wlaces),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> ask_first,verbs(Verbs),ask_second,ask_second,placewsw(Wlaces).
world(world_statistics(Verbs,Wlaces)) --> placewsw(Wlaces),ask_first,ask_first,verbs(Verbs),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> placewsw(Wlaces),ask_first,ask_first,verbs(Verbs).
world(world_statistics(Verbs,Wlaces)) --> ask_second,ask_second,placewsw(Wlaces),ask_first,verbs(Verbs).
world(world_statistics(Verbs,Wlaces)) --> ask_second,ask_second,placewsw(Wlaces),ask_first,verbs(Verbs),chamhoi.
world(world_statistics(Verbs,Wlaces)) --> ask_second,ask_second,placewsw(Wlaces),ask_first,ask_first,verbs(Verbs),chamhoi.
placewsw(placewssw(Wlaces)) --> placew(Wlaces).
verbs(verbss(Verbs)) --> verb(Verbs).


statistics(statistics(Verbs,Places)) --> ask_first,ask_first,verbs(Verbs),ask_second,places(Places),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_first,ask_first,verbs(Verbs),ask_second,places(Places).
statistics(statistics(Verbs,Places)) --> ask_first,verbs(Verbs),ask_second,places(Places),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_first,verbs(Verbs),ask_second,places(Places).
statistics(statistics(Verbs,Places)) --> places(Places),ask_first,verbs(Verbs),chamhoi.
statistics(statistics(Verbs,Places)) --> places(Places),ask_first,verbs(Verbs).
statistics(statistics(Verbs,Places)) --> ask_second,places(Places),ask_first,verbs(Verbs).
statistics(statistics(Verbs,Places)) --> ask_second,places(Places),ask_first,verbs(Verbs),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_second,places(Places),ask_first,ask_first,verbs(Verbs),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_second,places(Places),ask_first,ask_first,verbs(Verbs).
statistics(statistics(Verbs,Places)) --> ask_first,ask_first,verbs(Verbs),ask_second,places(Places),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_first,ask_first,verbs(Verbs),ask_second,ask_second,places(Places),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_first,verbs(Verbs),ask_second,ask_second,places(Places).
statistics(statistics(Verbs,Places)) --> places(Places),ask_first,ask_first,verbs(Verbs),chamhoi.
statistics(statistics(Verbs,Places)) --> places(Places),ask_first,ask_first,verbs(Verbs).
statistics(statistics(Verbs,Places)) --> ask_second,ask_second,places(Places),ask_first,verbs(Verbs).
statistics(statistics(Verbs,Places)) --> ask_second,ask_second,places(Places),ask_first,verbs(Verbs),chamhoi.
statistics(statistics(Verbs,Places)) --> ask_second,ask_second,places(Places),ask_first,ask_first,verbs(Verbs),chamhoi.
places(placess(Places)) --> place(Places).
verbs(verbss(Verbs)) --> verb(Verbs).


chamhoi --> [?].
ask_first -->[so].
ask_first -->[nguoi].
ask_first -->[so,nguoi].
ask_first -->[tong].
ask_first -->[cho,toi,hoi].
ask_first -->[cho,hoi].
ask_first --> [co,bao,nhieu].
ask_first --> [bao,nhieu].
ask_first --> [tat,ca].
ask_first -->[truong,hop].
ask_second -->[o].
ask_second -->[trong].
ask_second -->[tai].
ask_second -->[cho].
verb(*) --> [nhiem,benh].
verb(*) --> [da,nhiem].
verb(*) --> [da,nhiem,benh].
verb(*) --> [bi,nhiem,benh].
verb(*) --> [bi,mac,benh].
verb(*) --> [nhiem].
verb(*) --> [nhiem,covid].
verb(*) --> [nhiem,covid19].
verb(*) --> [nhiem,sars2].
verb(*) --> [nhiem,covid-19].
verb(*) --> [nhiem,virus,corona].
verb(*) --> [nhiem,coronavirus].
verb(*) --> [nhiem,corona].
verb(*) --> [tu,vong,vi,covid].
verb(*) --> [chet,vi,covid19].
verb(*) --> [chet,vi,sars2].
verb(*) --> [chet,vi,covid-19].
verb(*) --> [chet,vi,virus,corona].
verb(*) --> [chet,vi,coronavirus].
verb(*) --> [chet,vi,corona].
verb(*) --> [da,chet].
verb(*) --> [tu,vong].
verb(*) --> [chet].
verb(*) --> [da,tu,vong].
verb(*) --> [khong,qua,khoi].
verb(*) --> [mat].
verb(*) --> [nguy,kich].
verb(*) --> [khong,chua,khoi].
verb(*) --> [tu,vong,vi,covid19].
verb(*) --> [da,khoi].
verb(*) --> [da,khoi,benh].
verb(*) --> [da,chua,khoi].
verb(*) --> [da,het,benh].
verb(*) --> [da,het,covid19].
verb(*) --> [da,khoi,covid19].
verb(*) --> [het,benh].
verb(*) --> [khong,con,benh].
verb(*) --> [chua,het,benh].
verb(*) --> [het,nhiem,benh].
verb(*) --> [het,benh,covid19].
verb(*) -->[dang,hoi,phuc].
verb(*) -->[dang,binh,phuc].
verb(*) -->[dang,dieu,tri].
verb(*) -->[tien,trien,tot].
verb(*) -->[hoi,phuc,nhanh].
verb(*) -->[binh,phuc,nhanh].
verb(*) -->[phuc,hoi,tot].
verb(*) -->[dang,phuc,hoi].
verb(*) -->[ca,nhiem,moi].
verb(*) -->[qua,doi].
verb(*) -->[chet,hom,nay].
verb(*) -->[hoi,phuc].
verb(*) -->[binh,phuc].
verb(*) -->[ca,nhiem,hom,nay].
verb(*) -->[ca,nhiem,moi,hom,nay].
verb(*) -->[ca,nhiem,nang].
verb(*) -->[ca,nhiem,nghiem,trong].
verb(*) -->[ca,nhiem,chuyen,bien,xau].
verb(*) -->[so,ca,nhiem,nang].
verb(*) -->[ti,le,mac,benh].
verb(*) -->[ti,le,mac,benh].
placew(usa) -->[usa].
placew(usa) -->[america].
placew(usa) -->[my].
placew(usa) -->[hoa,ky].
placew(china) -->[tq].
placew(china) -->[trung,quoc].
placew(china) -->[chinese].
placew(china) -->[china].
placew(china) -->[tau].
placew(china) -->[trung,hoa].
placew(northamerica) -->[northamerica].
placew(northamerica) -->[north,america].
placew(northamerica) -->[bacmy].
placew(northamerica) -->[bac,my].
placew(europe) -->[europe].
placew(europe) -->[chauau].
placew(europe) -->[eu].
placew(europe) -->[chau,au].
placew(asia) -->[asia].
placew(asia) -->[chaua].
placew(asia) -->[chau,a].
placew(southamerica) -->[southamerica].
placew(southamerica) -->[south,america].
placew(southamerica) -->[nammy].
placew(southamerica) -->[nam,my].
placew(oceania) -->[oceania].
placew(oceania) -->[chaudaiduong].
placew(oceania) -->[chau,dai,duong].
placew(oceania) -->[chau,daiduong].
placew(oceania) -->[daiduong].
placew(oceania) -->[dai,duong].
placew(africa) -->[africa].
placew(africa) -->[chauphi].
placew(africa) -->[chau,phi].
placew(world) -->[world].
placew(world) -->[thegioi].
placew(world) -->[the,gioi].
placew(world) -->[toan,the,gioi].
placew(world) -->[toan,cau].
placew(world) -->[toancau].
placew(spain) -->[taybannha].
placew(spain) -->[tay,ban,nha].
placew(spain) -->[spain].
placew(italy) -->[italy].
placew(italy) -->[y].
placew(france) -->[france].
placew(france) -->[phap].
placew(germany) -->[germary].
placew(germany) -->[duc].
placew(uk) -->[uk].
placew(uk) -->[anhquoc].
placew(uk) -->[anh].
placew(uk) -->[anh,quoc].
placew(uk) -->[vuong,quoc,anh].
placew(turkey) -->[turkey].
placew(turkey) -->[tho,nhi,ky].
placew(turkey) -->[tho,nhiky].
placew(turkey) -->[thonhiky].
placew(iran) -->[iran].
placew(iran) -->[cong,hoa,hoi,giao,iran].
placew(iran) -->[conghoa,hoigiao].
placew(iran) -->[cong,hoa,iran].
placew(russia) -->[russia].
placew(russia) -->[russian].
placew(russia) -->[nga].
placew(russia) -->[lien,bang,nga].
placew(brazil) -->[brazil].
placew(brazil) -->[cong,hoa,lien,bang,brazil].
placew(belgium) -->[belgium].
placew(belgium) -->[bi].
placew(belgium) -->[vuong,quoc,bi].
placew(canada) -->[canada].
placew(canada) -->[ca,na,da].
placew(netherlands) -->[netherlands].
placew(netherlands) -->[halan].
placew(netherlands) -->[ha,lan].
placew(switzerland) -->[switerland].
placew(switzerland) -->[thuysi].
placew(switzerland) -->[thuy,si].
placew(india) -->[india].
placew(india) -->[ando].
placew(india) -->[an,do].
placew(india) -->[an].
placew(ireland) -->[ireland].
placew(ireland) -->[ailen].
placew(ireland) -->[ai,len].
placew(ireland) -->[cong,hoa,ireland].
placew(peru) -->[peru].
placew(peru) -->[conghaperu].
placew(peru) -->[cong,hoa,peru].
placew(portugal) -->[protugal].
placew(portugal) -->[bo,dao,nha].
placew(portugal) -->[bodaonha].
placew(sweden) -->[sweden].
placew(sweden) -->[thuydien].
placew(sweden) -->[thuy,dien].
placew(austria) -->[austria].
placew(austria) -->[ao].
placew(austria) -->[cong,hoa,ao].
placew(israel) -->[israel].
placew(saudiarabia) -->[saudiarabia].
placew(saudiarabia) -->[a,rap,xe,ut].
placew(saudiarabia) -->[a,rap].
placew(saudiarabia) -->[arap].
placew(japan) -->[japan].
placew(japan) -->[nhatban].
placew(japan) -->[nhat,ban].
placew(japan) -->[nhat].
placew(singapore) -->[singapore].
placew(singapore) -->[sing].
placew(singapore) -->[sing,ga,po].
placew(chile) -->[chile].
placew(chile) -->[chi,le].
placew(mexico) -->[mexico].
placew(mexico) -->[me,xi,co].
placew(ecuador) -->[ecuador].
placew(ecuador) -->[e,cu,a,do].
placew(pakistan) -->[pakistan].
placew(pakistan) -->[pa,ki,tan].
placew(poland) -->[poland].
placew(poland) -->[ba,lan].
placew(poland) -->[balan].
placew(skorea) -->[skorea].
placew(skorea) -->[southkorea].
placew(skorea) -->[south,korea].
placew(skorea) -->[korea].
placew(skorea) -->[hanquoc].
placew(skorea) -->[han,quoc].
placew(skorea) -->[han].
placew(romania) -->[romania].
placew(romania) -->[ru,man,ni].
placew(uae) -->[uae].
placew(uae) -->[cac,tieu,vuong,quoc,a,rap,thong,nhat].
placew(uae) -->[a,rap,thong,nhat].
placew(qatar) -->[qatar].
placew(qatar) -->[ca,ta].
placew(indonesia) -->[indonesia].
placew(indonesia) -->[in,do,ne,xi,a].
placew(indonesia) -->[indo].
placew(indonesia) -->[in,do].
placew(denmark) -->[denmark].
placew(denmark) -->[danmach].
placew(denmark) -->[dan,mach].
placew(belarus) -->[belarus].
placew(belarus) -->[be,la,rut].
placew(ukraine) -->[ukraine].
placew(ukraine) -->[u,crai,na].
placew(norway) -->[norway].
placew(norway) -->[nauy].
placew(norway) -->[na,uy].
placew(serbia) -->[serbia].
placew(serbia) -->[sec,bi].
placew(philippines) -->[philippines].
placew(philippines) -->[phi,lip,pin].
placew(czechia) -->[czechia].
placew(czechia) -->[sec].
placew(czechia) -->[cong,hoa,sec].
placew(australia) -->[australia].
placew(australia) -->[uc].
placew(australia) -->[lien,bang,uc].
placew(malaysia) -->[malaysia].
placew(malaysia) -->[ma,lai,si,a].
placew(malaysia) -->[ma,lai].
placew(malaysia) -->[malai].
placew(australia) -->[australia].
placew(australia) -->[uc].
placew(australia) -->[lien,bang,uc].
placew(dominicanrepublic) -->[dominicanrepublic].
placew(dominicanrepublic) -->[cong,hoa,dominica].
placew(dominicanrepublic) -->[dominica].
placew(panama) -->[panama].
placew(panama) -->[pa,na,ma].
placew(bangladesh) -->[bangladesh].
placew(bangladesh) -->[bang,la,det].
placew(colombia) -->[colombia].
placew(colombia) -->[co,lom,bi,a].
placew(colombia) -->[cong,hoa,columbia].
placew(finland) -->[finland].
placew(finland) -->[phan,lan].
placew(finland) -->[phanlan].
placew(southafrica) -->[southafrica].
placew(southafrica) -->[namphi].
placew(southafrica) -->[nam,phi].
placew(egypt) -->[egypt].
placew(egypt) -->[ai,cap].
placew(egypt) -->[aicap].
placew(morocco) -->[morocco].
placew(morocco) -->[maroc].
placew(morocco) -->[ma,roc].
placew(luxembourg) -->[luxembourg].
placew(luxembourg) -->[luc,xam,bua].
placew(argentina) -->[argentina].
placew(australia) -->[ac,hen,ti,na].
placew(algeria) -->[algeria].
placew(algeria) -->[an,gie,ri].
placew(moldova) -->[moldova].
placew(moldova) -->[mon,do,va].
placew(thailand) -->[thailand].
placew(thailand) -->[thai,lan].
placew(thailand) -->[thailan].
placew(thailand) -->[thai].
placew(kuwait) -->[kuwait].
placew(greece) -->[greece].
placew(greece) -->[hilap].
placew(greece) -->[hi,lap].
placew(hungary) -->[hungary].
placew(hungary) -->[hung,ga,ri].
placew(hungary) -->[hungari].
placew(kazakhstan) -->[kazakhstan].
placew(kazakhstan) -->[cadacxtan].
placew(kazakhstan) -->[ca,dac,xtan].
placew(bahrain) -->[bahrain].
placew(bahrain) -->[baranh].
placew(bahrain) -->[ba,ranh].
placew(croatia) -->[croatia].
placew(croatia) -->[cro,a,ti,a].
placew(oman) -->[oman].
placew(oman) -->[o,man].
placew(iceland) -->[iceland].
placew(iceland) -->[aixolen].
placew(iceland) -->[ai,xo,len].
placew(uzbekistan) -->[uzbekistan].
placew(uzbekistan) -->[u,do,be,ki,xta].
placew(uzbekistan) -->[udobekixtan].
placew(iraq) -->[iraq].
placew(iraq) -->[irac].
placew(iraq) -->[i,rac].
placew(estonia) -->[estonia].
placew(estonia) -->[e,xto,ni,a].
placew(estonia) -->[extonia].
placew(armenia) -->[acmenia].
placew(armenia) -->[ac,men,ni,a].
placew(azerbaijan) -->[azerbaijan].
placew(azerbaijan) -->[a,dec,bai,dan].
placew(azerbaijan) -->[adecbaidan].
placew(newzealand) -->[newzealand].
placew(newzealand) -->[niu,di,lan].
placew(newzealand) -->[niudilan].
placew(cameroon) -->[cameroon].
placew(cameroon) -->[camorun].
placew(cameroon) -->[ca,mo,run].
placew(bosniaandherzegovina) -->[bosniaandherzegovina].
placew(bosniaandherzegovina) -->[bo,xi,a,hec,de,go,vi,na].
placew(bosniaandherzegovina) -->[boxiahecdegovina].
placew(lithuania) -->[lithuania].
placew(lithuania) -->[lit,va].
placew(lithuania) -->[litva].
placew(slovenia) -->[slovenia].
placew(slovenia) -->[xlo,ven,ni,a].
placew(slovenia) -->[xlovenia].
placew(slovakia) -->[slovakia].
placew(slovakia) -->[xlo,va,ki,a].
placew(slovakia) -->[xlovakia].
placew(afghanistan) -->[afghanistan].
placew(afghanistan) -->[ap,ga,ni,xtan].
placew(afghanistan) -->[apganixtan].
placew(northmacedonia) -->[northmacedonia].
placew(northmacedonia) -->[north,macedonia].
placew(northmacedonia) -->[bac,macedonia].
placew(cuba) -->[cuba].
placew(cuba) -->[cu,ba].
placew(bulgaria) -->[bulgaria].
placew(australia) -->[bungari].
placew(australia) -->[bun,ga,ri].
placew(ghana) -->[ghana].
placew(ghana) -->[gha,na].
placew(hongkong) -->[hong,kong].
placew(hongkong) -->[hongkong].
placew(ivorycoast) -->[ivorycoast].
placew(ivorycoast) -->[bobiennga].
placew(ivorycoast) -->[bo,bien,nga].
placew(ivorycoast) -->[cot,di,voa].
placew(ivorycoast) -->[cotdivoa].
placew(djibouti) -->[djibouti].
placew(djibouti) -->[cong,hoa,gi,bu,ti].
placew(djibouti) -->[cong,hoa,gibuti].
placew(nigeria) -->[nigeria].
placew(nigeria) -->[nigieria].
placew(nigeria) -->[ni,gie,ri,a].
placew(tunisia) -->[tunisia].
placew(tunisia) -->[tuynidi].
placew(tunisia) -->[tuy,ni,di].
placew(guinea) -->[guinea].
placew(cyprus) -->[cyprus].
placew(cyprus) -->[dapsip].
placew(cyprus) -->[dao,sip].
placew(latvia) -->[latvia].
placew(latvia) -->[lat,vi,a].
placew(andorra) -->[andorra].
placew(diamondprincess) -->[diamondprincess].
placew(diamondprincess) -->[diamond,princess].
placew(bolivia) -->[bolivia].
placew(bolivia) -->[bo,li,vi,a].
placew(lebanon) -->[lebanon].
placew(lebanon) -->[libang].
placew(lebanon) -->[li,bang].
placew(costarica) -->[costarica].
placew(costarica) -->[cotxtarica].
placew(costarica) -->[cot,xta,ri,ca].
placew(albania) -->[albania].
placew(albania) -->[an,ba,ni].
placew(albania) -->[anbani].
placew(niger) -->[niger].
placew(niger) -->[nigie].
placew(niger) -->[ni,gie].
placew(kyrgyzstan) -->[kyrgyzstan].
placew(kyrgyzstan) -->[cu,ro,gu,do,xtan].
placew(kyrgyzstan) -->[curogudoxtan].
placew(burkinafaso) -->[burkinafaso].
placew(burkinafaso) -->[buoc,ki,na,pha,xo].
placew(burkinafaso) -->[buockinaphaxo].
placew(honduras) -->[honduras].
placew(honduras) -->[hon,du,rat].
placew(honduras) -->[hondurat].
placew(uruguay) -->[uruguay].
placew(uruguay) -->[u,ru,goay].
placew(uruguay) -->[urugoay].
placew(senegal) -->[senegal].
placew(senegal) -->[se,ne,gan].
placew(senegal) -->[senegan].
placew(channelislands) -->[channelislands].
placew(channelislands) -->[channel,islands].
placew(channelislands) -->[quan,dao,eo,bien].
placew(channelislands) -->[quandaoeobien].
placew(sanmarino) -->[sanmarino].
placew(sanmarino) -->[san,ma,ri,no].
placew(sanmarino) -->[sanmarino].
placew(palestine) -->[palestine].
placew(palestine) -->[pa,le,xtin].
placew(palestine) -->[palextin].
placew(malta) -->[malta].
placew(malta) -->[man,man,ta,ta].
placew(malta) -->[manmantata].
placew(jordan) -->[jordan].
placew(jordan) -->[giooc,dan].
placew(jordan) -->[gioocdan].
placew(jordan) -->[vuong,quoc,hashemite,jordan].
placew(jordan) -->[vuongquochashemitejordan].
placew(georgia) -->[georgia].
placew(taiwan) -->[taiwan].
placew(taiwan) -->[dailoan].
placew(taiwan) -->[dai,loan].
placew(runion) -->[runion].
placew(runion) -->[re,u,nien].
placew(runion) -->[reunien].
placew(drc) -->[drc].
placew(drc) -->[cong,hoa,dan,chu,congo].
placew(drc) -->[conghoadanchucongo].
placew(guatemala) -->[guatemala].
placew(guatemala) -->[goa,te,ma,la].
placew(guatemala) -->[goatemala].
placew(srilanka) -->[srilanka].
placew(srilanka) -->[xri,lan,ca].
placew(srilanka) -->[xrilanca].
placew(mayotte) -->[mayotte].
placew(mauritius) -->[mo,ri,xo].
placew(mauritius) -->[mauritius].
placew(mauritius) -->[morixo].
placew(somalia) -->[somalia].
placew(somalia) -->[xo,ma,li].
placew(somalia) -->[xomali].
placew(kenya) -->[kenya].
placew(kenya) -->[ke,ni,a].
placew(kenya) -->[kenia].
placew(montenegro) -->[montenegro].
placew(montenegro) -->[mon,te,ne,gro].
placew(venezuela) -->[venezuela].
placew(venezuela) -->[veneduela].
placew(venezuela) -->[ve,ne,du,e,la].
placew(mali) -->[mali].
placew(mali) -->[ma,li].
placew(isleofman) -->[isleofman].
placew(australia) -->[isle,of,man].
placew(tanzania) -->[tanzania].
placew(tanzania) -->[tan,da,ni,a].
placew(tanzania) -->[tandania].
placew(vietnam) -->[vietnam].
placew(vietnam) -->[viet,nam].
placew(vietnam) -->[vietnamese].
placew(elsalvador) -->[elsalvador].
placew(elsalvador) -->[en,xan,va,do].
placew(elsalvador) -->[enxanvado].
placew(jamaica) -->[jamaica].
placew(jamaica) -->[gia,mai,ca].
placew(jamaica) -->[giamaica].
placew(paraguay) -->[pa,ra,goay].
placew(paraguay) -->[paraguay].
placew(paraguay) -->[paragoay].
placew(faeroeislands) -->[faeroeislands].
placew(faeroeislands) -->[quan,dao,fa,ro].
placew(faeroeislands) -->[quandaofaro].
placew(congo) -->[congo].
placew(congo) -->[cong,go].
placew(sudan) -->[sudan].
placew(sudan) -->[xu,dang].
placew(sudan) -->[xudang].
placew(martinique) -->[martinique].
placew(gabon) -->[gabon].
placew(gabon) -->[ga,bong].
placew(gabon) -->[gabong].
placew(rwanda) -->[rwanda].
placew(rwanda) -->[ru,an,da].
placew(rwanda) -->[ruanda].
placew(guadeloupe) -->[guadeloupe].
placew(guadeloupe) -->[goa,de,lop].
placew(guadeloupe) -->[goadelop].
placew(myanmar) -->[myanmar].
placew(myanmar) -->[mi,an,ma].
placew(myanmar) -->[mianma].
placew(brunei) -->[brunei].
placew(brunei) -->[bru,nay].
placew(brunei) -->[brunay].
placew(gibraltar) -->[gibraltar].
placew(cambodia) -->[cambodia].
placew(cambodia) -->[cam,pu,chia].
placew(cambodia) -->[campuchia].
placew(madagascar) -->[madagascar].
placew(madagascar) -->[ma,da,gat,xca].
placew(madagascar) -->[madagatxca].
placew(liberia) -->[liberia].
placew(kenya) -->[li,be,ri,a].
placew(kenya) -->[libelia].
placew(ethiopia) -->[ethiopia].
placew(ethiopia) -->[e,ti,o,pi,a].
placew(ethiopia) -->[etiopia].
placew(maldives) -->[maldives].
placew(maldives) -->[man,di,vo].
placew(maldives) -->[mandivo].
placew(trinidadandtobago) -->[trinidadandtobago].
placew(trinidadandtobago) -->[trinidad,and,tobago].
placew(trinidadandtobago) -->[tri,ni,dat,va,to,ba,go].
placew(trinidadandtobago) -->[trinidatvatobago].
placew(frenchguiana) -->[frenchguiana].
placew(frenchguiana) -->[french,guiana].
placew(frenchguiana) -->[guy,an].
placew(frenchguiana) -->[guyan].
placew(aruba) -->[aruba].
placew(aruba) -->[a,ru,ba].
placew(bermuda) -->[bermuda].
placew(bermuda) -->[bec,mu,da].
placew(bermuda) -->[becmuda].
placew(monaco) -->[monaco].
placew(monaco) -->[mo,na,co].
placew(togo) -->[togo].
placew(togo) -->[to,go].
placew(equatorialguinea) -->[equatorialguinea].
placew(equatorialguinea) -->[ghi,le,xich,dao].
placew(equatorialguinea) -->[ghilexichdao].
placew(equatorialguinea) -->[ghile,xichdao].
placew(sierraleone) -->[sierraleo].
placew(sierraleone) -->[si,e,ra,le,on].
placew(sierraleone) -->[sieraleon].
placew(caboverde) -->[caboverde].
placew(caboverde) -->[cap,ve].
placew(caboverde) -->[capve].
placew(liechtenstein) -->[liechtenstein].
placew(liechtenstein) -->[lit,ten,xo,ten].
placew(liechtenstein) -->[littenxoten].
placew(barbados) -->[barbados].
placew(barbados) -->[bac,ba,dot].
placew(barbados) -->[bacbadot].
placew(zambia) -->[zambia].
placew(zambia) -->[dam,bi,a].
placew(zambia) -->[dambia].
placew(uganda) -->[uganda].
placew(kenya) -->[u,gan,da].
placew(sintmaarten) -->[sintmaarten].
placew(sintmaarten) -->[xin,ma,ten].
placew(bahamas) -->[bahamas].
placew(haiti) -->[haiti].
placew(haiti) -->[ha,i,ti].
placew(guyana) -->[guyana].
placew(guyana) -->[guy,a,na].
placew(caymanislands) -->[caymanislands].
placew(caymanislands) -->[cayman,islands].
placew(caymanislands) -->[quandaocayman].
placew(caymanislands) -->[quandao,cayman].
placew(libya) -->[libya].
placew(libya) -->[libi].
placew(libya) -->[li,bi].
placew(frenchpolynesia) -->[frenchpolynesia].
placew(frenchpolynesia) -->[french,polynesia].
placew(frenchpolynesia) -->[polinedia].
placew(frenchpolynesia) -->[po,li,ne,di,a].
placew(benin) -->[benin].
placew(benin) -->[be,nang].
placew(benin) -->[benang].
placew(guineabissau) -->[guineabissau].
placew(guineabissau) -->[guinea,bissau].
placew(guineabissau) -->[ghi,ne,bit,xao].
placew(guineabissau) -->[ghine,bitxao].
placew(guineabissau) -->[ghinebitxao].
placew(nepal) -->[nepal].
placew(nepal) -->[ne,pan].
placew(nepal) -->[nepan].
placew(mozambique) -->[mozambique].
placew(mozambique) -->[mo,dam,bich].
placew(mozambique) -->[modambich].
placew(macao) -->[macao].
placew(macao) -->[ma,cao].
placew(syria) -->[xy,ri].
placew(syria) -->[syria].
placew(syria) -->[xyri].
placew(chad) -->[chad].
placew(chad) -->[sat].
placew(eritrea) -->[eritrea].
placew(eritrea) -->[e,ri,to,re,a].
placew(eritrea) -->[eritorea].
placew(saintmartin) -->[saintmartin].
placew(saintmartin) -->[saint,martin].
placew(eswatini) -->[eswatini].
placew(eswatini) -->[xoa,di,len].
placew(eswatini) -->[xoadilen].
placew(mongolia) -->[mongolia].
placew(mongolia) -->[mongco].
placew(mongolia) -->[mong,co].
placew(malawi) -->[malawi].
placew(malawi) -->[ma,la,uy].
placew(malawi) -->[malauy].
placew(zimbabwe) -->[zimbabwe].
placew(zimbabwe) -->[dimbabue].
placew(zimbabwe) -->[dim,ba,u,e].
placew(angola) -->[angola].
placew(angola) -->[ang,go,la].
placew(antiguaandbarbuda) -->[antiguaandbarbuda].
placew(antiguaandbarbuda) -->[antigua,and,barbuda].
placew(antiguaandbarbuda) -->[an,gi,gua,va,ba,du,da].
placew(antiguaandbarbuda) -->[angigua,va,baduda].
placew(antiguaandbarbuda) -->[angiguavabaduda].
placew(timorleste) -->[tomorleste].
placew(timorleste) -->[tomor,leste].
placew(timorleste) -->[dong,ti,mo].
placew(timorleste) -->[dongtimo].
placew(botswana) -->[botswana].
placew(botswana) -->[bot,xoa,na].
placew(botswana) -->[botxoana].
placew(laos) -->[laos].
placew(laos) -->[lao].
placew(belize) -->[belize].
placew(belize) -->[be,li,xe].
placew(belize) -->[belixe].
placew(fiji) -->[fiji].
placew(fiji) -->[phi,gi].
placew(fiji) -->[phigi].
placew(newcaledonia) -->[newcaledonia].
placew(newcaledonia) -->[new,caledonia].
placew(newcaledonia) -->[tan,ca,le,do,ni,a].
placew(newcaledonia) -->[tan,caledonia].
placew(car) -->[car].
placew(car) -->[cong,hoa,trung,phi].
placew(car) -->[conghoa,trungphi].
placew(car) -->[conghoatrungphi].
placew(dominica) -->[dominica].
placew(dominica) -->[dominicana].
placew(dominica) -->[do,mi,ni,ca,na].
placew(namibia) -->[namibia].
placew(namibia) -->[nam,mi,bi,a].
placew(namibia) -->[nammibia].
placew(grenada) -->[grenada].
placew(grenada) -->[gre,na,da].
placew(saintkittsandnevis) -->[saintkittsandnevis].
placew(saintkittsandnevis) -->[saint,kitts,and,nevis].
placew(saintkittsandnevis) -->[xanh,kit,va,ne,vi].
placew(saintkittsandnevis) -->[xanhkit,va,nevi].
placew(saintkittsandnevis) -->[xanhkitvanevi].
placew(saintlucia) -->[saintlucia].
placew(saintlucia) -->[xanh,lu,xi,a].
placew(saintlucia) -->[xanhluxia].
placew(curaao) -->[curaao].
placew(curaao) -->[cu,ra,xao].
placew(curaao) -->[curaxao].
placew(stvincentgrenadines) -->[stvincentgrenadines].
placew(kenya) -->[stvincent,grenadines].
placew(kenya) -->[xanh,vin,xen,va,gie,na,din].
placew(kenya) -->[xanhvinxen,va,gienadin].
placew(kenya) -->[xanhvinxenvagienadin].
placew(falklandislands) -->[falkandislands].
placew(falklandislands) -->[falk,and,islands].
placew(falklandislands) -->[quan,dao,fooc,lan].
placew(falklandislands) -->[quandao,fooclan].
placew(falklandislands) -->[quandaofooclan].
placew(nicaragua) -->[nicaragua].
placew(nicaragua) -->[ni,ca,ra,goa].
placew(nicaragua) -->[nicaragoa].
placew(burundi) -->[burundi].
placew(kenya) -->[bu,run,di].
placew(turksandcaicos) -->[turksandcaicos].
placew(kenya) -->[turks,and,caicos].
placew(kenya) -->[quan,dao,turks,va,caicos].
placew(kenya) -->[quandao,turks,va,caicos].
placew(kenya) -->[quandao,turksvacaicos].
placew(kenya) -->[quandaoturksvacaicos].
placew(greenland) -->[greenland].
placew(greenland) -->[grin,len].
placew(greenland) -->[grinlen].
placew(montserrat) -->[montserrat].
placew(montserrat) -->[mon,se,rat].
placew(montserrat) -->[monserat].
placew(seychelles) -->[seychelles].
placew(seychelles) -->[xay,sen].
placew(seychelles) -->[xaysen].
placew(gambia) -->[gambia].
placew(kenya) -->[gam,bi,a].
placew(suriname) -->[suriname].
placew(suriname) -->[xu,ri,nam].
placew(suriname) -->[xurinam].
placew(mszaandam) -->[mszaandam].
placew(mszaandam) -->[ms,zaandam].
placew(vaticancity) -->[vanticancity].
placew(vaticancity) -->[vantican,city].
placew(vaticancity) -->[van,ti,can,city].
placew(vaticancity) -->[thanh,van,ti,can].
placew(papuanewguinea) -->[papuanewguinea].
placew(papuanewguinea) -->[papua,new,guinea].
placew(papuanewguinea) -->[papuanew,guinea].
placew(papuanewguinea) -->[papua,newguinea].
placew(mauritania) -->[mauritania].
placew(mauritania) -->[mo,ri,ta,ni].
placew(mauritania) -->[moritani].
placew(bhutan) -->[bhutan].
placew(bhutan) -->[butan].
placew(bhutan) -->[bu,tan].
placew(stbarth) -->[stbarth].
placew(stbarth) -->[st,barth].
placew(stbarth) -->[xanh,ba,the,le,my].
placew(stbarth) -->[xanhbathelemy].
placew(stbarth) -->[xanh,bathelemy].
placew(westernsahara) -->[westernsahara].
placew(westernsahara) -->[western,sahara].
placew(westernsahara) -->[tay,sahara].
placew(westernsahara) -->[taysahara].
placew(britishvirginislands) -->[britishvirginislands].
placew(britishvirginislands) -->[british,virgin,islands].
placew(britishvirginislands) -->[quan,dao,vo,gin,ni,a,thuoc,anh].
placew(britishvirginislands) -->[quandao,vo,gin,ni,a,thuoc,anh].
placew(britishvirginislands) -->[quandao,vo,gin,ni,a,thuocanh].
placew(britishvirginislands) -->[quandaovoginniathuocanh].
placew(caribbeannetherlands) -->[caribbeannetherlands].
placew(caribbeannetherlands) -->[caribbean,netherlands].
placew(caribbeannetherlands) -->[caribe,ha,lan].
placew(caribbeannetherlands) -->[caribe,halan].
placew(caribbeannetherlands) -->[caribehalan].
placew(southsudan) -->[southsudan].
placew(southsudan) -->[south,sudan].
placew(southsudan) -->[nam,xu,dang].
placew(southsudan) -->[namxudang].
placew(southsudan) -->[nam,xudang].
placew(saotomeandprincipe) -->[saotomeandprincipe].
placew(saotomeandprincipe) -->[sao,tome,and,principe].
placew(saotomeandprincipe) -->[sao,tome,va,principe].
placew(anguilla) -->[anguilla].
placew(anguilla) -->[an,gui,la].
placew(anguilla) -->[anguila].
placew(saintpierremiquelon) -->[saintpierremiquelon].
placew(saintpierremiquelon) -->[saint,pierre,miquelon].
placew(yemen) -->[yemen].
placew(kenya) -->[y,e,men].

aboutcovid19(covid(Covidid)) -->aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->aboutcovid(Covidid),lagi.
aboutcovid19(covid(Covidid)) -->lagi,aboutcovid(Covidid),lagi.
aboutcovid19(covid(Covidid)) -->lagi,lagi,aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->lagi,lagi,aboutcovid(Covidid),lagi.
aboutcovid19(covid(Covidid)) -->lagi,aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->benhdich,aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->benhdich,aboutcovid(Covidid),lagi.
aboutcovid19(covid(Covidid)) -->lagi,benhdich,aboutcovid(Covidid),lagi.
aboutcovid19(covid(Covidid)) -->lagi,benhdich,lagi,aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->lagi,lagi,benhdich,aboutcovid(Covidid),lagi.
aboutcovid19(covid(Covidid)) -->lagi,benhdich,aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->aboutcovid(Covidid),binhiembenh.
aboutcovid19(covid(Covidid)) -->binhiembenh,aboutcovid(Covidid),binhiembenh.
aboutcovid19(covid(Covidid)) -->binhiembenh,aboutcovid(Covidid).
aboutcovid19(covid(Covidid)) -->aboutcovid(Covidid),chamhoi.
aboutcovid19(covid(Covidid)) -->aboutcovid(Covidid),lagi,chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,aboutcovid(Covidid),lagi,chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,lagi,aboutcovid(Covidid),chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,lagi,aboutcovid(Covidid),lagi,chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,aboutcovid(Covidid),chamhoi.
aboutcovid19(covid(Covidid)) -->benhdich,aboutcovid(Covidid),chamhoi.
aboutcovid19(covid(Covidid)) -->benhdich,aboutcovid(Covidid),lagi,chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,benhdich,aboutcovid(Covidid),lagi,chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,benhdich,lagi,aboutcovid(Covidid),chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,lagi,benhdich,aboutcovid(Covidid),lagi,chamhoi.
aboutcovid19(covid(Covidid)) -->lagi,benhdich,aboutcovid(Covidid),chamhoi.
aboutcovid19(covid(Covidid)) -->aboutcovid(Covidid),binhiembenh,chamhoi.
aboutcovid19(covid(Covidid)) -->binhiembenh,aboutcovid(Covidid),binhiembenh,chamhoi.
aboutcovid19(covid(Covidid)) -->binhiembenh,aboutcovid(Covidid),chamhoi.

aboutcovid(cov(Covidid))--> cov_v(Covidid).
lagi -->[la,gi].
lagi -->[la,cai,gi].
lagi -->[dinh,nghia].
lagi -->[khai,niem].
lagi -->[cho,toi,hoi].
lagi -->[nhu,the,nao].
lagi -->[cho,hoi].
lagi -->[thong,tin].
lagi -->[hoi,ve].
lagi -->[toi,muon,hoi,ve].
lagi -->[cho,toi,biet].
lagi -->[cho,biet].
lagi -->[cho,toi,biet].
lagi -->[ve].
lagi -->[nhung,dieu].
lagi -->[co,ban].
lagi -->[can,ban].
lagi -->[nen,lam,gi].
lagi -->[nen,lam,gi,de].
lagi -->[can,lam,gi,de].
lagi -->[can,lam,gi].
lagi -->[cho,loi,khuyen].
lagi -->[loi,khuyen].

benhdich -->[dai,dich].
benhdich -->[benh,dich].
benhdich -->[dich,benh].
benhdich -->[dich].
benhdich -->[benh].
benhdich -->[benh,truyen,nhiem].
benhdich -->[dai,dich,toan,cau].
benhdich -->[dich,benh,toan,cau].
benhdich -->[dai,dich,benh,toan,cau].
benhdich -->[covid-19].
binhiembenh -->[bi,nhiem,benh].
binhiembenh -->[da,nhiem,benh].
binhiembenh -->[da,mac,benh].
binhiembenh -->[da,mac,benh,dich].
binhiembenh -->[da,mac,benh,corona].
binhiembenh -->[da,mac,benh,dich,covid-19].
binhiembenh -->[da,mac,benh,dich,covid19].
binhiembenh -->[bi,lay,nhiem].
binhiembenh -->[lay,nhiem].
cov_v(1) --> [coronavirus].
cov_v(1) --> [corona].
cov_v(1) --> [virus,corona].
cov_v(1) --> [corona,virus].
cov_v(1) --> [covid-19].
cov_v(1) --> [covid19].
cov_v(1) --> [covid].
cov_v(1) --> [virus,sars-cov-2].
cov_v(1) --> [sars-cov-2].
cov_v(1) --> [sars2].
cov_v(1) --> [virus,sars2].
cov_v(1) --> [ncov].
cov_v(1) --> [ncov2].
cov_v(2) --> [lam,the,nao,de,toi,biet,toi].
cov_v(2) --> [cach,nhan,biet,ban,than].
cov_v(2) --> [cach,nhan,biet,minh].
cov_v(2) --> [cach,nhan,biet].

cov_v(3) --> [kho,tho].
cov_v(3) --> [tho,kho].
cov_v(3) --> [tho,khong,duoc].
cov_v(3) --> [khong,tho,duoc].
cov_v(3) --> [trieu,chung,kho,tho].
cov_v(4) --> [nhung,nhom,dan,cu,nao,co,nguy,co,cao,nhat].
cov_v(4) --> [nhung,nhom,dan,cu,nao,co,nguy,co].
cov_v(4) --> [nhung,nguoi,nao,co,nguy,co,cao,nhat].
cov_v(4) --> [nhom,dan,cu,nao,co,nguy,co,cao,nhat].
cov_v(4) --> [nhom,dan,cu,co,nguy,co,cao,nhat].
cov_v(4) --> [nhom,dan,cu,de,bi].
cov_v(4) --> [ai,de,bi].
cov_v(4) --> [nhung,ai,de,bi].

cov_v(5) --> [covid-19,lay,truyen,nhu,the,nao].
cov_v(5) --> [co,che,lay,lan].
cov_v(5) --> [co,che,lay,lan,covid].
cov_v(5) --> [co,che,lay,truyen].
cov_v(5) --> [co,che,truyen,nhiem].
cov_v(5) --> [co,che,lay,truyen,cua,covid-19].
cov_v(5) --> [sars-cov-2,lay,truyen,nhu,the,nao].
cov_v(5) --> [sars-cov-2,lay,truyen,nhu,the,nao].
cov_v(5) --> [sars-cov-2,co,co,che,lay,truyen].
cov_v(5) --> [sars-cov-2,co,co,che,lay,truyen,nhu,the,nao].

cov_v(6) --> [co,che,xam,nhap,vao,co,the,con,nguoi].
cov_v(6) --> [co,che,xam,nhap,vao,co,the,con,nguoi,cua,covid-19].
cov_v(6) --> [co,che,xam,nhap,vao,co,the].
cov_v(6) --> [co,che,xam,nhap,vao,co,the,cua,covid-19].
cov_v(6) --> [virus,xam,nhap,vao,co,the,con,nguoi,nhu,the,nao].
cov_v(6) --> [virus,xam,nhap,vao,co,the,nhu,the,nao].
cov_v(6) --> [virus,corona,xam,nhap,vao,co,the,con,nguoi,bang,cach,nao].
cov_v(6) --> [co,che,hoat,dong,trong,co,the,cua,covid-19].
cov_v(6) --> [dieu,gi,se,xay,ra,khi,virus,xam,nhap,vao,co,the].
cov_v(6) --> [co,che,hoat,dong,cua,virus,sau,khi,xam,nhap,vao,co,the].
cov_v(6) --> [co,che,hoat,dong,cua,virus].

cov_v(7) --> [con,ve,kha,nang,mien,dich,voi,coronavirus,thi,sao].
cov_v(7) --> [con,nguoi,co,kha,nang,mien,dich,voi,coronavirus,khong].
cov_v(7) --> [con,nguoi,co,kha,nang,mien,dich,voi,coronavirus,hay,khong].
cov_v(7) --> [kha,nang,mien,dich,cua,con,nguoi,doi,voi,virus].
cov_v(7) --> [co,che,mien,dich].
cov_v(7) --> [co,che,mien,nhiem].
cov_v(7) --> [co,che,mien,dich,cua,co,the].
cov_v(7) --> [kha,nang,mien,dich,cua,virus,ra,sao].
cov_v(7) --> [con,ve,kha,nang,mien,dich,voi,coronavirus,thi,sao].
cov_v(7) --> [kha,nang,mien,dich,voi,coronavirus].
cov_v(7) --> [kha,nang,mien,dich,cua,virus,ra,sao].
cov_v(7) --> [kha,nang,mien,dich,cua,virus,ra,sao].

cov_v(8) --> [lam,the,nao,de,co,the,ngan,chan,covid-19].
cov_v(8) --> [lam,the,nao,de,co,the,phong,ngua,covid-19].
cov_v(8) --> [lam,sao,de,co,the,ngan,chan,covid-19].
cov_v(8) --> [virus,corona,duoc,ngan,chan,nhu,the,nao].
cov_v(8) --> [lam,sao,de,co,the,ngan,chan,covid-19].
cov_v(8) --> [virus,corona,duoc,ngan,chan,nhu,the,nao].
cov_v(8) --> [lam,sao,de,co,the,ngan,chan,covid-19].
cov_v(8) --> [virus,corona,duoc,ngan,chan,nhu,the,nao].
cov_v(8) --> [virus,corona,duoc,ngan,chan,nhu,the,nao].
cov_v(9) --> [cach,phong,ngua,covid-19].
cov_v(9) --> [toi,co,the,bao,ve,co,the,va,tang,cuong,he,thong,mien,dich,cua,minh].
cov_v(9) --> [bao,ve,co,the,va,tang,cuong,he,mien,dich,cua,co,the,minh,can,lam,gi].
cov_v(9) --> [bao,ve,ban,than].
cov_v(9) --> [tang,cuong,suc,de,khang].
cov_v(9) --> [tang,cuong,de,khang].
cov_v(9) --> [tang,cuong,de,khang,cho,co,the].
cov_v(9) --> [bao,ve,co,the].
cov_v(10) --> [cac,thiet,bi,bao,ve,gom,nhung,gi].
cov_v(10) --> [co,nhung,thiet,bi,nao,bao,ve,co,the].
cov_v(10) --> [thiet,bi,bao,ve,co,the,co,nhung,gi].
cov_v(11) --> [su,khac,biet,giua,khau,trang,va,mat,na,phong,doc,la,gi].
cov_v(11) --> [diem,khac,nhau,giua,khau,trang,va,mat,na,phong,doc,giong].
cov_v(11) --> [khau,trang,va,mat,na,phong,doc,co,gi,giong,va,khac,nhau].
cov_v(12) --> [ai,nen,deo,mat,na,phong,doc,va,ai,nen,deo,khau,trang].
cov_v(12) --> [chung,ta,co,nen,deo,mat,na,phong,doc,hay,khong,va,nhung,ai,nen,deo,khau,trang].
cov_v(12) --> [mat,na,phong,doc,va,khau,trang,co,nen,deo,hay,khong].
cov_v(12) --> [co,nen,deo,khau,trang,hay,khong].
cov_v(12) --> [nhung,ai,nen,deo,khau,trang].
cov_v(12) --> [co,nen,deo,mat,na,chong,doc,hay,khong].
cov_v(12) --> [co,nen,deo,mat,na,phong,doc,hay,khong].
cov_v(13) --> [khau,trang,duoc,su,dung,de,lam,gi].
cov_v(13) --> [tac,dung,cua,khau,trang].
cov_v(13) --> [su,dung,khau,trang,de,lam,gi].
cov_v(13) --> [vi,sao,phai,su,dung,khau,trang].
cov_v(14) --> [toi,co,phai,bat,buoc,su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,khong].
cov_v(14) --> [thiet,bi,bao,ve,duong,ho,hap,co,that,su,can,thiet,hay,khong].
cov_v(14) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap].
cov_v(14) --> [co,nen,su,dung,thiet,bi,bao,ve,duong,ho,hap].
cov_v(15) --> [toi,co,phai,co,thiet,bi,bao,ve,duong,ho,hap,tai,noi,lam,viec,khong].
cov_v(15) --> [thiet,bi,bao,ve,duong,ho,hap,tai,noi,lam,viec,co,that,su,can,thiet,hay,khong].
cov_v(15) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,tai,noi,lam,viec,nen,hay,khong].
cov_v(16) --> [toi,phai,co,mot,thiet,bi,bao,ve,duong,ho,hap,tai,cua,hang].
cov_v(16) --> [thiet,bi,bao,ve,duong,ho,hap,tai,noi,cong,cong,co,that,su,can,thiet,hay,khong].
cov_v(16) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,tai,noi,cong,cong,nen,hay,khong].

cov_v(17) --> [toi,phai,co,thiet,bi,bao,ve,duong,ho,hap,tai,tram,xe,bus].
cov_v(17) --> [thiet,bi,bao,ve,duong,ho,hap,tai,tram,xe,bus,co,that,su,can,thiet,hay,khong].
cov_v(17) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,tai,tram,xe,bus,nen,hay,khong].
cov_v(18) --> [toi,phai,co,thiet,bi,bao,ve,duong,ho,hap,trong,cac,toa,nha,cong,cong].
cov_v(18) --> [thiet,bi,bao,ve,duong,ho,hap,tai,toa,nha,cong,cong,co,that,su,can,thiet,hay,khong].
cov_v(18) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,tai,toa,nha,cong,cong,nen,hay,khong].
cov_v(19) --> [toi,phai,co,thiet,bi,bao,ve,duong,ho,hap,trong,cong,vien,va,tren,duong].
cov_v(19) --> [thiet,bi,bao,ve,duong,ho,hap,trong,cong,vien,va,tren,duong,co,that,su,can,thiet,hay,khong].
cov_v(19) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,trong,cong,vien,va,tren,duong,nen,hay,khong].
cov_v(20) --> [toi,co,nen,co,mot,thiet,bi,bao,ve,duong,ho,hap,khi,di,taxi].
cov_v(20) --> [thiet,bi,bao,ve,duong,ho,hap,khi,di,taxi,co,that,su,can,thiet,hay,khong].
cov_v(20) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,khi,di,taxi,nen,hay,khong].
cov_v(21) --> [toi,phai,co,thiet,bi,bao,ve,duong,ho,hap,trong,giao,thong,cong,cong].
cov_v(21) --> [thiet,bi,bao,ve,duong,ho,hap,trong,giao,thong,co,that,su,can,thiet,hay,khong].
cov_v(21) --> [su,dung,co,mot,thiet,bi,bao,ve,duong,ho,hap,trong,giao,thong,nen,hay,khong].
cov_v(22) --> [con,thiet,bi,bao,ve,duong,ho,hap,trong,xe,neu,toi,lai,xe,cung,gia,dinh,thi,sao].
cov_v(23) --> [lam,the,nao,khi,toi,lam,viec,trong,moi,truong,ma,viec,deo,khau,trang,gay,ra,van,de,cho,toi].
cov_v(24) --> [neu,toi,lam,viec,mot,minh,trong,van,phong,thi,sao].
cov_v(25) --> [tu,may,tuoi,bat,buoc,phai,deo,thiet,bi,bao,ve].
cov_v(25) --> [viec,deo,khau,trang,co,ap,dung,cho,tre,nho,khong].
cov_v(26) --> [neu,khong,co,thiet,bi,bao,ve,duong,ho,hap,o,noi,cong,cong,co,bi,phat,khong].
cov_v(27) --> [co,nen,khu,trung,moi,truong,gia,dinh].
cov_v(28) --> [toi,co,phai,khu,trung,tat,ca,cac,gio,trong,cac,cua,hang,khong].
cov_v(29) --> [toi,co,the,tu,che,thuoc,khu,trung,khong].
cov_v(29) --> [thuoc,khu,trung,khong,co,tu,che,duoc,hay,khong].
cov_v(29) --> [thuoc,khu,trung,tu,che,co,duoc,khong].

cov_v(30) --> [toi,nen,lam,the,nao,de,giam,nguy,co,bi,nhiem,benh].
cov_v(30) --> [giam,nguy,co,bi,nhiem,benh,can,lam,cach,nao].
cov_v(30) --> [cach,lam,giam,nguy,co,nhiem,benh,la,gi].
cov_v(31) --> [toi,khong,duoc,khoe,.,toi,cam,thay,minh,dang,gap,van,de,ve,suc,khoe,.,toi,nen,lam,gi,day].
cov_v(31) --> [khi,toi,khong,khoe,toi,can,lam,gi].
cov_v(31) --> [can,lam,gi,khi,cam,thay,co,the,khong,khoe].
cov_v(31) --> [khi,toi,khong,khoe,toi,can,di,gap,ai].

cov_v(32) --> [toi,nghi,minh,bi,nhiem,covid-19,.,toi,muon,duoc,kiem,tra,.,toi,phai,lam,gi].
cov_v(32) --> [toi,nghi,minh,bi,nhiem,covid-19,thi,can,kiem,tra,o,dau].
cov_v(32) --> [toi,nghi,minh,bi,nhiem,covid-19,toi,can,lam,gi].

cov_v(33) --> [toi,co,the,di,chuyen,toi,noi,xet,nghiem,bang,cach,nao].
cov_v(33) --> [toi,co,the,di,chuyen,toi,noi,xet,nghiem,bang,cach,nao].
cov_v(33) --> [di,chuyen,toi,noi,xet,nghiem,bang,cach,nao].
cov_v(33) --> [di,xet,nghiem,covid19,bang,cach,nao,khi,toi,nghi,minh,bi,nhiem].

cov_v(34) --> [cu,the,toi,se,duoc,xet,nghiem,the,nao].
cov_v(34) --> [toi,se,duoc,xet,nghiem,nhu,the,nao].
cov_v(34) --> [toi,can,xet,nghiem,nhung,gi].

cov_v(35) --> [sau,xet,nghiem,toi,se,lien,he,the,nao,de,lay,ket,qua].
cov_v(35) --> [sau,xet,nghiem,toi,se,lien,lac,cho,ai,de,lay,ket,qua].
cov_v(35) --> [lay,ket,qua,xet,nghiem,o,dau,khi,xong].

cov_v(36) --> [toi,da,duoc,xet,nghiem,va,cho,ket,qua,.,den,khi,nao,toi,se,nhan,duoc,no,va,cac,buoc,tiep,theo,se,the,nao].
cov_v(36) --> [buoc,tiep,theo,can,lam,la,gi,sau,khi,da,duoc,xet,nghiem,va,co,ket,qua].
cov_v(36) --> [can,lam,gi,sau,khi,co,ket,qua,xet,nghiem].
cov_v(37) --> [toi,nen,lam,gi,neu,xet,nghiem,duong,tinh,can,chuan,bi,gi].
cov_v(37) --> [can,lam,gi,neu,xet,nghiem,duong,tinh].
cov_v(37) --> [xet,nghiem,duong,tinh,covid19,nen,lam,gi,tiep,theo].
cov_v(37) --> [toi,nen,lam,gi].
cov_v(37) --> [neu,xet,nghiem,duong,tinh,can,chuan,bi,gi].

cov_v(38) --> [toi,da,tiep,xuc,rat,gan,voi,nguoi,bi,nhiem,benh,.,toi,nen,lam,gi,day].
cov_v(38) --> [toi,da,tiep,xuc,rat,gan,voi,nguoi,bi,nhiem,benh,toi,can,phai,lam,gi,de,kiem,tra].
cov_v(38) --> [khi,tiep,xuc,voi,nguoi,nhiem,benh,toi,can,lam,gi].
cov_v(39) --> [toi,tu,nuoc,ngoai,ve,.,toi,can,lam,gi].
cov_v(39) --> [toi,tu,nuoc,ngoai,ve,can,kiem,tra,covid19,nhu,the,nao].
cov_v(39) --> [can,lam,gi,sau,khi,tu,nuoc,ngoai,ve].

cov_v(40) --> [dieu,tri,loai,benh,nay,nhu,the,nao].
cov_v(40) --> [cach,dieu,tri,benh,nay,nhu,the,nao].
cov_v(40) --> [benh,nay,duoc,chua,nhu,the,nao].

cov_v(41) --> [hien,gio,chung,ta,co,vac-xin,nao,co,the,phong,chong,lay,nhiem,khong].
cov_v(42) --> [can,xu,xu,o,benh,vien,nhu,the,nao].
cov_v(43) --> [toi,co,the,di,gap,bac,si,truc,tiep,khong].
cov_v(44) --> [co,bao,nhieu,giuong,chua,benh,truyen,nhiem,o,cong,hoa,sec].
cov_v(45) --> [ibuprofen,co,the,lam,xau,tinh,trang,suc,khoe,khi,da,nhiem,coronavirus].
cov_v(46) --> [benh,covid-19,co,dien,bien,nhu,the,nao].
cov_v(47) --> [su,dung,may,tho,phoi,nhan,tao,de,lam,gi,chung,ta,co,du,may,khong].
cov_v(48) --> [co,moi,nguy,hiem,gi,tu,covid-19,trong,cay,ghep,noi,tang,khong].
cov_v(49) --> [toi,muon,hien,mau,nhung,toi,khong,biet,minh,can,dap,ung,nhung,dieu,kien,gi,.,toi,co,the,hien,mau].
cov_v(50) --> [co,benh,nhan,da,duoc,chua,khoi,coronavirus,.,vay,he,mien,dich,co,the,mien,nhiem,voi,virus,corona,khong].
cov_v(51) --> [bac,si,va,nhan,vien,dich,te,gui,toi,ve,nha,.,toi,phai,lam,gi].
cov_v(52) --> [cach,ly,tai,nha,co,nghia,la,gi].
cov_v(53) --> [neu,toi,o,nha,cach,ly,va,co,benh,nhe,.,toi,co,the,tu,dieu,tri,nhu,the,nao].
cov_v(53) --> [toi,co,the,dung,gi,de,ha,sot].
cov_v(54) --> [cong,dan,co,the,di,den,nha,nghi,trong,thoi,gian,han,che,di,dong,hay,khong].
cov_v(55) --> [neu,toi,chi,co,the,phu,thuoc,vao,chinh,minh,thi,sao].
cov_v(56) --> [toi,co,the,tiep,khach,trong,qua,trinh,cach,ly,khong].
cov_v(57) --> [neu,toi,song,cung,nha,voi,nhieu,nguoi,thi,trong,truong,hop,nay,co,the,xu,ly,viec,cach,ly,nhu,the,nao].
cov_v(58) --> [nen,cach,ly,nhu,the,nao,voi,cac,thanh,vien,khac,trong,gia,dinh].
cov_v(59) --> [lam,the,nao,khi,chung,toi,khong,the,danh,mot,phong,cho,nguoi,benh].
cov_v(60) --> [lam,cach,nao,de,xu,ly,quan,ao,va,khan,trai,giuong,khi,toi,phai,cach,ly].
cov_v(61) --> [lam,cach,nao,de,giat,do,bi,nghi,la,bi,o,nhiem].
cov_v(62) --> [lam,the,nao,de,co,the,giai,quyet,cong,viec,cua,minh,khi,toi,bi,cach,ly].
cov_v(63) --> [nha,nuoc,se,kiem,tra,nhung,nguoi,duoc,yeu,cau,cach,ly,nhu,the,nao].
cov_v(63) --> [dieu,gi,xay,ra,khi,ban,vi,pham,cach,ly].
cov_v(65) --> [ai,se,la,nguoi,co,tham,quyen,ket,thuc,qua,trinh,cach,ly,cua,toi].
cov_v(65) --> [neu,ket,qua,xet,nghiem,coronavirus,cua,toi,am,tinh,toi,co,the,di,lam,ngay,hay,phai,bao,cao,o,dau,do,khong].
cov_v(66) --> [la,mot,cong,dan,toi,co,quyen,loi,va,nghia,vu,gi].
cov_v(67) --> [la,thi,truong,toi,co,nghia,vu,gi].
cov_v(68) --> [la,nguoi,nghi,huu,toi,co,nhung,nghia,vu,gi].
cov_v(68) --> [toi,co,bi,cam,di,ra,ngoai,khong].
cov_v(69) --> [toi,la,nguoi,cao,tuoi,.,toi,can,goi,di,dau,neu,toi,khong,biet,phai,lam,gi,va,toi,so].
cov_v(70) --> [toi,la,nguoi,cao,tuoi,.,ai,se,mua,thuc,pham,hay,mang,thuoc,men,can,thiet,den,cho,toi].
cov_v(71) --> [toi,la,nguoi,cao,tuoi,va,khong,co,con,cai,cham,lo,.,toi,co,the,lien,he,voi,ai].
cov_v(72) --> [toi,khong,phai,la,cong,dan,ch,sec,vay,nhung,dieu,khoan,nao,lien,quan,den,toi].
cov_v(73) --> [toi,co,nhan,duoc,su,ho,tro,nao,cua,nha,nuoc,khi,toi,o,nha,trong,con,va,toi,la,nguoi,kinh,doanh,ca,the,khong].
cov_v(74) --> [nha,nuoc,se,boi,thuong,va,tro,cap,gi,cho,cong,dan].
cov_v(75) --> [nguoi,dan,co,the,di,ve,nha,nghi,trong,thoi,gian,han,che,di,chuyen,khong].
cov_v(76) --> [toi,muon,dieu,tri,o,trong,nhung,khu,nghi,duong,.,toi,co,the,di,den,cac,co,so,nghi,duong,khong].
cov_v(77) --> [toi,dang,mang,thai,.,toi,co,phai,lo,lang,khong].
cov_v(78) --> [viec,dieu,tri,nhung,nguoi,mang,thai,nhiem,covid-19,co,khac,khong].
cov_v(79) --> [co,nguy,co,lay,nhiem,tu,nguoi,me,dang,mac,benh,sang,tre,so,sinh,khong].
cov_v(80) --> [nguoi,cha,co,the,co,mat,luc,sinh,con,khong].
cov_v(81) --> [toi,co,the,den,chia,tay,voi,nguoi,sap,mat,nam,trong,benh,vien,khong].
cov_v(82) --> [cac,truong,hoc,se,bi,dong,cua,den,bao,gio].
cov_v(83) --> [toi,la,nguoi,co,quoc,tich,nuoc,ngoai,dan,eu,.,toi,co,phai,thanh,toan,xet,nghiem,benh,covid,-,19].
cov_v(84) --> [chung,ta,nen,tin,vao,nhung,thong,tin,nao,tren,internet,ve,coronavirus].
cov_v(85) --> [toi,co,the,bi,nhiem,benh,tu,hang,hoa,gui,tu,trung,quoc,khong].
cov_v(86) --> [ruou,co,tac,dung,phong,ngua,viec,lay,nhiem,khong].
cov_v(87) --> [clo,co,chuc,nang,nhu,mot,chat,khu,trung].
cov_v(88) --> [thuoc,nho,mui,co,the,tieu,diet,virus].
cov_v(89) --> [toi,co,ngan,ngua,nhiem,trung].
cov_v(90) --> [uong,nuoc,am,thuong,xuyen,co,ngan,ngua,nhiem,trung].
cov_v(91) --> [loai,thuoc,khang,sinh,nao,co,the,giup,chung,ta].
cov_v(92) --> [hut,thuoc,co,anh,huong,gi,den,can,benh,khong].
cov_v(93) --> [do,uong,co,chua,quinine,(vi,du,thuoc,bo),co,tac,dung,gi,khong].
cov_v(94) --> [lieu,virus,ton,tai,trong,mot,moi,truong,lanh].
cov_v(95) --> [thu,nuoi,trong,nha,co,the,bi,nhiem,benh].
cov_v(96) --> [tao,do,co,tac,dung,chua,benh].
cov_v(97) --> [cong,hoa,sec,xu,ly,su,lay,lan,cua,dich,covid-19,nhu,the,nao].
cov_v(98) --> [den,nay,o,ch,sec,co,bao,nhieu,nguoi,bi,nhiem].
cov_v(99) --> [co,bao,nhieu,nguoi,duoc,chua,khoi].
cov_v(100) --> [dia,phuong,nao,o,ch,sec,co,so,nguoi,nhiem,benh,nhieu,nhat].
cov_v(101) --> [so,truong,hop,nhiem,coronavirus,da,duoc,chung,minh,tren,toan,the,gioi].
cov_v(102) --> [who,da,tuyen,bo,tinh,trang,dai,dich,tren,the,gioi,.,dieu,nay,dac,biet,co,nghia,la,gi].
cov_v(103) --> [who,va,cac,to,chuc,quoc,te,khac,khuyen,nghi,gi,ve,coronavirus].
cov_v(104) --> [dieu,gi,co,the,giup,tam,ly,nguoi,dan,phan,tran,hon,trong,nhung,ngay,dich,ben,nay].
cov_v(105) --> [neu,co,dau,hieu,tram,cam,trong,thoi,gian,cach,ly,thi,phai,lam,sao].
cov_v(106) --> [noi,chuyen,voi,con,nhu,the,nao,ve,coronavirus].
cov_v(107) --> [lam,the,nao,de,bao,ve,tam,ly,chong,lai,nhung,dieu,dang,dien,ra].
cov_v(108) --> [toi,can,lam,gi,khi,bi,cach,ly].
cov_v(109) --> [lam,the,nao,co,the,giup,cha,me,nhung,nguoi,cao,tuoi,doi,pho,voi,cang,thang].
cov_v(110) --> [lam,the,nao,de,chon,loc,thong,tin,huu,ich,tu,bao,chi].
cov_v(111) --> [lam,the,nao,de,doi,pho,voi,nguoi,khac,khi,minh,bi,benh].


patients(patients(Place)) --> benhnhan,verbs(Verbs),noichon,places(Place).
benhnhan --> [benh,nhan].
benhnhan --> [du,lieu].
benhnhan --> [cho,biet].
benhnhan --> [nhung,ai].
benhnhan --> [co,nhung,ai].
benhnhan --> [co,ai].
benhnhan --> [nhung,nguoi].
benhnhan -->[bi,nhiem].
benhnhan -->[covid-19].
noichon -->[o].
noichon -->[tai].
noichon -->[trong].
ornot -->[hay,khong].

places(placee(Place)) --> place(Place).

place(hni) -->[ha,noi].
place(hni) -->[hn].
place(hni) -->[hanoi].
place(hni) -->[thu,do,ha,noi].
place(hni) -->[thanh,pho,ha,noi].
place(hni) -->[thanh,pho,hanoi].
place(hni) -->[thanhpho,ha,noi].
place(tphchminh) -->[tp,ho,chi,minh].
place(tphchminh) -->[hochiminh].
place(tphchminh) -->[thanh,pho,ho,chi,minh].
place(tphchminh) -->[thanh,pho,hcm].
place(tphchminh) -->[thanh,pho,hochiminh].
place(tphchminh) -->[thanhpho,hochiminh].
place(tphchminh) -->[hcm].
place(tphchminh) -->[tphcm].
place(vnhphc) -->[vinh,phuc].
place(vnhphc) -->[vinhphuc].
place(vnhphc) -->[vp].
place(vnhphc) -->[thanh,pho,vinh,phuc].
place(vnhphc) -->[tinh,vinh,phuc].
place(vnhphc) -->[thanhpho,vinhphuc].
place(vnhphc) -->[thanhpho,vinh,phuc].
place(ninhbnh) -->[ninh,binh].
place(ninhbnh) -->[ninhbinh].
place(ninhbnh) -->[thanh,pho,ninh,binh].
place(ninhbnh) -->[tinh,ninh,binh].
place(ninhbnh) -->[thanhpho,ninhbinh].
place(ninhbnh) -->[thanhpho,ninh,binh].
place(bnhthun) -->[binh,thuan].
place(bnhthun) -->[binhthuan].
place(bnhthun) -->[thanh,pho,binh,thuan].
place(bnhthun) -->[tinh,binh,thuan].
place(qungninh) -->[quang,ninh].
place(qungninh) -->[quangninh].
place(qungninh) -->[thanh,pho,quang,ninh].
place(qungninh) -->[tinh,quang,ninh].
place(qungninh) -->[thanh,pho,quangninh].
place(qungninh) -->[thanhpho,quangninh].
place(qungninh) -->[thanhpho,quang,ninh].
place(bcgiang) -->[bac,giang].
place(bcgiang) -->[bacgiang].
place(bcgiang) -->[thanh,pho,bac,giang].
place(bcgiang) -->[tinh,bac,giang].

place(ngthp) -->[dong,thap].
place(ngthp) -->[dongthap].
place(ngthp) -->[thanh,pho,dong,thap].
place(ngthp) -->[tinh,dong,thap].

place(hnam) -->[ha,nam].
place(hnam) -->[hanam].
place(hnam) -->[thanh,pho,ha,nam].
place(hnam) -->[tinh,ha,nam].
place(htnh) -->[ha,tinh].
place(hni) -->[hatinh].
place(hni) -->[thanh,pho,ha,tinh].
place(hni) -->[tinh,ha,tinh].

place(bcliu) -->[bac,lieu].
place(bcliu) -->[baclieu].
place(bcliu) -->[thanh,pho,bac,lieu].
place(bcliu) -->[tinh,bac,lieu].

place(qungnam) -->[quang,nam].
place(qungnam) -->[quangnam].
place(qungnam) -->[thanh,pho,quang,nam].
place(qungnam) -->[thanh,pho,quangnam].
place(qungnam) -->[thanhpho,quangnam].
place(qungnam) -->[thanhpho,quang,nam].
place(tyninh) -->[tay,ninh].
place(tyninh) -->[tayninh].
place(tyninh) -->[thanh,pho,tay,ninh].
place(tyninh) -->[thanh,pho,tayninh].
place(tyninh) -->[thanhpho,tayninh].
place(tyninh) -->[thanhpho,tay,ninh].
place(thanhha) -->[thanh,hoa].
place(hni) -->[thanhhoa].
place(hni) -->[thanh,pho,thanh,hoa].
place(hni) -->[thanh,pho,thanhhoa].
place(hni) -->[thanhpho,thanhhoa].
place(hni) -->[thanhpho,thanh,hoa].
place(cnth) -->[can,tho].
place(cnth) -->[cantho].
place(cnth) -->[thanh,pho,can,tho].
place(cnth) -->[thanh,pho,cantho].
place(cnth) -->[thanhpho,cantho].
place(cnth) -->[thanhpho,can,tho].
place(locai) -->[lao,cai].
place(hni) -->[laocai].
place(hni) -->[thanh,pho,lao,cai].
place(hni) -->[thanh,pho,laocai].
place(hni) -->[thanhpho,laocai].
place(hni) -->[thanhpho,lao,cai].
place(ninhthun) -->[ninh,thuan].
place(ninhthun) -->[ninhthuan].
place(ninhthun) -->[thanh,pho,ninh,thuan].
place(ninhthun) -->[thanh,pho,ninhthuan].
place(ninhthun) -->[thanhpho,ninhthuan].
place(ninhthun) -->[thanhpho,ninh,thuan].
place(thathinhu) -->[thua,thien,hue].
place(thathinhu) -->[thuathienhue].
place(thathinhu) -->[thanh,pho,hue].
place(thathinhu) -->[thanh,pho,thua,thien,hue].
place(thathinhu) -->[thanh,pho,thuathienhue].
place(thathinhu) -->[thanhpho,thuathienhue].
place(trvinh) -->[tra,vinh].
place(hni) -->[travinh].
place(hni) -->[thanh,pho,tra,vinh].
place(hni) -->[thanh,pho,travinh].
place(hni) -->[thanhpho,travinh].
place(hni) -->[thanhpho,tra,vinh].
place(bcninh) -->[bac,ninh].
place(hni) -->[bacninh].
place(hni) -->[thanh,pho,bac,ninh].
place(hni) -->[thanh,pho,bacninh].
place(hni) -->[thanhpho,bac,ninh].
place(hni) -->[thanhpho,bacninh].
place(bntre) -->[ben,tre].
place(bntre) -->[bentre].
place(bntre) -->[thanh,pho,ben,tre].
place(bntre) -->[thanh,pho,bentre].
place(bntre) -->[thanhpho,bentre].
place(bntre) -->[thanhpho,ben,tre].
place(ngnai) -->[dong,nai].
place(ngnai) -->[dongnai].
place(ngnai) -->[thanh,pho,dong,nai].
place(ngnai) -->[thanh,pho,dongnai].
place(ngnai) -->[thanhpho,dongnai].
place(ngnai) -->[thanhpho,dong,nai].
place(hgiang) -->[ha,giang].
place(hgiang) -->[hagiang].
place(hgiang) -->[thanh,pho,ha,giang].
place(hgiang) -->[thanh,pho,hagiang].
place(hgiang) -->[thanhpho,ha,giang].
place(hgiang) -->[thanhpho,hagiang].
place(hidng) -->[hai,duong].
place(hidng) -->[haiduong].
place(hidng) -->[thanh,pho,hai,duong].
place(hidng) -->[thanh,pho,haiduong].
place(hidng) -->[thanhpho,haiduong].
place(hidng) -->[thanhpho,hai,duong].
place(hngyn) -->[hung,yen].
place(hngyn) -->[hungyen].
place(hngyn) -->[thanh,pho,hung,yen].
place(hngyn) -->[thanh,pho,hungyen].
place(hngyn) -->[thanhpho,hungyen].
place(hngyn) -->[thanhpho,hung,yen].
place(khnhha) -->[khanh,hoa].
place(khnhha) -->[khanhhoa].
place(khnhha) -->[thanh,pho,khanh,hoa].
place(khnhha) -->[thanh,pho,khanhhoa].
place(khnhha) -->[thanhpho,khanhhoa].
place(khnhha) -->[thanhpho,khanh,hoa].
place(laichu) -->[lai,chau].
place(laichu) -->[laichau].
place(laichu) -->[thanh,pho,lai,chau].
place(laichu) -->[thanh,pho,laichau].
place(laichu) -->[thanhpho,laichau].
place(laichu) -->[thanhpho,lai,chau].
place(thinguyn) -->[thai,nguyen].
place(thinguyn) -->[thainguyen].
place(thinguyn) -->[thanh,pho,thai,nguyen].
place(thinguyn) -->[thanh,pho,thainguyen].
place(thinguyn) -->[thanhpho,thainguyen].
place(thinguyn) -->[thanhpho,thai,nguyen].
place(angiang) -->[an,giang].
place(angiang) -->[angiang].
place(angiang) -->[thanh,pho,an,giang].
place(angiang) -->[thanh,pho,angiang].
place(angiang) -->[thanhpho,angiang].
place(angiang) -->[thanhpho,an,giang].
place(bnhdng) -->[binh,duong].
place(bnhdng) -->[binhduong].
place(bnhdng) -->[thanh,pho,binh,duong].
place(bnhdng) -->[thanh,pho,binhduong].
place(bnhdng) -->[thanhpho,bnhduong].
place(bnhdng) -->[thanhpho,binh,duong].
place(bnhphc) -->[binh,phuoc].
place(bnhphc) -->[binhphuoc].
place(bnhphc) -->[thanh,pho,binh,phuoc].
place(bnhphc) -->[thanh,pho,binhphuoc].
place(bnhphc) -->[thanhpho,binhthuoc].
place(bnhphc) -->[thanhpho,binh,phuoc].
place(hiphng) -->[hai,phong].
place(hiphng) -->[haiphong].
place(hiphng) -->[thanh,pho,hai,phong].
place(hiphng) -->[thanh,pho,haiphong].
place(hiphng) -->[thanhpho,haiphong].
place(hiphng) -->[thanhpho,hai,phong].
place(kingiang) -->[kien,giang].
place(kingiang) -->[kiengiang].
place(kingiang) -->[thanh,pho,kien,giang].
place(kingiang) -->[thanh,pho,kiengiang].
place(kingiang) -->[thanhpho,kiengiang].
place(kingiang) -->[thanhpho,kien,giang].
place(lngsn) -->[lang,son].
place(lngsn) -->[langson].
place(lngsn) -->[thanh,pho,lang,son].
place(lngsn) -->[thanh,pho,langson].
place(lngsn) -->[thanhpho,langson].
place(lngsn) -->[thanhpho,lang,son].
place(namnh) -->[nam,dinh].
place(namnh) -->[namdinh].
place(namnh) -->[thanh,pho,nam,dinh].
place(namnh) -->[thanh,pho,nam,dinh].
place(namnh) -->[thanhpho,namdinh].
place(namnh) -->[thanhpho,nam,dinh].
place(nghan) -->[nghe,an].
place(nghan) -->[nghean].
place(nghan) -->[thanh,pho,nghe,an].
place(nghan) -->[thanh,pho,nghean].
place(nghan) -->[thanhpho,nghean].
place(nghan) -->[thanhpho,nghe,an].
place(sctrng) -->[soc,trang].
place(sctrng) -->[soctrang].
place(sctrng) -->[thanh,pho,soc,trang].
place(sctrng) -->[thanh,pho,soctrang].
place(sctrng) -->[thanhpho,soctrang].
place(sctrng) -->[thanhpho,soc,trang].
place(vngtu) -->[vung,tau].
place(vngtu) -->[vungtau].
place(vngtu) -->[thanh,pho,vung,tau].
place(vngtu) -->[thanh,pho,vungtau].
place(vngtu) -->[thanhpho,vungtau].
place(vngtu) -->[thanhpho,vung,tau].
place(bckn) -->[bac,kan].
place(bckn) -->[backan].
place(bckn) -->[thanh,pho,bac,kan].
place(bckn) -->[thanh,pho,backan].
place(bckn) -->[thanhpho,backan].
place(bckn) -->[thanhpho,bac,kan].
place(bnhdnh) -->[binh,dinh].
place(bnhdnh) -->[binhdinh].
place(bnhdnh) -->[thanh,pho,binh,dinh].
place(bnhdnh) -->[thanh,pho,binhdinh].
place(bnhdnh) -->[thanhpho,binhdinh].
place(bnhdnh) -->[thanhpho,binh,dinh].
place(cmau) -->[ca,mau].
place(cmau) -->[camau].
place(cmau) -->[thanh,pho,ca,mau].
place(cmau) -->[thanh,pho,camau].
place(cmau) -->[thanhpho,camau].
place(cmau) -->[thanhpho,ca,mau].
place(caobng) -->[cao,bang].
place(caobng) -->[caobang].
place(caobng) -->[thanh,pho,cao,bang].
place(caobng) -->[thanh,pho,caobang].
place(caobng) -->[thanhpho,caobang].
place(caobng) -->[thanhpho,cao,bang].
place(dklk) -->[dak,lak].
place(dklk) -->[daklak].
place(dklk) -->[thanh,pho,dak,lak].
place(dklk) -->[thanh,pho,daklak].
place(dklk) -->[thanhpho,daklak].
place(dklk) -->[thanhpho,daklak].
place(dknng) -->[dak,nong].
place(dknng) -->[daknong].
place(dknng) -->[thanh,pho,dak,nong].
place(dknng) -->[thanh,pho,daknong].
place(dknng) -->[thanhpho,daknong].
place(dknng) -->[thanhpho,dak,nong].
place(dinbin) -->[dien,bien].
place(dinbin) -->[dienbien].
place(dinbin) -->[thanh,pho,dien,bien].
place(dinbin) -->[thanh,pho,dienbien].
place(dinbin) -->[thanhpho,dienbien].
place(dinbin) -->[thanhpho,dien,bien].
place(gialai) -->[gia,lai].
place(gialai) -->[gialai].
place(gialai) -->[thanh,pho,gia,lai].
place(gialai) -->[thanh,pho,gialai].
place(gialai) -->[thanhpho,gialai].
place(gialai) -->[thanhpho,gia,lai].
place(hugiang) -->[hau,giang].
place(hugiang) -->[haugiang].
place(hugiang) -->[thanh,pho,hau,giang].
place(hugiang) -->[thanh,pho,haugiang].
place(hugiang) -->[thanhpho,haugiang].
place(hugiang) -->[thanhpho,hau,giang].
place(habnh) -->[hoa,binh].
place(habnh) -->[hoabinh].
place(habnh) -->[thanh,pho,hoa,binh].
place(habnh) -->[thanh,pho,hoabinh].
place(habnh) -->[thanhpho,hoabinh].
place(habnh) -->[thanhpho,hoa,binh].
place(kontum) -->[kon,tum].
place(kontum) -->[kontum].
place(kontum) -->[thanh,pho,kon,tum].
place(kontum) -->[thanh,pho,kontum].
place(kontum) -->[thanhpho,kontum].
place(kontum) -->[thanhpho,kon,tum].
place(lmdng) -->[lam,dong].
place(lmdng) -->[lamdong].
place(lmdng) -->[thanh,pho,lam,dong].
place(lmdng) -->[thanh,pho,lamdong].
place(lmdng) -->[thanhpho,lamdong].
place(lmdng) -->[thanhpho,lam,dong].
place(longan) -->[long,an].
place(longan) -->[longan].
place(longan) -->[thanh,pho,long,an].
place(longan) -->[thanh,pho,longan].
place(longan) -->[thanhpho,longan].
place(longan) -->[thanhpho,long,an].
place(phth) -->[phu,tho].
place(phth) -->[phutho].
place(phth) -->[thanh,pho,phu,tho].
place(phth) -->[thanh,pho,phutho].
place(phth) -->[thanhpho,phutho].
place(phth) -->[thanhpho,phu,tho].
place(qungbnh) -->[quang,binh].
place(qungbnh) -->[quangbinh].
place(qungbnh) -->[thanh,pho,quang,binh].
place(qungbnh) -->[thanh,pho,quangbinh].
place(qungbnh) -->[thanhpho,quangbinh].
place(qungbnh) -->[thanhpho,quang,binh].
place(qungngi) -->[quang,ngai].
place(qungngi) -->[quangngai].
place(qungngi) -->[thanh,pho,quang,ngai].
place(qungngi) -->[thanh,pho,quangngai].
place(qungngi) -->[thanhpho,quangngai].
place(qungngi) -->[thanhpho,quang,ngai].
place(qungtr) -->[quang,tri].
place(qungtr) -->[quangtri].
place(qungtr) -->[thanh,pho,quang,tri].
place(qungtr) -->[thanh,pho,quangtri].
place(qungtr) -->[thanhpho,quangtri].
place(qungtr) -->[thanhpho,quang,tri].
place(snla) -->[son,la].
place(snla) -->[sonla].
place(snla) -->[thanh,pho,son,la].
place(snla) -->[thanh,pho,sonla].
place(snla) -->[thanhpho,sonla].
place(snla) -->[thanhpho,son,la].
place(thibnh) -->[thai,binh].
place(thibnh) -->[thai,binh].
place(thibnh) -->[thanh,pho,thai,binh].
place(thibnh) -->[thanh,pho,thaibinh].
place(thibnh) -->[thanhpho,thaibinh].
place(thibnh) -->[thanhpho,thai,binh].
place(tngiang) -->[tien,giang].
place(tngiang) -->[tiengiang].
place(tngiang) -->[thanh,pho,tien,giang].
place(tngiang) -->[thanh,pho,tiengiang].
place(tngiang) -->[thanhpho,tiengiang].
place(tngiang) -->[thanhpho,tien,giang].
place(tuynquang) -->[tuyen,quang].
place(tuynquang) -->[tuyenquang].
place(tuynquang) -->[thanh,pho,tuyen,quang].
place(tuynquang) -->[thanh,pho,tuyenquang].
place(tuynquang) -->[thanhpho,tuyenquang].
place(tuynquang) -->[thanhpho,tuyen,quang].
place(vnhlong) -->[vinh,long].
place(vnhlong) -->[vinhlong].
place(vnhlong) -->[thanh,pho,vinh,long].
place(vnhlong) -->[thanh,pho,vinhlong].
place(vnhlong) -->[thanhpho,vinhlong].
place(vnhlong) -->[thanhpho,vinh,long].
place(ynbai) -->[yen,bai].
place(ynbai) -->[yenbai].
place(ynbai) -->[thanh,pho,yen,bai].
place(ynbai) -->[thanh,pho,yenbai].
place(ynbai) -->[thanhpho,yenbai].
place(ynbai) -->[thanhpho,yen,bai].
place(phyn) -->[phu,yen].
place(phyn) -->[phuyen].
place(phyn) -->[thanh,pho,phu,yen].
place(phyn) -->[thanh,pho,phuyen].
place(phyn) -->[thanhpho,phuyen].
place(phyn) -->[thanhpho,phu,yen].
place(dnng) -->[da,nang].
place(dnng) -->[danang].
place(dnng) -->[thanh,pho,da,nang].
place(dnng) -->[thanh,pho,danang].
place(dnng) -->[thanhpho,danang].
place(dnng) -->[thanhpho,da,nang].
