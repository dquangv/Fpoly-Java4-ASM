package com.utils;

import com.bean.User;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

import java.io.IOException;

public class GoogleUtils {
    private final static String GOOGLE_CLIENT_ID = "179364069437-b18usbpn68os845f4l2pv3jqk113mv0o.apps.googleusercontent.com";
    private final static String GOOGLE_CLIENT_SECRET = "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";
    private final static String GOOGLE_REDIRECT_URI = "http://localhost:8080/fpoly/views/login";
    private final static String GOOGLE_GRANT_TYPE = "authorization_code";
    private final static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    private final static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v3/userinfo";

    private GoogleUtils() {
    }

    public static String getToken(final String code) throws ClientProtocolException, IOException {
        String response = Request.Post(GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form()
                        .add("client_id", GOOGLE_CLIENT_ID)
                        .add("client_secret", GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", GOOGLE_REDIRECT_URI)
                        .add("code", code)
                        .add("grant_type", GOOGLE_GRANT_TYPE)
                        .build())
                .execute().returnContent().asString();
        
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        return jobj.get("access_token").getAsString();
    }

    public static User getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String response = Request.Get(GOOGLE_LINK_GET_USER_INFO)
                .addHeader("Authorization", "Bearer " + accessToken)
                .execute().returnContent().asString();
        
        JsonObject jsonObject = new Gson().fromJson(response, JsonObject.class);
        
        User googlePojo = new User();
        googlePojo.setEmail(jsonObject.get("email").getAsString());
        googlePojo.setFullname(jsonObject.has("name") ? jsonObject.get("name").getAsString() : "");
        googlePojo.setImage(jsonObject.get("picture").getAsString());
        
        return googlePojo;
    }
}
