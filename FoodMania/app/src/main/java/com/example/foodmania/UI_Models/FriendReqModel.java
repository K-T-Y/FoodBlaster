package com.example.foodmania.UI_Models;

import android.graphics.Bitmap;

public class FriendReqModel {

    Bitmap profile_pic;
    String username;
    String designation;
    int user_id;

    public FriendReqModel(Bitmap profile_pic, String username, String designation,int user_id) {
        this.profile_pic = profile_pic;
        this.username = username;
        this.designation = designation;
        this.user_id=user_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Bitmap getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(Bitmap profile_pic) {
        this.profile_pic = profile_pic;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
}
