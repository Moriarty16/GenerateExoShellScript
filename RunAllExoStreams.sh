#!/bin/bash

round=0

play_pause(){
	times=$1
	for i in $(seq 1 ${times})
	do 
	    sleep 3
	    input keyevent MEDIA_PLAUSE
	    input keyevent ENTER 
	    sleep 1
	    input keyevent MEDIA_PLAY 
	    sleep 3
		input keyevent MEDIA_REWIND
		input keyevent MEDIA_REWIND
		input keyevent MEDIA_REWIND
		sleep 1
		input keyevent MEDIA_FAST_FORWARD
		sleep 1

	done 
}
sleep 10

while true
do
    round=$(($round+1))

    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://www.youtube.com/api/manifest/dash/id/bf5bb2419360daf1/source/youtube?as=fmp4_audio_clear,fmp4_sd_hd_clear&sparams=ip,ipbits,expire,source,id,as&ip=0.0.0.0&ipbits=0&expire=19000000000&signature=51AF5F39AB0CEC3E5497CD9C900EBFEAECCCB5C7.8506521BFC350652163895D4C26DEE124209AA9E&key=ik0" -e extension mpd "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://www.youtube.com/api/manifest/dash/id/3aa39fa2cc27967f/source/youtube?as=fmp4_audio_clear,fmp4_sd_hd_clear&sparams=ip,ipbits,expire,source,id,as&ip=0.0.0.0&ipbits=0&expire=19000000000&signature=A2716F75795F5D2AF0E88962FFCD10DB79384F29.84308FF04844498CE6FBCE4731507882B8307798&key=ik0" -e extension mpd "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://www.youtube.com/api/manifest/dash/id/bf5bb2419360daf1/source/youtube?as=fmp4_audio_clear,webm2_sd_hd_clear&sparams=ip,ipbits,expire,source,id,as&ip=0.0.0.0&ipbits=0&expire=19000000000&signature=249B04F79E984D7F86B4D8DB48AE6FAF41C17AB3.7B9F0EC0505E1566E59B8E488E9419F253DDF413&key=ik0" -e extension mpd "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://www.youtube.com/api/manifest/dash/id/3aa39fa2cc27967f/source/youtube?as=fmp4_audio_clear,webm2_sd_hd_clear&sparams=ip,ipbits,expire,source,id,as&ip=0.0.0.0&ipbits=0&expire=19000000000&signature=B1C2A74783AC1CC4865EB312D7DD2D48230CC9FD.BD153B9882175F1F94BFE5141A5482313EA38E8D&key=ik0" -e extension mpd "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=d286538032258a1c&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=48fcc369939ac96c&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=e06c39f1151da3df&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=0894c7c8719b28a0&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=0894c7c8719b28a0&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/hevc/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=0894c7c8719b28a0&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=efd045b1eb61888a&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=f9a34cab7b05881a&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=HDCP_None&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=HDCP_V1&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=HDCP_V2&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=HDCP_V2_1&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=HDCP_V2_2&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?video_id=HDCP_NO_DIGTAL_OUTPUT&provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/h264/tears/tears.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/h264/tears/tears_sd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/h264/tears/tears_hd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/h264/tears/tears_uhd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears_sd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears_hd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears_uhd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbc1/h264/tears/tears_aes_cbc1.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbc1/h264/tears/tears_aes_cbc1_sd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbc1/h264/tears/tears_aes_cbc1_hd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbc1/h264/tears/tears_aes_cbc1_uhd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbcs/h264/tears/tears_aes_cbcs.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbcs/h264/tears/tears_aes_cbcs_sd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbcs/h264/tears/tears_aes_cbcs_hd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cbcs/h264/tears/tears_aes_cbcs_uhd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/vp9/tears/tears.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/vp9/tears/tears_sd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/vp9/tears/tears_hd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/vp9/tears/tears_uhd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/tears/tears_sd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/tears/tears_hd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/tears/tears_uhd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/subsample/24fps/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/subsample/24fps/tears/tears_sd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/subsample/24fps/tears/tears_hd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/vp9/subsample/24fps/tears/tears_uhd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/hevc/tears/tears.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/hevc/tears/tears_sd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/hevc/tears/tears_hd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/clear/hevc/tears/tears_uhd.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/hevc/tears/tears.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/hevc/tears/tears_sd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/hevc/tears/tears_hd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/wvmedia/cenc/hevc/tears/tears_uhd.mpd" -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://amssamples.streaming.mediaservices.windows.net/683f7e47-bd83-4427-b0a3-26a6c4547782/BigBuckBunny.ism/manifest(format=mpd-time-csf)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://amssamples.streaming.mediaservices.windows.net/683f7e47-bd83-4427-b0a3-26a6c4547782/BigBuckBunny.ism/manifest" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/c51358ea-9a5e-4322-8951-897d640fdfd7/tearsofsteel_4k.ism/manifest(format=mpd-time-csf)" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/c51358ea-9a5e-4322-8951-897d640fdfd7/tearsofsteel_4k.ism/manifest" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/c51358ea-9a5e-4322-8951-897d640fdfd7/tearsofsteel_4k.ism/manifest(format=m3u8-aapl)" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264/SuperSpeedway_720.ism/Manifest" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism/Manifest" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://playready.directtaps.net/media/live/channel01.isml/Manifest" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/228e2071-c79b-4bb7-b999-0f74801c924a/tearsofsteel_1080p_60s_24fps.6000kbps.1920x1080.h264-8b.2ch.128kbps.aac.avsep.cenc.mp4" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/aac2a25c-0dbc-46bd-be5f-68f3df1fc1f6/tearsofsteel_1080p_60s_24fps.6000kbps.1920x1080.h264-8b.2ch.128kbps.aac.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/a37c33ec-5d3d-48c1-9da5-0fa30c2b74ab/tearsofsteel_4k_60s_24fps.12000kbps.3840x2160.h264-8b.2ch.128kbps.aac.avsep.cenc.mp4" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/166afa81-be81-4e9f-93b2-437b95054545/tearsofsteel_4k_60s_24fps.12000kbps.3840x2160.h264-8b.2ch.128kbps.aac.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/e220a11e-aa2c-4396-9d6c-daee6b1593be/tearsofsteel_4k_60s_24fps.12000kbps.3840x2160.h264-8b.2ch.128kbps.aac.audioclear.cenc.mp4" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/166afa81-be81-4e9f-93b2-437b95054545/tearsofsteel_4k_60s_24fps.12000kbps.3840x2160.h264-8b.2ch.128kbps.aac.mp4" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "	http://profficialsite.origin.mediaservices.windows.net/f3622498-a6d5-4aab-afca-ac63ef0bf88e/tearsofsteel_4k_60s_24fps.12000kbps.3840x2160.h264-10b.2ch.128kbps.aac.audioclear.mp4" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://profficialsite.origin.mediaservices.windows.net/dec78d6e-8844-4b40-a760-eb7abaaf34aa/tearsofsteel_4k_60s_24fps.12000kbps.3840x2160.h264-10b.2ch.128kbps.aac.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://test.playready.microsoft.com/media/dash/APPLEENC_CBCS_BBB_1080p/clear/bbb_sunflower_1080p_60fps_normal.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://test.playready.microsoft.com/media/dash/APPLEENC_CBCS_BBB_1080p/1080p.mpd" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(persist:false,contentkey:W31bfVt9W31bfVt9W31bfQ==,ckt:aescbc)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://test.playready.microsoft.com/media/vp9/VP9_TearsOfSteel_12min_543_repackaged_20170523.mp4.ismv" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(contentkey:MeXKilhhoLl25CHFTGEDRg==,kid:00000000-03FC-EACD-0000-000000000000)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264/SuperSpeedway_720.ism" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(sl:2000)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(sl:3000)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(sl:150)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(ucvopl:200)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(ucvopl:301)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(ucaopl:100)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(ucaopl:101)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(dvop:(guid:ABB2C6F1-E663-4625-A945-972D17B231E7,data:AAAAAQ==))" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(begindate:20170101,enddate:20170131,realtime:true)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://test.playready.microsoft.com/smoothstreaming/SSWSS720H264PR/SuperSpeedway_720.ism" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 -e drm_license_url "http://test.playready.microsoft.com/service/rightsmanager.asmx?cfg=(maxres:720x576)" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://cdn-demo.anevia.com/vod/localdisk/Chaos_Chapter1/_/ss_playready/Manifest" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://cdn-demo.anevia.com/vod/localdisk/Chaos_Chapter1/_/hls_playready/Chaos_Chapter1.m3u8" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "	http://cdn-demo.anevia.com/live/nas41/Arte/ss_playready/Manifest" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://cdn-demo.anevia.com/live/nas41/Arte/hls_playready/Arte.m3u8" -e drm_scheme_uuid 9a04f079-9840-4286-ab92-e65be0885f95 "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://tungsten.aaplimg.com/VOD/bipbop_adv_example_v2/master.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://tungsten.aaplimg.com/VOD/bipbop_adv_fmp4_example/master.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/gear1/prog_index.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/gear0/prog_index.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://devimages.apple.com/samplecode/adDemo/ad.m3u8" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://html5demos.com/assets/dizzy.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/gear0/fileSequence0.aac" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/gear1/fileSequence0.ts" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://redirector.c.youtube.com/videoplayback?id=604ed5ce52eda7ee&itag=22&source=youtube&sparams=ip,ipbits,expire,source,id&ip=0.0.0.0&ipbits=0&expire=19000000000&signature=513F28C7FDCBEC60A66C86C9A393556C99DC47FB.04C88036EEE12565A1ED864A875A58F15D8B5300&key=ik0" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/video-vp9-360.webm" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/video-avc-baseline-480.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/video-137.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/audio-141.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-0/play.mp3" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/ogg/play.ogg" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://demos.webmproject.org/exoplayer/glass_vp9_vorbis.webm" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://demos.webmproject.org/exoplayer/glass.mp4" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://demos.webmproject.org/dash/201410/vp9_glass/manifest_vp9_opus.mpd" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "http://vod.leasewebcdn.com/bbb.flv?ri=1024&rs=150&start=0" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dlinear&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dskippablelinear&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dredirectlinear&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dredirecterror&nofb=1&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dredirecterror&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpreonly&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpreonlybumper&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpostonly&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpostonlybumper&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/single_ad_samples&ciu_szs=300x250&impl=s&gdfp_req=1&env=vp&output=vast&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ct%3Dlinear&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpostpod&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpostoptimizedpod&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpostpodbumper&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpostoptimizedpodbumper&cmsid=496&vid=short_onecue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW -c android.intent.category.DEFAULT -d "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv" -e ad_tag_uri "https://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/124319096/external/ad_rule_samples&ciu_szs=300x250&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=deployment%3Ddevsite%26sample_ar%3Dpremidpostlongpod&cmsid=496&vid=short_tencue&correlator=" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW_LIST -c android.intent.category.DEFAULT --esa uri_list "https://html5demos.com/assets/dizzy.mp4", "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv", "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW_LIST -c android.intent.category.DEFAULT --esa uri_list "https://html5demos.com/assets/dizzy.mp4", "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv", "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/audio-141.mp4", "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv", "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/audio-141.mp4", "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10


    am start -W -a com.google.android.exoplayer.demo.action.VIEW_LIST -c android.intent.category.DEFAULT --esa uri_list "https://html5demos.com/assets/dizzy.mp4", "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv", "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/audio-141.mp4", "https://storage.googleapis.com/exoplayer-test-media-1/mkv/android-screens-lavf-56.36.100-aac-avc-main-1280x720.mkv", "https://storage.googleapis.com/exoplayer-test-media-1/gen-3/screens/dash-vod-single-segment/audio-141.mp4", "https://html5demos.com/assets/dizzy.mp4", "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears_sd.mpd", "https://html5demos.com/assets/dizzy.mp4", "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears_sd.mpd", "https://storage.googleapis.com/wvmedia/cenc/h264/tears/tears_sd.mpd", -e drm_scheme_uuid edef8ba9-79d6-4ace-a3c8-27dcd51d21ed -e drm_license_url "https://proxy.uat.widevine.com/proxy?provider=widevine_test" "com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity"
    play_pause 10

echo "=============${round} Rounds finished======"
done
