#!/bin/bash

FOLD=BuiltPlugins
DEPS=Dependencies

hotkeyaction() {
  pushd . || exit
  cd hotkeyaction && mvn clean -Dmaven.test.skip package
  mv target/hotkeyaction-*.jar ../$FOLD/hotkeyaction.jar
  popd || exit
}

digitalclockaction() {
  pushd . || exit
  cd digitalclockaction && mvn clean -Dmaven.test.skip package
  mv target/digitalclockaction-*.jar ../$FOLD/digitalclockaction.jar
  popd || exit
}

mediakeyaction() {
  pushd . || exit
  cd mediakeyaction && mvn clean -Dmaven.test.skip package
  mv target/mediakeyaction-*.jar ../$FOLD/mediakeyaction.jar
  popd || exit
}

obssuite() {
  pushd . || exit
  cd obssuite && mvn clean -Dmaven.test.skip package

  cd mother || exit
  mv target/obssuite_motheraction-*.jar ../../$FOLD/obssuite_motheraction.jar

  cd ../setcurrentprofile || exit
  mv target/obssuite_setcurrentprofileaction-*.jar ../../$FOLD/obssuite_setcurrentprofileaction.jar

  cd ../setcurrentscene || exit
  mv target/obssuite_setcurrentsceneaction-*.jar ../../$FOLD/obssuite_setcurrentsceneaction.jar

  cd ../setcurrenttransition || exit
  mv target/obssuite_setcurrenttransitionaction-*.jar ../../$FOLD/obssuite_setcurrenttransitionaction.jar

  cd ../togglemute || exit
  mv target/obssuite_togglemuteaction-*.jar ../../$FOLD/obssuite_togglemuteaction.jar

  cd ../setcurrentprofile || exit
  mv target/obssuite_setcurrentprofileaction-*.jar ../../$FOLD/obssuite_setcurrentprofileaction.jar

  cd ../setpreviewscene || exit
  mv target/obssuite_setpreviewsceneaction-*.jar ../../$FOLD/obssuite_setpreviewsceneaction.jar

  cd ../togglerecording || exit
  mv target/obssuite_togglerecordingaction-*.jar ../../$FOLD/obssuite_togglerecordingaction.jar

  cd ../setreplaybuffer || exit
  mv target/obssuite_setreplaybufferaction-*.jar ../../$FOLD/obssuite_setreplaybufferaction.jar

  cd ../togglestreaming || exit
  mv target/obssuite_togglestreamingaction-*.jar ../../$FOLD/obssuite_togglestreamingaction.jar

  cd ../togglestudiomode || exit
  mv target/obssuite_togglestudiomodeaction-*.jar ../../$FOLD/obssuite_togglestudiomodeaction.jar

  cd ../setvolume || exit
  mv target/obssuite_setvolumeaction-*.jar ../../$FOLD/obssuite_setvolumeaction.jar

  cd ../togglesourcevisibility || exit
  mv target/obssuite_togglesourcevisibility-*.jar ../../$FOLD/obssuite_togglesourcevisibility.jar

  cd ../togglesourcefiltervisibility || exit
  mv target/obssuite_togglesourcefiltervisibility-*.jar ../../$FOLD/obssuite_togglesourcefiltervisibility.jar

  popd || exit
}

playaudioclipaction() {
  pushd . || exit
  cd playaudioclipaction && mvn clean -Dmaven.test.skip package
  mv target/playaudioclipaction-*.jar ../$FOLD/playaudioclipaction.jar
  popd || exit
}

runcommandaction() {
  pushd . || exit
  cd runcommandaction && mvn clean -Dmaven.test.skip package
  mv target/runcommandaction-*.jar ../$FOLD/runcommandaction.jar
  popd || exit
}

textblockaction() {
  pushd . || exit
  cd textblockaction && mvn clean -Dmaven.test.skip package
  mv target/textblockaction-*.jar ../$FOLD/textblockaction.jar
  popd || exit
}

twitch() {
  pushd . || exit
  cd twitch-chat-action && mvn clean -Dmaven.test.skip package

  cd twitch-chat-connect || exit
  mv target/twitch-chat-connect-*.jar ../../$FOLD/twitch-chat-connect.jar

  cd ../send-channel-msg || exit
  mv target/twitch-send-channel-msg-*.jar ../../$FOLD/twitch-send-channel-msg.jar

  cd ../clear-chat || exit
  mv target/twitch-clear-chat-*.jar ../../$FOLD/twitch-clear-chat.jar

  cd ../set-color || exit
  mv target/twitch-set-color-*.jar ../../$FOLD/twitch-set-color.jar

  cd ../whisper || exit
  mv target/twitch-whisper-*.jar ../../$FOLD/twitch-whisper.jar

  cd ../unraid || exit
  mv target/twitch-unraid-*.jar ../../$FOLD/twitch-unraid.jar

  cd ../unhost || exit
  mv target/twitch-unhost-*.jar ../../$FOLD/twitch-unhost.jar

  cd ../add-stream-marker || exit
  mv target/twitch-add-stream-marker-*.jar ../../$FOLD/twitch-add-stream-marker.jar

  cd ../host-channel || exit
  mv target/twitch-host-channel-*.jar ../../$FOLD/twitch-host-channel.jar

  cd ../raid-channel || exit
  mv target/twitch-raid-channel-*.jar ../../$FOLD/twitch-raid-channel.jar

  cd ../start-commercial || exit
  mv target/twitch-start-commercial-*.jar ../../$FOLD/twitch-start-commercial.jar

  cd ../subs-only || exit
  mv target/twitch-subs-only-*.jar ../../$FOLD/twitch-subs-only.jar

  cd ../slow-mode || exit
  mv target/twitch-slow-mode-*.jar ../../$FOLD/twitch-slow-mode.jar

  cd ../emote-only || exit
  mv target/twitch-emote-only-*.jar ../../$FOLD/twitch-emote-only.jar

  cd ../followers-only || exit
  mv target/twitch-followers-only-*.jar ../../$FOLD/twitch-followers-only.jar

  popd || exit
}

twitteraction() {
  pushd . || exit
  cd twitteraction && mvn clean -Dmaven.test.skip package
  mv target/twitteraction-*.jar ../$FOLD/twitteraction.jar
  popd || exit
}

websiteaction() {
  pushd . || exit
  cd websiteaction && mvn clean -Dmaven.test.skip package
  mv target/websiteaction-*.jar ../$FOLD/websiteaction.jar
  popd || exit
}

webhookaction() {
  pushd . || exit
  cd webhookaction && mvn clean -Dmaven.test.skip package
  mv target/webhookaction-*.jar ../$FOLD/webhookaction.jar
  popd || exit
}

openfileaction() {
  pushd . || exit
  cd openfileaction && mvn clean -Dmaven.test.skip package
  mv target/openfileaction-*.jar ../$FOLD/openfileaction.jar
  popd || exit
}

runexecutableaction() {
  pushd . || exit
  cd runexecutableaction && mvn clean -Dmaven.test.skip package
  mv target/runexecutableaction-*.jar ../$FOLD/runexecutableaction.jar
  popd || exit
}

mkdir -p $FOLD
rm -rf "${FOLD:?}/"*
cp $DEPS/* $FOLD/

case "$1" in
hotkeyaction)
  hotkeyaction
  ;;
digitalclockaction)
  digitalclockaction
  ;;
mediakeyaction)
  mediakeyaction
  ;;
obssuite)
  obssuite
  ;;
playaudioclipaction)
  playaudioclipaction
  ;;
runcommandaction)
  runcommandaction
  ;;
textblockaction)
  textblockaction
  ;;
twitch)
  twitch
  ;;
twitteraction)
  twitteraction
  ;;
websiteaction)
  websiteaction
  ;;
webhookaction)
  webhookaction
  ;;
openfileaction)
  openfileaction
  ;;
runexecutableaction)
  runexecutableaction
  ;;
*)
  # build all actions as default
  hotkeyaction
  mediakeyaction
  obssuite
  playaudioclipaction
  runcommandaction
  textblockaction
  twitch
  twitteraction
  websiteaction
  webhookaction
  openfileaction
  runexecutableaction
  ;;
esac
