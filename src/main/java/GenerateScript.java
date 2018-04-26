import org.json.JSONArray;
import org.json.JSONObject;

import java.io.*;
import java.util.ArrayList;

public class GenerateScript {

    private static final String WIDEVINE_UUID_STR = "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String PLAYREADY_UUID_STR = "9a04f079-9840-4286-ab92-e65be0885f95";
    private static final String EXO_ACTIVITY_NAME = "\"com.google.android.exoplayer2.demo/com.google.android.exoplayer2.demo.PlayerActivity\"";

    private static ArrayList<String> singleStreamConnections = new ArrayList<String>();
    private static ArrayList<String> multipleStreamsConnections = new ArrayList<String>();

    public static void main(String[] args) throws IOException {
        generate();
        File script = new File("RunAllExoStreams.sh");
        if (!script.exists()) {
            script.createNewFile();
        }

        FileWriter fileWriter = new FileWriter(script.getAbsoluteFile());
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

        ArrayList<String> commands = new ArrayList<String>();

        //Write '#!/bin/bash'
        bufferedWriter.write("#!/bin/bash\n");

        //Make a shell array 'streams'
        //bufferedWriter.write("streams[" + i + "]=" + singleStreamConnections.get(i) + "\n");
        commands.addAll(singleStreamConnections);
//        for (int i = 0; i < singleStreamConnections.size(); i++) {
//            //bufferedWriter.write("streams[" + i + "]=" + singleStreamConnections.get(i) + "\n");
//        }
        //bufferedWriter.write("---------------------------------------------------------------------------\n");
//        for (int i = 0; i < multipleStreamsConnections.size(); i++) {
//            bufferedWriter.write("streams[" + (i + singleStreamConnections.size()) + "]=" + multipleStreamsConnections.get(i) + "\n");
//        }
        commands.addAll(multipleStreamsConnections);
        //Now all stream commands should have been generated
        //Write 'play_pause' method
        bufferedWriter.write("\n");
        bufferedWriter.write("round=0\n");
        bufferedWriter.write("\n");
        String play_pause_str = "play_pause(){\n" +
                "\ttimes=$1\n" +
                "\tfor i in $(seq 1 ${times})\n" +
                "\tdo \n" +
                "\t    sleep 3\n" +
                "\t    input keyevent MEDIA_PLAUSE\n" +
                "\t    input keyevent ENTER \n" +
                "\t    sleep 1\n" +
                "\t    input keyevent MEDIA_PLAY \n" +
                "\t    sleep 3\n" +
                "\t\tinput keyevent MEDIA_REWIND\n" +
                "\t\tinput keyevent MEDIA_REWIND\n" +
                "\t\tinput keyevent MEDIA_REWIND\n" +
                "\t\tsleep 1\n" +
                "\t\tinput keyevent MEDIA_FAST_FORWARD\n" +
                "\t\tsleep 1\n" +
                "\n" +
                "\tdone \n" +
                "}";
        bufferedWriter.write(play_pause_str);
        bufferedWriter.write("\n");
        bufferedWriter.write("sleep 10\n");
        bufferedWriter.write("\n");
        bufferedWriter.write("while true\n");
        bufferedWriter.write("do\n");
        bufferedWriter.write("    round=$(($round+1))\n");
        for (int i = 0; i < commands.size(); i++) {
            bufferedWriter.write("\n");
            bufferedWriter.write("    " + commands.get(i) + "\n");
            bufferedWriter.write("    " + "play_pause 10\n");
            bufferedWriter.write("\n");
        }
        bufferedWriter.write("echo \"=============${round} Rounds finished======\"");
        bufferedWriter.write("\n");
        bufferedWriter.write("done\n");
        bufferedWriter.close();
    }

    private static void generate() throws IOException {
        String jsonStr = readResourceAsString("media.exolist.json");

        JSONArray titleArray = new JSONArray(jsonStr);
        //System.out.println(titleArray.length());
        for (int i = 0; i < titleArray.length(); i++) {
            JSONObject titleObject = (JSONObject) titleArray.get(i);
            String titleObjectValue = titleObject.getString("name");
            //System.out.println(titleObjectValue);

            //Detail stream in each title
            //JSONArray contentArray = titleObject.getJSONArray("samples");
            //for (int j = 0; j <= contentArray.length(); j++) {
            //}
            if (!titleObjectValue.equals("Playlists")) {
                //Single url stream
                //Detail stream in each title
                JSONArray contentArray = titleObject.getJSONArray("samples");
                for (int j = 0; j < contentArray.length(); j++) {
                    JSONObject contentObject = (JSONObject) contentArray.get(j);
                    /*
                    String uri,
                    String extension,
                    String drm_scheme,
                    String drm_license_url,
                    String ad_tag_uri
                     */
                    String uri = "\"" + contentObject.getString("uri") + "\"";

                    String extension = contentObject.has("extension")? contentObject.getString("extension") : null;
                    String drm_scheme = contentObject.has("drm_scheme")? contentObject.getString("drm_scheme") : null;
                    String drm_license_url = contentObject.has("drm_license_url")? "\"" + contentObject.getString("drm_license_url")  + "\"": null;
                    String ad_tag_uri = contentObject.has("ad_tag_uri")? "\"" + contentObject.getString("ad_tag_uri") + "\"": null;
                    singleStreamConnections.add(generateCommand(uri, null, extension, drm_scheme, drm_license_url, ad_tag_uri, false));
                }
            } else {
                ArrayList<String> uris = new ArrayList<String>();
                //Multiple url stream
                //Detail streams in each title
                JSONArray contentArray = titleObject.getJSONArray("samples");
                for (int j = 0; j <contentArray.length(); j++) {
                    JSONObject contentObject = (JSONObject) contentArray.get(j);
                    /*
                    String uri,
                    ArrayList<String> uris,
                    String extension,
                    String drm_scheme,
                    String drm_license_url,
                    String ad_tag_uri
                     */
                    String extension = contentObject.has("extension")? contentObject.getString("extension") : null;
                    String drm_scheme = contentObject.has("drm_scheme")? contentObject.getString("drm_scheme") : null;
                    String drm_license_url = contentObject.has("drm_license_url")? "\"" + contentObject.getString("drm_license_url") + "\"" : null;
                    String ad_tag_uri = contentObject.has("ad_tag_uri")? "\"" + contentObject.getString("ad_tag_uri") + "\"" : null;
                    if (contentObject.has("playlist")) {
                        JSONArray detailArray = contentObject.getJSONArray("playlist");
                        for (int k =  0; k < detailArray.length(); k++) {
                            JSONObject detailObjectInArray = (JSONObject) detailArray.get(k);
                            if (detailObjectInArray.has("uri")) {
                                //uris.add(detailObjectInArray.getString("uri"));
                                String uri = detailObjectInArray.getString("uri");
                                uris.add("\"" + uri + "\"");
                            } else {
                                System.out.println("Error!!!");
                                System.out.println("Detail stream link not available!");
                            }
                        }
                        multipleStreamsConnections.add(generateCommand(null, uris, extension, drm_scheme,
                                drm_license_url, ad_tag_uri, true));
                    } else {
                        System.out.println("Error!!!");
                        System.out.println("Multiple stream no link available.");
                    }
                }
            }
        }

    }

    private static String readResourceAsString(String fileName) throws IOException {
        InputStream input = GenerateScript.class.getResourceAsStream(fileName);
        Byte[] buffer = new Byte[1024];
        StringBuilder out = new StringBuilder();
        //Reader in = new InputStreamReader(input, "UTF-8");
        BufferedReader in = new BufferedReader(new InputStreamReader(input));
        String line;
        while ((line = in.readLine()) != null) {
            out.append(line).append("\n");
        }
        return out.toString();
    }

    private static String generateCommand(String uri,
                                          ArrayList<String> uris,
                                          String extension,
                                          String drm_scheme,
                                          String drm_license_url,
                                          String ad_tag_uri,
                                          boolean isMultipleStream
                                          ) {
        StringBuilder builder = new StringBuilder();
        if (isMultipleStream) {
            builder.append("am start -W " +
            "-a com.google.android.exoplayer.demo.action.VIEW_LIST " +
            "-c android.intent.category.DEFAULT " +
            "--esa uri_list ");
            for (int i = 0; i < uris.size(); i++) {
                if (i != uris.size()) {
                    builder.append(uris.get(i)).append(", ");
                } else {
                    builder.append(uris.get(i)).append(" ");
                }
            }
        } else {
            builder.append("am start -W " +
                    "-a com.google.android.exoplayer.demo.action.VIEW " +
                    "-c android.intent.category.DEFAULT ");
            builder.append("-d ").append(uri).append(" ");
        }

        if (extension != null) {
            builder.append("-e extension ").append(extension).append(" ");
        }

        if (drm_scheme != null) {
            if (drm_scheme.equals("widevine")) {
                builder.append("-e drm_scheme_uuid " + WIDEVINE_UUID_STR + " ");
            } else if (drm_scheme.equals("playready")) {
                builder.append("-e drm_scheme_uuid " + PLAYREADY_UUID_STR + " ");
            } else {
                System.out.println("Unsupported uuid!!!");
            }
        }

        if (drm_license_url != null) {
            builder.append("-e drm_license_url ").append(drm_license_url).append(" ");
        }

        if (ad_tag_uri != null) {
            //TO-DO
            //Check
            builder.append("-e ad_tag_uri ").append(ad_tag_uri).append(" ");
        }

        builder.append(EXO_ACTIVITY_NAME);

        return builder.toString();
    }

}
