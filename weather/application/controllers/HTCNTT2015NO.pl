query(query(Weather,Place,Time)) -->  n_weather(Weather),prep_place,n_place(Place), n_time(Time),w_how.
prep_place --> [].
n_weather(weather(thoi_tiet)) --> [THOI, TIET].

n_place(place(can_tho)) --> [CAN, THO].
n_place(place(ho_chi_minh)) --> [HO, CHI, MINH].
n_place(place(ha_noi)) --> [HA, NOI].
n_place(place(ha_giang)) --> [HA, GIANG].
n_place(place(bac_can)) --> [BAC, CAN].
n_place(place(cao_bang)) --> [CAO, BANG].
n_place(place(tuyen_quang)) --> [TUYEN, QUANG].
n_place(place(lao_cai)) --> [LAO, CAI].
n_place(place(dien_bien)) --> [ĐIEN, BIEN].
n_place(place(lai_chau)) --> [LAI, CHAU].
n_place(place(son_la)) --> [SON, LA].
n_place(place(yen_bai)) --> [YEN, BAI].
n_place(place(hoa_binh)) --> [HOA, BINH].
n_place(place(thai_nguyen)) --> [THAI, NGUYEN].
n_place(place(lang_son)) --> [LANG, SON].
n_place(place(quang_ninh)) --> [QUANG_NINH].
n_place(place(bac_giang)) --> [BAC, GIANG].
n_place(place(phu_tho)) --> [PHU, THO].
n_place(place(vinh_phuc)) --> [VINH, PHUC].
n_place(place(bac_ninh)) --> [BAC, NINH].
n_place(place(hai_duong)) --> [HAI, DUONG].
n_place(place(hai_phong)) --> [HAI, PHONG].
n_place(place(hung_yen)) --> [HUNG, YEN].
n_place(place(thai_binh)) --> [THAI, BINH].
n_place(place(ha_nam)) --> [HA, NAM].
n_place(place(nam_dinh)) --> [NAM, DINH].
n_place(place(ninh_binh)) --> [NINH, BINH].
n_place(place(thanh_hoa)) --> [THANH, HOA].
n_place(place(nghe_an)) --> [NGHE, AN].
n_place(place(ha_tinh)) --> [HA, TINH].
n_place(place(quang_binh)) --> [QUANG, BINH].
n_place(place(quang_tri)) --> [QUANG, TRI].
n_place(place(thua_thien_hue)) --> [THUA, THIEN, HUE].
n_place(place(da_nang)) --> [DA, NANG].
n_place(place(quang_nam)) --> [QUANG, NAM].
n_place(place(quang_ngai)) --> [QUANG, NGAI].
n_place(place(binh_dinh)) --> [BINH, DINH].
n_place(place(phu_yen)) --> [PHU, YEN].
n_place(place(khanh_hoa)) --> [KHANH, HOA].
n_place(place(ninh_thuan)) --> [NINH, THUAN].
n_place(place(binh_thuan)) --> [BINH, THUAN].
n_place(place(kon_tum)) --> [KON, TUM].
n_place(place(gia_lai)) --> [GIA, LAI].
n_place(place(dak_lak)) --> [DAK, LAK].
n_place(place(dak_nong)) --> [DAK, NONG].
n_place(place(lam_dong)) --> [LAM, DONG].
n_place(place(binh_phuoc)) --> [BINH, PHUOC].
n_place(place(tay_ninh)) --> [TAY, NINH].
n_place(place(binh_duong)) --> [BINH, DUONG].
n_place(place(dong_nai)) --> [DONG, NAI].
n_place(place(ba_ria_vung_tau)) --> [BA, RIA, VUNG, TAU].
n_place(place(long_an)) --> [LONG, AN].
n_place(place(tien_giang)) --> [TIEN, GIANG].
n_place(place(ben_tre)) --> [BEN, TRE].
n_place(place(tra_vinh)) --> [TRA, VINH].
n_place(place(vinh_long)) --> [VINH, LONG].
n_place(place(dong_thap)) --> [DONG, THAP].
n_place(place(an_giang)) --> [AN, GIANG].
n_place(place(kien_giang)) --> [KIEN, GIANG].
n_place(place(can_tho)) --> [CAN, THO].
n_place(place(hau_giang)) --> [HAU, GIANG].
n_place(place(soc_trang)) --> [SOC, TRANG].
n_place(place(bac_lieu)) --> [BAC, LIEU].
n_place(place(ca_mau)) --> [CA, MAU].



n_time(time(hom_qua))--> [HOM, QUA].
n_time(time(hom_nay))--> [HOM, NAY].
n_time(time(ngay_mai))--> [NGAY, MAI].
n_time(time(ngay_kia))--> [NGAY, KIA].
n_time(time(thu_hai))--> [THU, HAI].
n_time(time(thu_ba))--> [THU, BA].
n_time(time(thu_tu))--> [THU, TU].
n_time(time(thu_nam))--> [THU, NAM].
n_time(time(thu_sau))--> [THU, SAU].
n_time(time(thu_bay))--> [THU, BAY].
n_time(time(chu_nhat))--> [CHU, NHAT].


w_how --> [NHU, THE, NAO].