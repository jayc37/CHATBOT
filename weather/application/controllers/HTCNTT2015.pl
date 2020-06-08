query(query(Weather,Place,Time)) -->  n_weather(Weather),prep_place,n_place(Place),n_time(Time),w_how, w_question.
query(query(Weather,Place)) -->  n_weather(Weather),prep_place,n_place(Place), w_how, w_question.
query(query(Weather,Time)) -->  n_weather(Weather),n_time(Time),w_how, w_question.
query(query(Place, Time, Weather)) -->  n_place(Place),n_time(Time),n_weather(Weather),w_how, w_question.
query(query(Weather, Place)) -->  n_place(Place),n_weather(Weather),w_how, w_question.
query(query(Weather, Time)) -->  n_time(Time),n_weather(Weather),w_how, w_question.
query(query(Time, Place, Weather)) -->  n_time(Time),n_place(Place),n_weather(Weather),w_how, w_question.
query(query(Temperature,Place,Time)) -->  n_temperature(Temperature),prep_place,n_place(Place),n_time(Time),w_how, w_question.
query(query(Temperature,Place)) -->  n_temperature(Temperature),prep_place,n_place(Place),w_how, w_question.
query(query(Temperature,Time)) -->  n_temperature(Temperature),n_time(Time),w_how, w_question.
query(query(Place,Temperature,Time)) --> n_place(Place), n_temperature(Temperature),n_time(Time),w_how, w_question.
query(query(Temperature, Place)) --> n_place(Place), n_temperature(Temperature),w_how, w_question.
query(query(Temperature, Time)) --> n_time(Time), n_temperature(Temperature),w_how, w_question.
query(query(Time,Place,Temperature)) --> n_time(Time), n_place(Place), n_temperature(Temperature),w_how, w_question.
query(yes_no(Place, Time, Status)) --> n_place(Place),n_time(Time), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Place, Time, Status)) --> n_time(Time),  n_place(Place), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Place, Status)) -->  n_place(Place), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Time, Status)) -->  n_time(Time), w_co, n_status(Status), w_khong, w_question.
query(query(Time, Weather, Place)) --> n_time(Time), n_weather(Weather), prep_place,n_place(Place),w_how, w_question. 
query(query(Time, Weather,Place)) --> n_place(Place), n_weather(Weather), n_time(Time), w_how.
query(query(Weather, Time, Place)) --> n_weather(Weather), n_time(Time), prep_place,n_place(Place), w_how, w_question.
query(query(Place, Weather)) --> n_place(Place), n_weather(Weather), w_how, w_question.
query(query(Place, Time)) --> n_time(Time), prep_place, n_place(Place), w_how, w_question.
query(query(Place, Time)) --> prep_place, n_place(Place), n_time(Time), w_how, w_question.
query(query(Place, Time, Temperature)) --> n_time(Time), n_temperature(Temperature), n_place(Place), w_how, w_question.
query(query(Place, Time, Temperature)) --> n_place(Place), n_time(Time), n_temperature(Temperature),  w_how, w_question.
query(yes_no(Place, Time, Status)) --> n_place(Place), w_co, n_status(Status), n_time(Time), w_khong, w_question.
query(yes_no(Time, Status)) --> w_co, n_status(Status), n_time(Time), w_khong, w_question.
query(yes_no(Temperature, Time, Status)) --> n_temperature(Temperature), n_time(Time), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Temperature, Time, Status)) --> n_time(Time), n_temperature(Temperature), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Place, Status)) --> w_co, n_status(Status), prep_place, n_place(Place), w_khong, w_question.
query(yes_no(Temperature, Status)) --> n_temperature(Temperature), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Weather, Status)) --> n_weather(Weather), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Weather, Time, Status))--> n_weather(Weather), n_time(Time), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Weather, Time, Status))--> n_time(Time), n_weather(Weather), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Weather, Time, Status))--> n_weather(Weather), w_co, n_status(Status), n_time(Time), w_khong, w_question.
query(yes_no(Place, Weather, Status))--> n_place(Place), n_weather(Weather), w_co, n_status(Status), w_khong, w_question.
query(yes_no(Place, Weather, Status))--> n_weather(Weather), n_place(Place), w_co, n_status(Status), w_khong, w_question.



prep_place --> [owr];[].
prep_time --> [vafo].
w_co-->[cos];[].
w_khong-->[khoong].
n_weather(weather(thoi_tiet)) --> [thowfi, tieest].
n_temperature(temperature(nhiet_do)) --> [nhieejt, ddooj].
n_status(status(mua)) --> [muwa].
w_question --> [?]; []; [.].


n_place(place(can_tho)) --> [caafn, thow].
n_place(place(ho_chi_minh)) --> [hoof, chis, minh].
n_place(place(ha_noi)) --> [haf, nooji].
n_place(place(ha_giang)) --> [haf, giang].
n_place(place(bac_can)) --> [bawsc, cajn].
n_place(place(cao_bang)) --> [cao, bawfng

n_place(place(tuyen_quang)) --> [tuyeen, quang].
n_place(place(lao_cai)) --> [lafo, cai].
n_place(place(dien_bien)) --> [ddieejn, bieen].
n_place(place(lai_chau)) --> [lai, chaau].
n_place(place(son_la)) --> [sown, la].
n_place(place(yen_bai)) --> [yeen, basi].
n_place(place(hoa_binh)) --> [hofa, bifnh].
n_place(place(thai_nguyen)) --> [thasi, nguyeen].
n_place(place(lang_son)) --> [lajng, sown].
n_place(place(quang_ninh)) --> [quarng, ninh].
n_place(place(bac_giang)) --> [bawsc, giang].
n_place(place(phu_tho)) --> [phus, thoj].
n_place(place(vinh_phuc)) --> [vixnh, phusc].
n_place(place(bac_ninh)) --> [bawsc, ninh].
n_place(place(hai_duong)) --> [hari, duowng].
n_place(place(hai_phong)) --> [hari, phofng].
n_place(place(hung_yen)) --> [huwng, yeen].
n_place(place(thai_binh)) --> [thasi, bifnh].
n_place(place(ha_nam)) --> [haf, nam].
n_place(place(nam_dinh)) --> [nam, ddijnh].
n_place(place(ninh_binh)) --> [ninh, bifnh].
n_place(place(thanh_hoa)) --> [thanh, hosa].
n_place(place(nghe_an)) --> [ngheej, an].
n_place(place(ha_tinh)) --> [haf, tixnh].
n_place(place(quang_binh)) --> [quarng, bifnh].
n_place(place(quang_tri)) --> [quarng, trij].
n_place(place(thua_thien_hue)) --> [thuwfa, thieen, huees].
n_place(place(da_nang)) --> [ddaf, nawxng].
n_place(place(quang_nam)) --> [quarng, nam].
n_place(place(quang_ngai)) --> [quarng, ngaxi].
n_place(place(binh_dinh)) --> [bifnh, ddijnh].
n_place(place(phu_yen)) --> [phus, yeen].
n_place(place(khanh_hoa)) --> [khasnh, hofa].
n_place(place(ninh_thuan)) --> [ninh, thuaajn].
n_place(place(binh_thuan)) --> [bifnh, thuaajn].
n_place(place(kon_tum)) --> [kon, tum].
n_place(place(gia_lai)) --> [gia, lai].
n_place(place(dak_lak)) --> [ddawsk, lawsk].
n_place(place(dak_nong)) --> [ddawsk, noong].
n_place(place(lam_dong)) --> [laam, ddoofng].
n_place(place(binh_phuoc)) --> [bifnh, phuowsc].
n_place(place(tay_ninh)) --> taay, ninh].
n_place(place(binh_duong)) --> [bifnh, duowng].
n_place(place(dong_nai)) --> [ddoofng, nai].
n_place(place(ba_ria_vung_tau)) --> [baf, rija, vuxng, tafu].
n_place(place(long_an)) --> [long, an].
n_place(place(tien_giang)) --> [tieefn, giang].
n_place(place(ben_tre)) --> [beesn, tre].
n_place(place(tra_vinh)) --> [traf, vinh].
n_place(place(vinh_long)) --> [vixnh, long].
n_place(place(dong_thap)) --> [ddoofng, thasp].
n_place(place(an_giang)) --> [an, giang].
n_place(place(kien_giang)) --> [kieen, giang].
n_place(place(hau_giang)) --> [haaju, giang].
n_place(place(soc_trang)) --> [sosc, trawng].
n_place(place(bac_lieu)) --> [bajc, lieeu].
n_place(place(ca_mau)) --> [caf, mau].


n_time(time(hom_qua))--> [hoom, qua].
n_time(time(hom_nay))--> [hoom, nay].
n_time(time(ngay_mai))--> [ngafy, mai].
n_time(time(ngay_kia))--> [ngafy, kia].
n_time(time(ngay_mot))--> [ngafy, moost].
n_time(time(thu_hai))--> [thuws, hai].
n_time(time(thu_ba))--> [thuws, ba].
n_time(time(thu_tu))--> [thuws, tuw].
n_time(time(thu_nam))--> [thuws, nawm].
n_time(time(thu_sau))--> [thuws, sasu].
n_time(time(thu_bay))--> [thuws, bary].
n_time(time(chu_nhat))--> [chur, nhaajt].


n_status(status(nang))--> [nawsng].
n_status(status(mua))--> [muwa].
n_status(status(am))--> [aasm].
n_status(status(nong))--> [nosng].
n_status(status(lanh))--> [lajnh].
n_status(status(mat)) --> [mast].


w_how --> [nhuw, thees, nafo]; [ra, sao].
