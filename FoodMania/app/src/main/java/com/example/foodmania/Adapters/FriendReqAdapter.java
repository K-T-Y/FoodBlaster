package com.example.foodmania.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.foodmania.R;
import com.example.foodmania.UI_Models.FriendReqModel;

import java.util.ArrayList;

import de.hdodenhof.circleimageview.CircleImageView;

public class FriendReqAdapter extends RecyclerView.Adapter<FriendReqAdapter.viewHolder> {

    ArrayList<FriendReqModel> list;
    Context context;
    FriendReqModel model;
    int user_id;
    public FriendReqAdapter(ArrayList<FriendReqModel> list, Context context,int user_id) {
        this.list = list;
        this.context = context;
        this.user_id=user_id;
    }

    @NonNull
    @Override
    public viewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        View view = LayoutInflater.from(context).inflate(R.layout.request_design, parent, false);
        return new viewHolder(view);
    }

    public  void onBindViewHolder(@NonNull viewHolder holder,int position)
    {
        model=list.get(position);
        holder.profile_pic.setImageBitmap(model.getProfile_pic());
        holder.username.setText(model.getUsername());
        holder.designation.setText(model.getDesignation());
        holder.txt_id.setText(model.getUser_id()+"");

        holder.btn_accept.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

            }
        });
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class viewHolder extends RecyclerView.ViewHolder {

      CircleImageView profile_pic;
      TextView username,designation,txt_id;
      Button btn_accept;

        public viewHolder(@NonNull View itemView) {
            super(itemView);

            profile_pic=itemView.findViewById(R.id.img_profile);
            username=itemView.findViewById(R.id.txt_username);
            designation=itemView.findViewById(R.id.txt_designation);
            txt_id=itemView.findViewById(R.id.txt_id);
            btn_accept=itemView.findViewById(R.id.btn_accept);
        }
    }


}
